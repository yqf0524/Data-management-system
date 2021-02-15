package com.biz;

import com.dao.CommonDao;
import com.entity.Product;

public class DeleteInfo {

	CommonDao dao = new CommonDao();
	
	public int deleteProduct(Product product){
		return dao.deleteProduct(product);
	}
	
	public int deletePart(String id){
		return dao.deletePart(id);
	}
}
