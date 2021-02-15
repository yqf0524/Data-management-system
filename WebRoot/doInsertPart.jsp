<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.biz.AddInfo"%>
<%@page import="com.entity.Part"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("UTF-8");
AddInfo addInfo = new AddInfo();
Part part = new Part();
part.setPartId(request.getParameter("partId"));
part.setPartName(request.getParameter("partName"));
part.setProductType(request.getParameter("productType"));
part.setPartManufacture(request.getParameter("partManufacture"));
part.setPartPlace(request.getParameter("partPlace"));
try{
part.setPartPrice(Integer.parseInt(request.getParameter("partPrice")));
} catch(Exception e){
%>
<script type="text/javascript">
	alert("请输入正确的价格！");
	window.history.go(-1);
</script>
<%
}
int n = addInfo.insertPart(part);

if (n==-1){
%>
<script type="text/javascript">
	alert("编号重复！");
	window.history.go(-1);
</script>
<%
}

else if(n>0){
%>
<script type="text/javascript">
	window.location.href="addPartSuccess.jsp";
</script>
<%
}else{
%>
<script type="text/javascript">
	alert("保存失败！");
	window.history.go(-1);
</script>
<%
}
%>