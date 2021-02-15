<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.entity.Product"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<Product> list = (List<Product>)session.getAttribute("productList");
session.removeAttribute("productList");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>信息查询结果</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style>
#header {
    background-color:#7b9496;
    color:white;
    text-align:center;
    padding:2px;
    </style>
  </head>
  
  <body bgcolor="#e2f9fb">
  <div id="header">
  		<table align="center">
  			<tr>
  				<td width="200"><img src="image/shanghai.jpg"></td>
  				<td width="100"><a href="index.jsp"><font size=5><b>首页</b></font></a></td>
  				<td width="150"><a href="searchInfo.jsp"><font size=5><b>信息查询</b></font></a></td>
  				<td width="150"><a href="addProduct.jsp"><font size=5><b>产品添加</b></font></a></td>
  				<td width="150"><a href="addPart.jsp"><font size=5><b>零件添加</b></font></a></td>
  				<td width="150"><a href="BOM.jsp"><font size=5><b>BOM表查询</b></font></a></td>
  				<td width="100" align="right"><img src="image/logo.jpg" height="50"></td>
  			</tr>
  		</table>
  	</div>
  	<br/>
  	<br/>
  	<br/>
  	
  <%
    if(list == null || list.size()==0){ 
  %>
  <br/>
  <br/>
  <br/>
  <h1 align="center"><font color="#ff0000">对不起，没有找到相应的记录！</font></h1>
  <%} else { %>
  	<br/><br/>
  	<div align="center">
  	  <h1 align="center"><font color="#0000ff">产品信息查询结果</font></h1>
  	  <table border="1" cellspacing="0" bgcolor="#ffffff">
  	    <tr bgcolor="#ace6cc">
  	      <td width="80" align="center">产品编号</td>
  	      <td width="80" align="center">产品型号</td>
  	      <td width="90" align="center">产品名称</td>
  	      <td width="150" align="center">制造商</td>
  	      <td width="120" align="center">产地</td>
  	      <td width="80" align="center">价格</td>
  	      <td width="105" align="center">&nbsp;</td>
  	      <td width="35" align="center">&nbsp;</td>
  	      <td width="35" align="center">&nbsp;</td>
  	    </tr>
  	    <%
  	      for(int i=0;i<list.size();i++){ 
  	    %>
  	    <tr>
  	      <td><a href="productInfo.jsp?id=<%=list.get(i).getId() %>"><%=list.get(i).getProductId() %></a></td>
  	      <td><%=list.get(i).getProductType() %></td>
  	      <td><%=list.get(i).getProductName() %></td>
  	      <td><%=list.get(i).getProductManufacture() %></td>
  	      <td><%=list.get(i).getProductPlace() %></td>
  	      <td><%=list.get(i).getProductPrice() %></td>
  	      <td><a href="doSearchPartByType.jsp?type=<%=list.get(i).getProductType() %>">附属零件信息</a></td>
  	      <td><a href="editProductInfo.jsp?id=<%=list.get(i).getId() %>">编辑</a></td>
  	      <td><a href="deleteProduct.jsp?id=<%=list.get(i).getId() %>&productType=<%=list.get(i).getProductType() %>">删除</a></td>
  	    </tr>
  	    <%} %>
  	  </table>
  	</div>
  <%} %>
  </body>
</html>
