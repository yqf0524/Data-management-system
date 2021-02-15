<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="com.biz.SelectInfo"%>
<%@page import="com.entity.Part"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Product"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

int id = Integer.parseInt(request.getParameter("id"));
SelectInfo biz = new SelectInfo();
Part part = biz.getPartById(id);
List<Product> list = biz.getAllProduct();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>零件信息编辑</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function check(){
			var id = document.getElementById("partId");
			var name = document.getElementById("partName");
			var type = document.getElementById("productType");
			var manufacture = document.getElementById("partManufacture");
			var place = document.getElementById("partPlace");
			var price = document.getElementById("partPrice");
			
			if(id.value==""){
				alert("零件编号不能为空");
				id.focus();
				return false;
			}
			if(name.value==""){
				alert("零件名称不能为空");
				name.focus();
				return false;
			}
			if(type.value==""){
				alert("所属产品型号不能为空");
				type.focus();
				return false;
			}
			if(manufacture.value==""){
				alert("零件供应商不能为空");
				manufacture.focus();
				return false;
			}
			if(place.value==""){
				alert("供应商地址不能为空");
				place.focus();
				return false;
			}
			if(price.value==""){
				alert("价格不能为空");
				price.focus();
				return false;
			}
			return true;
		}
	</script>
	
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
  		<h1 align="center"><font color="#000000"><br/><br/><br/><br/><br/><b>编<br/>辑<br/>零<br/>件<br/>记<br/>录</b></font></h1>
  		</div>
  		<div id="section">
  		<br/>
        <br/>
        <br/>
        <br/>
    <h2 align="center"><font color="#0000ff">编辑零件记录</font></h2>
    <br/>
    <br/>
    <form name="updatePart" method="post" action="updatePart.jsp" onsubmit="return check();">
    	<input type="hidden" name="id" value="<%=part.getId() %>"/>
	<table align="center" width="400"  bgcolor="#ACE6CC">
      <tr>
        <td align="right" width="100">零件编号</td>
        <td><input type="text" name="partId" id="partId" value="<%=part.getPartId() %>" /></td>
      </tr>
      <tr>
        <td align="right">零件名称</td>
        <td><input type="text" name="partName" id="partName" value="<%=part.getPartName() %>" /></td>
      </tr>
      <tr>
        <td align="right">所属产品型号</td>
        <td>
        <select name="productType" id="productType">
        <%
        	for(int i=0;i<list.size();i++){
        	if(list.get(i).getProductType().equals(part.getProductType())){ 
        %>
        <option value="<%=list.get(i).getProductType() %>" selected="selected"><%=list.get(i).getProductType() %></option>
        <%}else{ %>
        <option value="<%=list.get(i).getProductType() %>"><%=list.get(i).getProductType() %></option>
        <%
        }} %>
        </select>
        </td>
      </tr>
      <tr>
        <td align="right">零件供应商</td>
        <td><input type="text" name="partManufacture" id="partManufacture" value="<%=part.getPartManufacture() %>" /></td>
      </tr>
      <tr>
        <td align="right">供应商地址</td>
        <td><input type="text" name="partPlace" id="partPlace" value="<%=part.getPartPlace() %>" /></td>
      </tr>
      <tr>
        <td align="right">价格</td>
        <td><input type="text" name="partPrice" id="partPrice" value="<%=part.getPartPrice() %>" />(请输入数字)
        
        </td>
      </tr>
      <tr height="50">
        <td colspan="2" align="center">
          <input type="submit" value="保存"/> &nbsp;&nbsp;&nbsp;&nbsp;
          <input type="reset" value="重置"/>
        </td>
        
      </tr>
    </table>
    </form>
    </div>
    <div id="footer">
    大众汽车数字化管理系统
  </div>
  </body>
</html>
