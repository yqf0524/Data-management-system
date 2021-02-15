<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.entity.Part"%>
<%@page import="com.biz.SelectInfo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int id = Integer.parseInt(request.getParameter("id"));
SelectInfo biz = new SelectInfo();
Part part = biz.getPartById(id);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>零件详细信息</title>
    
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
    background-color:2C3333;
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
  		<h1 align="center"><font color="#000000"><br/><br/><br/><br/><br/><b>零<br/>件<br/>详<br/>细<br/>信<br/>息</b></font></h1>
  		</div>

  </head>
  
   <div id="section">
  		<br/>
  		<br/>
  		<br/>
  		<br/>
      <h2 align="center"><font color="#0000ff">零件详细信息</font></h2>
      <br/>
      <br/>
      <table align="center" width="300" bgcolor="#ffffff" border="1" cellspacing="0">
        <tr>
          <td align="right" width="150" bgcolor="#ace6cc">零件编号：</td>
          <td><%=part.getPartId() %></td>
        </tr>
        <tr>
          <td align="right" bgcolor="#ace6cc">零件名称：</td>
          <td><%=part.getPartName() %></td>
        </tr>
        <tr>
          <td align="right" bgcolor="#ace6cc">所属产品编号：</td>
          <td><%=part.getProductType() %>       </td>
        </tr>
        <tr>
          <td align="right" bgcolor="#ace6cc">零件供应商：</td>
          <td><%=part.getPartManufacture() %></td>
        </tr>
        <tr>
          <td align="right" bgcolor="#ace6cc">供应商地址：</td>
          <td><%=part.getPartPlace() %></td>
        </tr>
        <tr>
          <td align="right" bgcolor="#ace6cc">价格：</td>
          <td><%=part.getPartPrice() %></td>
        </tr>

      </table>
    </div>
     <div id="footer">
    大众汽车数字化管理系统
 	 </div>
  </body>
</html>
