package com.biz;

import com.dao.CommonDao;
import com.entity.Part;
import com.entity.Product;

public class UpdateInfo {

	CommonDao dao = new CommonDao();
	
	public int updatePart(Part part){
		return dao.updatePart(part);
	}
	
	public int updateProduct(Product product){
		return dao.updateProduct(product);
	}
}
