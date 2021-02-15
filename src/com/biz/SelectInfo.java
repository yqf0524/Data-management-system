package com.biz;

import java.util.List;

import com.dao.CommonDao;
import com.entity.Part;
import com.entity.Product;

public class SelectInfo {

	CommonDao dao = new CommonDao();
	
	public Product getProductById(int id){
		return dao.getProductById(id);
	}
	
	public List<Product> getProductByWhere(String where){
		return dao.getProductByWhere(where);
	}
	
	public Part getPartById(int id){
		return dao.getPartById(id);
	}
	
	public List<Part> getPartByWhere(String where) {
		return dao.getPartByWhere(where);
	}
	
	public List<Product> getAllProduct(){
		return dao.getAllProduct();
	}
	
	public List<Part> getPartByType(String type){
		return dao.getPartByType(type);
	}
}