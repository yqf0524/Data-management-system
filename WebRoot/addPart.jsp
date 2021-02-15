<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.biz.SelectInfo"%>
<%@page import="com.entity.Product"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
SelectInfo si = new SelectInfo();
List<Product> list = si.getAllProduct();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>零件添加</title>
    
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
  				<td width="150"><font size=5><b>零件添加</b></font></td>
  				<td width="150"><a href="BOM.jsp"><font size=5><b>BOM表查询</b></font></a></td>
  				<td width="100" align="right"><img src="image/logo.jpg" height="50"></td>
  			</tr>
  </table>
  </div>
  <div id="nav">
  		 <h1 align="center"><font color="#000000"><br/><br/><br/><br/><br/><b>添<br/>加<br/>零<br/>件<br/>记<br/>录</b></font></h1>
  </div>
  <div id="section">
  	<br/>
  	<br/>
  	<br/>
  	<br/>
    <h1 align="center"><font color="#0000ff">添加零件记录</font></h1>
    <br/>
    <br/>
    <form name="insertPart" method="post" action="doInsertPart.jsp" onsubmit="return check();">
    <div align="right"></div>
    <table align="center" width="400"  bgcolor="#ace6cc">
      <tr>
        <td align="right" width="100"><b>零件编号</b></td>
        <td><input type="text" name="partId" id="partId" /></td>
      </tr>
      <tr>
        <td align="right"><b>零件名称</b></td>
        <td><input type="text" name="partName" id="partName" /></td>
      </tr>
      <tr>
        <td align="right"><b>所属产品类型</b></td>
        <td>
        	<select name="productType" id="productType">
        		<%
        		for(int i=0;i<list.size();i++){ 
        		%>
        		<option value="<%=list.get(i).getProductType() %>"><%=list.get(i).getProductType() %></option>
        		<%} %>
        	</select>
        </td>
      </tr>
      <tr>
        <td align="right"><b>零件供应商</b></td>
        <td><input type="text" name="partManufacture" id="partManufacture" /></td>
      </tr>
      <tr>
        <td align="right"><b>供应商地址</b></td>
        <td><input type="text" name="partPlace" id="partPlace" /></td>
      </tr>
      <tr>
        <td align="right"><b>价格</b></td>
        <td><input type="text" name="partPrice" id="partPrice" />(<font color="#cc0000">请输入数字</font>)
        
        </td>
      </tr>
      <tr height="50">
        <td colspan="2" align="center">
          <input type="submit" value="添加"/>
          &nbsp;&nbsp;&nbsp;&nbsp;
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
