<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="com.biz.SelectInfo"%>
<%@page import="com.entity.Product"%>
<%@page import="com.entity.Part"%>
<%@page import="java.util.List"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
SelectInfo si = new SelectInfo();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>BOM表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<style type="text/css">
	A{
	text-decoration:none
	}
	
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
  				<td width="150"><font size=5><b>BOM表查询</b></font></td>
  				<td width="100" align="right"><img src="image/logo.jpg" height="50"></td>
  			</tr>
  </table>
  </div>
     <div id="nav">
        <h1 align="center"><font color="#000000"><br/><br/><br/><br/><br/><b>B<br/>O<br/>M<br/>表<br/>查<br/>询</b></font></h1>
     </div>
     
     <div id="section">
    <br/><br/>
    <h1 align="center"><font color="#0000ff">大众汽车产品及零件BOM表</font></h1>
     <form id="form1" name="form1" method="post" action="">
     <h1 style="font-family: &quot;幼圆&quot;; font-size: 36px">&nbsp;</h1>
     </form>
	<!-- InstanceEndEditable --><!-- InstanceBeginEditable name="EditRegion2" -->
	<form id="form3" name="form3" method="post" action="">
	<div align="center" style="color: #3300CC">
	<span style="font-family: &quot; 幼圆&quot;font-size: 36px">
	<span style="font-size: 16px; color: #D73355"></span> 
	<font face="楷体_GB2312"><strong><font color="#0000ff" face="Georgia" size="5" ></font></strong></font>
	</span> 
	</div>
	</form>
	<!-- InstanceEndEditable --><!-- InstanceBeginEditable name="EditRegion3" -->
	<form id="form4" name="form4" method="post" action="">
	<table width="50%" border="0" align="center" bgcolor="#ace6cc" id="table1">
<tr bordercolor="#4dd0e1">
<td>
<script language="JavaScript" type="text/javascript">

function tog(item){
obj=document.getElementById(item);
visible=(obj.style.display!="none");
key=document.getElementById("x" + item);
if (visible) {
obj.style.display="none";
key.innerHTML=">>>";
} else {
obj.style.display="block";
key.innerHTML="----";
}
}
function expall(item,yes){
obj=document.getElementById(item);
arr=obj.getElementsByTagName("UL");
for (i=0;i<arr.length;i++) {
key=document.getElementById("x" + arr[i].id);
if(yes){
arr[i].style.display="block";
key.innerHTML="----";
}else{
arr[i].style.display="none";
key.innerHTML=">>>";
}
}
}

</script>

<div id='tree_all'> <a href="javascript:tog('tree');" id='xtree' style="font-size:16px"> >>> </a>
<span class="STYLE40" style="font-family: &quot;幼圆&quot;; font-size: 16px; color:#0000CC">车型及相关零件</span>
<ul class='xtree' id='tree' style="display:none;">
<%
List<Product> list = si.getAllProduct();
for(int i=0;i < list.size();i++){
%>
<li ><a id='x<%=list.get(i).getProductType() %>' href="javascript:tog('<%=list.get(i).getProductType()%>');"> >>> </a>
<a href="productInfo.jsp?id=<%=list.get(i).getId()%>" ><%=list.get(i).getProductType()%></a>
<ul id='<%=list.get(i).getProductType()%>' style="display:none;">
<%
List<Part> partList = si.getPartByType(list.get(i).getProductType());
for(int j=0;j < partList.size();j++){
%>
<li><a href="partInfo.jsp?id=<%=partList.get(j).getId()%>" > <%=partList.get(j).getPartName()%></a></li>
<%
}
%>
</ul>
</li>
<%
}
%>
</ul>
</div>
<p><a href="javascript:expall('tree_all',1);" style="font-family: &quot;幼圆&quot;">
打开所有分支</a> ---- <a href="javascript:expall('tree_all',0);" style="font-family: &quot;幼圆
&quot;">关闭所有分支</a></p></td>
</tr>
</table>
</form>
</div>
<div id="footer">
    大众汽车数字化管理系统
</div>
</body>
</html>