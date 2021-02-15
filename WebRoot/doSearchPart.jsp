<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.biz.SelectInfo"%>
<%@page import="com.entity.Part"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("UTF-8");

SelectInfo biz = new SelectInfo();

String selectType = request.getParameter("partSelectType");
String selectInfo = request.getParameter("partSelectInfo");

String where = " where ";
if("id".equals(selectType)){
	where += "PartId = '" + selectInfo + "' ";
}else if("name".equals(selectType)){
	where += "partName like '%" + selectInfo + "%' ";
}else if("type".equals(selectType)){
	where += "productType like '%" + selectInfo + "%' ";
}else if("manufacture".equals(selectType)){
	where += "partManufacture like '%" + selectInfo + "%' ";
}else if("place".equals(selectType)){
	where += "partPlace like '%" + selectInfo + "%' ";
}

List<Part> list = biz.getPartByWhere(where);
session.setAttribute("partList",list);
response.sendRedirect("showPartInfo.jsp");
%>
