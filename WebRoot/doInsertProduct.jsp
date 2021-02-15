<%@ page language="java" import="java.util.*,com.entity.*" pageEncoding="UTF-8"%>
<%@page import="com.biz.AddInfo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("UTF-8");
AddInfo addInfo = new  AddInfo ();
Product product = new Product();
product.setProductId(request.getParameter("productId"));
product.setProductName(request.getParameter("productName"));
product.setProductType(request.getParameter("productType"));
product.setProductManufacture(request.getParameter("productManufacture"));
product.setProductPlace(request.getParameter("productPlace"));
try{
product.setProductPrice(Integer.parseInt(request.getParameter("productPrice")));
}catch(Exception e){
%>
<script type="text/javascript">
	alert("请输入正确的价格！");
	window.history.go(-1);
</script>
<%
}
int n = addInfo.insertProduct( product);
if (n==-1){
%>
<script type="text/javascript">
	alert("编号重复！");
	window.history.go(-1);
</script>
<%
}
else if (n>0){
%>
<script type="text/javascript">
	window.location.href="addProductSuccess.jsp";
</script>
<%
}else{
%>
<script type="text/javascript">
	alert("保存失败！");
	window.history.go(-1);
</script>
<%} %>
