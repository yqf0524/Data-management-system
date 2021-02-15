package com.biz;

import com.dao.CommonDao;
import com.entity.Part;
import com.entity.Product;

public class AddInfo {

	CommonDao dao = new CommonDao();
	
	public int insertProduct(Product product){
	     return dao.insertProduct(product);
	}
	
	public int insertPart(Part part){
		return dao.insertPart(part);
	}
}
