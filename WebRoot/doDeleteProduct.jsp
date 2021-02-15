<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="com.entity.Product"%>
<%@page import="com.biz.DeleteInfo"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

request.setCharacterEncoding("UTF-8");

Product product = new Product();
product.setId(Integer.valueOf(request.getParameter("id")));
product.setProductType(request.getParameter("productType"));

DeleteInfo deleteInfo = new DeleteInfo();
int n = deleteInfo.deleteProduct(product);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>产品删除结果</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#e2F9FB">
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
    <%if(n==0){ %>
    	<div align="center"><h1><font color="#0000ff">删除产品记录失败</font> </h1>
    	<br/>
    	<a href="index.jsp"><font color="#ff0080">返回首页</font></a>
    	</div>
    <%}else{ %>
    	<div align="center"><h1><font color="#0000ff">删除产品记录成功</font> </h1>
    	<br/>
    	<a href="index.jsp"><font color="#ff0080">返回首页</font></a>
    	</div>
    <%} %>
  </body>
</html>
