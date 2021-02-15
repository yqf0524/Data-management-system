<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>产品信息管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style>
#header {
    background-color:#778899;
    color:white;
    text-align:center;
    padding:2px;
}
#nav {
    line-height:30px;
    background-color:#CCCCCC;
    height:540px;
    width:250px;
    float:left;
    padding:5px;	      
}
#section {
	background-color:#FFFFFF;
    width:1070px;
    float:right;
    padding:1px;
}
#footer {
    background-color:#333333;
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
  				<td width="200"><a href="http://cdhk.tongji.edu.cn/zh-hans/" target="_blank"><img src="image/shanghai.jpg"></a></td>
  				<td width="100"><font size=5><b>首页</b></font></td>
  				<td width="150"><a href="searchInfo.jsp"><font size=5><b>信息查询</b></font></a></td>
  				<td width="150"><a href="addProduct.jsp"><font size=5><b>产品添加</b></font></a></td>
  				<td width="150"><a href="addPart.jsp"><font size=5><b>零件添加</b></font></a></td>
  				<td width="150"><a href="BOM.jsp"><font size=5><b>BOM表查询</b></font></a></td>
  				<td width="100" align="right"><a href="http://www.vw.com.cn/cn.html"><img src="image/logo.jpg" height="50"></a></td>
  			</tr>
  </table>
  </div>

  <div id="nav">
  <table>
  	<tr>
  	<td width="600" align="center" height="80"><font size="5" face="仿宋_GB2312" color="#0000ff"><strong>欢迎来到大众汽车</strong></font></td>
  	</tr>
  	<tr>
  	<td width="800"><font size="4"  face="仿宋_GB2312">&nbsp;&nbsp;本系统是一个产品信息管理系统，在网页站点上可以对产品和零件的信息进行模糊查询、高级查询，同时将产品和零件的详细信息显示出来;具有添加、编辑修改和删除产品及零件信息的功能;通过BOM表可以反映整个信息记录集成的结构总图。</font></td>
  	</tr>
 </table>
  	<font face="楷体_GB2312" size="4">
  	    <hr/>
		制作人：杨清峰<br> 
		学号：1733327<br>
		单位：中德学院机械工程专业<br> 
		邮箱：319511269@qq.com<br>
		电话：18019068190</font> 
</div>
<div id="section">
  <marquee align="absmiddle" direction="right" behavior="scroll" width="1070" height="548"  loop="-1" scrollamount="15" onMouseOut="this.start()" onMouseOver="this.stop()">
  		<img src="image/Car00.jpg"/>
  		<a href="http://127.0.0.1:8080/myweb/productInfo.jsp?id=7"><img src="image/Car01.jpg"/></a>
  		<img src="image/Car02.jpg"/>
  		<img src="image/Car03.jpg"/>
  		<img src="image/Car04.jpg"/>
  		<img src="image/Car05.jpg"/>
  		<img src="image/Car06.jpg"/>
  		<a href="http://127.0.0.1:8080/myweb/productInfo.jsp?id=9"><img src="image/Car07.jpg"/></a>
  	</marquee>
  </div>
<div id="footer">
    大众汽车数字化管理系统
  </div>
  </body>