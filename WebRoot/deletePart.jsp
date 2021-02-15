<%@ page language="java" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String name = request.getParameter("partName");
name = new String(name.trim().getBytes("ISO10646"),"UTF-8");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>零件删除</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#E2F9FB">
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>

   <div align="center">
   <h1><font color="#0000ff">确定要删除名称为<%=name %>的零件记录？</font> </h1>
  <br><br>
  <form action="doDeletePart.jsp" method="post" name="delete">
  <input type="hidden" name="id" value="<%=id %>" />
  <input type="submit" name="sub" value="删除" /> &nbsp;&nbsp;&nbsp;&nbsp;
  <a onclick="javascript:window.history.back(-1);"><font color="#ff0080">返回</font></a>
  </form>
  </div>
  </body>
</html>
