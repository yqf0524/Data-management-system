<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.entity.Product"%>
<%@page import="com.biz.SelectInfo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("UTF-8");

SelectInfo biz = new SelectInfo();

String productSelectInfo = request.getParameter("productSelectInfo");
String selectInfo = request.getParameter("selectInfo");
String selectType = request.getParameter("selectType");
String priceType = request.getParameter("priceType");
String price = request.getParameter("price");
session.setAttribute("selectInfo",selectInfo);
session.setAttribute("selectType",selectType);
session.setAttribute("priceType",priceType);
session.setAttribute("price",price);

String where = " where ";
if("id".equals(productSelectInfo)){
	where += "productId = '" + selectInfo + "' ";
}else if("type".equals(productSelectInfo)){
	where += "productType like '%" + selectInfo + "%' ";
}else if("name".equals(productSelectInfo)){
	where += "productName like '%" + selectInfo + "%' ";
}else if("manufacture".equals(productSelectInfo)){
	where += "productManufacture like '%" + selectInfo + "%' ";
}else if("place".equals(productSelectInfo)){
	where += "productPlace like '%" + selectInfo + "%' ";
}

if(!"".equals(price)){
	where += selectType;
	if("big".equals(priceType)){
		where += " productPrice > " + price;
	}else if("equal".equals(priceType)){
		where += " productPrice = " + price;
	}else if("small".equals(priceType)){
		where += " productPrice < " + price;
	}
}

List<Product> list = biz.getProductByWhere(where);
session.setAttribute("productList",list);
response.sendRedirect("showProductInfo.jsp");
%>
