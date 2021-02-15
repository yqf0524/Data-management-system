<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.biz.SelectInfo"%>
<%@page import="com.entity.Part"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("UTF-8");

SelectInfo biz = new SelectInfo();

String type = request.getParameter("type");

String where = " where productType='" + type + "'";

List<Part> list = biz.getPartByWhere(where);
session.setAttribute("partList",list);
response.sendRedirect("showPartInfo.jsp");
%>
