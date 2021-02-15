package com.entity;

public class Product {

	private int id;
	// 唯一主键
	private String productId;
	// 产品编号
	private String productType;
	//产品类型
	private String productName;
	//产品名字
	private String productManufacture;
	//产品生产商
	private String productPlace;
	//产地
	private int productPrice;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductManufacture() {
		return productManufacture;
	}
	public void setProductManufacture(String productManufacture) {
		this.productManufacture = productManufacture;
	}
	public String getProductPlace() {
		return productPlace;
	}
	public void setProductPlace(String productPlace) {
		this.productPlace = productPlace;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	
	
}
