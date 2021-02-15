package com.entity;

public class Part 		//实体层，零件类
{
	
	private int id;
	//唯一主键
	private String partId;
	//零件编号	
	private String partName;
	//零件名称
	private String productType;
	//产品类型
	private String partManufacture;
	//生产商
	private String partPlace;
	//产地
	private int partPrice;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPartId() {
		return partId;
	}
	public void setPartId(String partId) {
		this.partId = partId;
	}
	public String getPartName() {
		return partName;
	}
	public void setPartName(String partName) {
		this.partName = partName;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getPartManufacture() {
		return partManufacture;
	}
	public void setPartManufacture(String partManufacture) {
		this.partManufacture = partManufacture;
	}
	public String getPartPlace() {
		return partPlace;
	}
	public void setPartPlace(String partPlace) {
		this.partPlace = partPlace;
	}
	public int getPartPrice() {
		return partPrice;
	}
	public void setPartPrice(int partPrice) {
		this.partPrice = partPrice;
	}
	
}
