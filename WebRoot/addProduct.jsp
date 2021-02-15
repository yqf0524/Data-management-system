<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加产品</title>
    
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
  				<td width="150"><font size=5><b>产品添加</b></font></td>
  				<td width="150"><a href="addPart.jsp"><font size=5><b>零件添加</b></font></a></td>
  				<td width="150"><a href="BOM.jsp"><font size=5><b>BOM表查询</b></font></a></td>
  				<td width="100" align="right"><img src="image/logo.jpg" height="50"></td>
  			</tr>
  </table>
  </div>
  <div id="nav">
  		<h1 align="center"><font color="#000000"><br/><br/><br/><br/><br/><b>添<br/>加<br/>产<br/>品<br/>记<br/>录</b></font></h1>
  </div>
  
  <div id="section">
  <br/><br/><br/><br/>
    <h1 align="center"><font color="#0000ff">添加产品记录</font></h1>
    <br/><br/>
    <form name="insertProduct" method="post" action="doInsertProduct.jsp" onsubmit="return check();">
    <div align="right">
    </div>
    <table align="center" width="400"  bgcolor="#ace6cc">
    
      <tr>
        <td align="right" width="100">产品编号</td>
        <td><input type="text" name="productId" id="productId"/></td>
      </tr>
      <tr>
        <td align="right">产品名称</td>
        <td><input type="text" name="productName" id="productName" /></td>
      </tr>
      <tr>
        <td align="right">产品型号</td>
        <td><input type="text" name="productType" id="productType" /></td>
      </tr>
      <tr>
        <td align="right">制造商</td>
        <td><input type="text" name="productManufacture" id="productManufacture" /></td>
      </tr>
      <tr>
        <td align="right">产地</td>
        <td><input type="text" name="productPlace" id="productPlace" /></td>
      </tr>
      <tr>
        <td align="right">价格</td>
        <td><input type="text" name="productPrice" id="productPrice" />(<font color="#cc0000">请输入数字</font>)
        
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
