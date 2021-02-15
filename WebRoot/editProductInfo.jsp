<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.entity.Product"%>
<%@page import="com.biz.SelectInfo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int id = Integer.parseInt(request.getParameter("id"));
SelectInfo biz = new SelectInfo();
Product product = biz.getProductById(id);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>产品信息编辑</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<script type="text/javascript">
		function check(){
			var id = document.getElementById("productId");
			var name = document.getElementById("productName");
			var type = document.getElementById("productType");
			var manufacture = document.getElementById("productManufacture");
			var place = document.getElementById("productPlace");
			var price = document.getElementById("productPrice");
			
			if(id.value==""){
				alert("产品编号不能为空");
				id.focus();
				return false;
			}
			if(name.value==""){
				alert("产品名称不能为空");
				name.focus();
				return false;
			}
			if(type.value==""){
				alert("产品型号不能为空");
				type.focus();
				return false;
			}
			if(manufacture.value==""){
				alert("制造商不能为空");
				manufacture.focus();
				return false;
			}
			if(place.value==""){
				alert("产地不能为空");
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
  		<h1 align="center"><font color="#000000"><br/><br/><br/><br/><br/><b>编<br/>辑<br/>产<br/>品<br/>记<br/>录</b></font></h1>
  	</div>
    <div id="section">
  		<br/>
        <br/>
        <br/>
        <br/>
      <h2 align="center"><font color="#0000ff">编辑产品记录</font></h2>
      <br/>
      <br/>
      <form action="updateProduct.jsp" name="updateProduct" method="post" onsubmit="return check();">
      <input type="hidden" name="id" id="id" value="<%=product.getId() %>">
      <table align="center" width="400" bgcolor="#ace6cc">
        <tr>
          <td align="right">产品编号</td>
          <td><input type="text" name="productId" id="productId" value="<%=product.getProductId() %>" /></td>
        </tr>
        <tr>
          <td align="right">产品名称</td>
          <td><input type="text" name="productName" id="name" value="<%=product.getProductName() %>" /></td>
        </tr>
        <tr>
          <td align="right">产品型号</td>
          <td><input type="text" name="productType" id="type" value="<%=product.getProductType() %>" /></td>
        </tr>
        <tr>
          <td align="right">制造商</td>
          <td><input type="text" name="productManufacture" id="manufacture" value="<%=product.getProductManufacture() %>" /></td>
        </tr>
        <tr>
          <td align="right">产地</td>
          <td><input type="text" name="productPlace" id="place" value="<%=product.getProductPlace() %>" /></td>
        </tr>
        <tr>
          <td align="right">价格</td>
          <td><input type="text" name="productPrice" id="price" value="<%=product.getProductPrice() %>" /></td>
        </tr>
        <tr>
          <td colspan="2" align="center">
          		<input type="submit" value="更新"/>&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="重置"/></td>
        </tr>
      </table>
      </form>
    </div>
    <div id="footer">
    大众汽车数字化管理系统
  	</div>
  </body>
</html>
