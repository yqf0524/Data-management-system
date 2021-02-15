<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.entity.Product"%>
<%@page import="com.biz.SelectInfo"%>
<%@page import="com.entity.Part"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int id = Integer.parseInt(request.getParameter("id"));
SelectInfo biz = new SelectInfo();
Product product = biz.getProductById(id);
List<Part> partList = biz.getPartByType(product.getProductType());
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>产品详细信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

<style>
#header {
    background-color:#7b9496;
    color:white;
    text-align:center;
    padding:2px;
}
#nav {
    line-height:30px;
    background-color:#cdcbcb;
    height:540px;
    width:250px;
    float:left;
    padding:5px;	      
}
#section {
    height:548px;
    width:1070px;
    float:right;
    padding:1px;
    background-color:#e2f9fb;	 	 
}
#footer {
    background-color:#2C3333;
    color:white;
    clear:both;
    text-align:center;
    padding:10px;	 	 
}
</style>
</head>
  
  <body>
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
  		<div id="nav">
  		<h1 align="center"><font color="#000000"><br/><br/><br/><br/><br/><b>产<br/>品<br/>详<br/>细<br/>信<br/>息</b></font></h1>
  		</div>
  		
  		<div id="section">
  		<br/>
  		<br/>
  		<br/>
  		<br/>
    <div>
      <h2 align="center"><font color="#0000ff">产品详细信息</font></h2>
      <br/>
      <br/>
      <table align="center" width="300" bgcolor="#ffffff" border="1" cellspacing="0">
        <tr>
          <td align="right" width="100" bgcolor="#ace6cc">产品编号：</td>
          <td><%=product.getProductId() %></td>
        </tr>
        <tr>
          <td align="right" bgcolor="#ace6cc">产品名称：</td>
          <td><%=product.getProductName() %></td>
        </tr>
        <tr>
          <td align="right" bgcolor="#ace6cc">产品型号：</td>
          <td><%=product.getProductType() %></td>
        </tr>
        <tr>
          <td align="right" bgcolor="#ace6cc">制造商：</td>
          <td><%=product.getProductManufacture() %></td>
        </tr>
        <tr>
          <td align="right" bgcolor="#ace6cc">产地：</td>
          <td><%=product.getProductPlace() %></td>
        </tr>
        <tr>
          <td align="right" bgcolor="#ace6cc">价格：</td>
          <td><%=product.getProductPrice()%></td>
        </tr>
      </table>
      </div>
      <h3 align="center">附属零件信息</h3>
      <table align="center" border="1" cellspacing="0">
      <%
      for(int i=0;i<partList.size();i++){ 
      %>
      <tr><td>
      <div align="center"><a href="partInfo.jsp?id=<%=partList.get(i).getId() %>" style="text-decoration: none"><%=partList.get(i).getPartName() %></a>
      </div>
      </td>
      </tr>
      <%} %>
      </table>
    </div>
     <div id="footer">
    大众汽车数字化管理系统
 	 </div>
  </body>
</html>
