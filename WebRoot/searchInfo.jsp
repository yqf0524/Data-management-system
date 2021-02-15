<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>信息查询</title>
    
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
  				<td width="150"><font size=5><b>信息查询</b></font></td>
  				<td width="150"><a href="addProduct.jsp"><font size=5><b>产品添加</b></font></a></td>
  				<td width="150"><a href="addPart.jsp"><font size=5><b>零件添加</b></font></a></td>
  				<td width="150"><a href="BOM.jsp"><font size=5><b>BOM表查询</b></font></a></td>
  				<td width="100" align="right"><img src="image/logo.jpg" height="50"></td>
  			</tr>
  </table>
  </div>	
  		<div id="nav">
  		<h1 align="center"><font color="#000000"><br/><br/><br/><br/><br/><b>记<br/>录<br/>信<br/>息<br/>查<br/>询</b></font></h1>
  		</div>
  		
  		<div id="section">
  	<br/><br/><br/><br/>
  	
    <h1 align="center"><font color="#0000ff">记录信息查询</font></h1>
    <br/><br/>
    <table align="center">
    <tr><td height="50" width="500">
    <form action="doSearchProduct.jsp" name="searchProduct" method="post"><b>查询产品记录 </b>
    <select name="productSelectInfo">
     			<option value="id">产品编号</option>
     			<option value="type">产品类型</option>
     			<option value="name">产品名称</option>
     			<option value="manufacture">制造商</option>
     			<option value="place">产地</option>
   </select>
             <input type="text" name="selectInfo" />
             <select name="selectType">
             <option value="or">或者</option>
             <option value="and">并且</option>
             </select>
             <br/><br/>
             <!-- <font color="#0000ff"> --><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价格&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><!-- </font> -->
             <select name="priceType">
             	<option value="big">大于</option>
             	<option value="equal">等于</option>
             	<option value="small">小于</option>
             </select>
             <input type="text" name="price" id="price"/>
             <input type="submit" value="搜 索" />
             <br/>
             <br/>
         </form>
         </td>
       </tr>
       <tr>
         <td height="50">
         <form action="doSearchPart.jsp" name="searchPart" method="post">
        <b>查询零件记录</b>
         <select name="partSelectType">
         			<option value="id">零件编号</option>
         			<option value="name">零件名称</option>
         			<option value="type">所属产品类型</option>
         			<option value="manufacture">供应商</option>
         			<option value="place">供应商地址</option>
         		  </select>
         		  <input type="text" name="partSelectInfo" />
         		  <input type="submit" value="搜 索">
         </form>
         </td>
       </tr>
     </table>        
    </div>
    <div id="footer">
    大众汽车数字化管理系统
 	 </div>
  </body>
</html>
