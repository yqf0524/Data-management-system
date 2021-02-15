<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="com.biz.UpdateInfo"%>
<%@page import="com.entity.Part"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

request.setCharacterEncoding("UTF-8");
UpdateInfo updateInfo = new  UpdateInfo ();
Part part = new Part();
part.setId(Integer.valueOf(request.getParameter("id")));
part.setPartId(request.getParameter("partId"));
part.setPartName(request.getParameter("partName"));
part.setProductType(request.getParameter("productType"));
part.setPartManufacture(request.getParameter("partManufacture"));
part.setPartPlace(request.getParameter("partPlace"));
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>编辑信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head>
  
  <body bgcolor="#e2F9FB">
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <%
  try{
	part.setPartPrice(Integer.parseInt(request.getParameter("partPrice")));
  }catch(Exception e){
  %>
  <script type="text/javascript">
	alert("请输入正确的价格！");
	window.history.go(-1);
  </script>
  <%
  }
  int n = updateInfo.updatePart(part);

  if(n==0){ 
  %>
  <div align="center"><h1><font color="#0000ff">保存零件记录失败</font> </h1><br/>
  <a onclick="javascript:window.history.back(-1);"><font color="#ff0080">返回</font></a></div>
  <%}else{ %>
    <div align="center"><h1><font color="#0000ff">保存零件记录成功</font> </h1>
  <br/><a href="index.jsp"><font color="#ff0080">返回首页</font></a></div>
  <%}%>
  </body>
</html>
