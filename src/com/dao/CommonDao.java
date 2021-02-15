package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.entity.Part;
import com.entity.Product;

//数据层处理类，实现增删改查的功能
public class CommonDao 
{
	
	Connection conn;
	
	//添加产品
    public  int insertProduct(Product  product)
    
    {
    	PreparedStatement pstmt = null;
		int rs = 0;
		String values = "'"+product.getProductId()+"','"+product.getProductType()+"','"+product.getProductName()+"','"+product.getProductManufacture()+"','"+product.getProductPlace()+"',"+product.getProductPrice();
		String sql ="insert into ProductTable(productID,productType,productName,productManufacture,productPlace,productPrice) values ("+values+")";

		try 
		{
			//获得数据连接
			conn = ConnectionDao.getConn();
			//加载mysql驱动程序
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	
		return rs;
    }
    
    //更改产品信息
    public int updateProduct(Product  product)
    
    {
    	PreparedStatement pstmt = null;
    	
		int rs = 0;
		String set = "productID='" +product.getProductId()+ "',productType='"+product.getProductType()+"',productName='"+product.getProductName()+"',productManufacture='"+product.getProductManufacture()+"',productPlace='"+product.getProductPlace()+"',productPrice="+product.getProductPrice()+"";
		String sql = "update ProductTable set "+set+" where ID="+product.getId();
		try 
		{
			conn = ConnectionDao.getConn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
    	
		return rs;
    }
    
   //删除产品
    public int deleteProduct(Product product)
    
    {
    	PreparedStatement pstmt = null;
		int rs = 0;
		String sql = "delete from ProductTable where ID="+product.getId();
		try 
		{
			//获得数据连接
			conn = ConnectionDao.getConn();
			//加载mysql驱动程序
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeUpdate();
			deletePartByType(product.getProductType());
			pstmt.close();
			conn.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return rs;
    }
    
   //通过类型删除零件
    public int deletePartByType(String type)
    
    {
    	PreparedStatement pstmt = null;
    	
		int rs = 0;
		String sql = "delete from PartTable where ProductType='"+type+"'";
		try 
		{
			conn = ConnectionDao.getConn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return rs;
    }
    
    //增加零件
    public  int insertPart(Part  part)
    
    {
    	PreparedStatement pstmt = null;
		int rs = 0;
		String values = "'"+part.getPartId()+"','"+part.getPartName()+"','"+part.getProductType()+"','"+part.getPartManufacture()+"','"+part.getPartPlace()+"',"+part.getPartPrice();
		String sql ="insert into PartTable(partID,partname,producttype,partManufacture,partPlace,partprice) values ("+values+")";
		
		try 
		{
			conn = ConnectionDao.getConn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	
		return rs;
    }
    
    //修改零件信息
    public int updatePart(Part  part)
    
    {
    	PreparedStatement pstmt = null;
    	
		int rs = 0;
		String set = "partID='"+part.getPartId()+"',partname='"+part.getPartName()+"',producttype='"+part.getProductType()+"',partManufacture='"+part.getPartManufacture()+"',partPlace='"+part.getPartPlace()+"',partprice="+part.getPartPrice();
		String sql = "update PartTable set "+set+" where ID="+part.getId();
		try
		{
			conn = ConnectionDao.getConn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
    	
		return rs;
    }
    
    //删除零件
    public int deletePart(String id)
    
    {
    	PreparedStatement pstmt = null;
    	
		int rs = 0;
		String sql = "delete from PartTable where ID="+id;
		try 
		{
			conn = ConnectionDao.getConn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
    	
		return rs;
    	
    }
    
    //通过产品类型查看零件
    public List<Part> getPartByType(String type)
    
    {
    	PreparedStatement pstmt = null;
    	List<Part> list=new ArrayList<Part>();
    	ResultSet rs = null;
		String sql = "select * from PartTable where ProductType = '"+type+"'";
		try
		{
			conn = ConnectionDao.getConn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			Part part = null;
			while(rs.next())
			{
				part = new Part();
				part.setId(rs.getInt("id"));
				part.setPartId(rs.getString("partId"));
				part.setProductType(rs.getString("productType"));
				part.setPartName(rs.getString("partName"));
				part.setPartManufacture(rs.getString("partManufacture"));
				part.setPartPlace(rs.getString("partPlace"));
				part.setPartPrice(rs.getInt("partPrice"));
				list.add(part);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (SQLException e) 
		{
			e.printStackTrace();
		}
    	return list;
    }
    
    // 通过编号查询产品
    public Product getProductById(int id)

    {
    	PreparedStatement pstmt = null;
    	Product product = null;
    	ResultSet rs = null;
    	String sql = "select * from ProductTable where Id=" + id;
    	try
    	{
    		conn = ConnectionDao.getConn();
    		pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				product = new Product();
				product.setId(rs.getInt("id"));
				product.setProductId(rs.getString("productId"));
				product.setProductType(rs.getString("productType"));
				product.setProductName(rs.getString("productName"));
				product.setProductManufacture(rs.getString("productManufacture"));
				product.setProductPlace(rs.getString("productPlace"));
				product.setProductPrice(rs.getInt("productPrice"));
			}
			rs.close();
			pstmt.close();
			conn.close();
    	}
    	catch (SQLException e)
    	{
    		e.printStackTrace();
    	}
    	return product;
    }
    
    // 通过编号查询零件
    public Part getPartById(int id)
    
    {
    	PreparedStatement pstmt = null;
    	Part part = null;
    	ResultSet rs = null;
		String sql = "select * from PartTable where Id = "+id;
		try
		{
			conn = ConnectionDao.getConn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				part = new Part();
				part.setId(rs.getInt("id"));
				part.setPartId(rs.getString("partId"));
				part.setProductType(rs.getString("productType"));
				part.setPartName(rs.getString("partName"));
				part.setPartManufacture(rs.getString("partManufacture"));
				part.setPartPlace(rs.getString("partPlace"));
				part.setPartPrice(rs.getInt("partPrice"));
			}
			rs.close();
			pstmt.close();
			conn.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
    	return part;
    }
    
    //根据条件查询产品信息
    public List<Product> getProductByWhere(String where)
    
    {
    	List<Product> list = new ArrayList<Product>();
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	String sql = "select * from ProductTable " + where;
    	try
    	{
    		conn = ConnectionDao.getConn();
    		pstmt = conn.prepareStatement(sql);
    		Product product = null;
			rs = pstmt.executeQuery();
			while(rs.next()){
				product = new Product();
				product.setId(rs.getInt("id"));
				product.setProductId(rs.getString("productId"));
				product.setProductType(rs.getString("productType"));
				product.setProductName(rs.getString("productName"));
				product.setProductManufacture(rs.getString("productManufacture"));
				product.setProductPlace(rs.getString("productPlace"));
				product.setProductPrice(rs.getInt("productPrice"));
				list.add(product);
			}
			rs.close();
			pstmt.close();
			conn.close();
    	}
    	catch (SQLException e)
    	{
    		e.printStackTrace();
    	}
    	return list;
    }
    
    // 根据条件查询零件信息
    public List<Part> getPartByWhere(String where) 
   
    {
    	List<Part> list = new ArrayList<Part>();
    	PreparedStatement pstmt = null;
    	Part part = null;
    	ResultSet rs = null;
		String sql = "select * from PartTable " + where;
		try
		{
			conn = ConnectionDao.getConn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				part = new Part();
				part.setId(rs.getInt("id"));
				part.setPartId(rs.getString("partId"));
				part.setProductType(rs.getString("productType"));
				part.setPartName(rs.getString("partName"));
				part.setPartManufacture(rs.getString("partManufacture"));
				part.setPartPlace(rs.getString("partPlace"));
				part.setPartPrice(rs.getInt("partPrice"));
				list.add(part);
			}
			rs.close();
			pstmt.close();
			conn.close();
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
    	return list;
    }
    
    //BOM表查询，所有产品及零件信息
    public List<Product> getAllProduct()
   
    {
    	List<Product> list = new ArrayList<Product>();
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	String sql = "select * from ProductTable ";
    	try
    	{
    		conn = ConnectionDao.getConn();
    		pstmt = conn.prepareStatement(sql);
    		Product product = null;
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				product = new Product();
				product.setId(rs.getInt("id"));
				product.setProductId(rs.getString("productId"));
				product.setProductType(rs.getString("productType"));
				product.setProductName(rs.getString("productName"));
				product.setProductManufacture(rs.getString("productManufacture"));
				product.setProductPlace(rs.getString("productPlace"));
				product.setProductPrice(rs.getInt("productPrice"));
				list.add(product);
			}
			rs.close();
			pstmt.close();
			conn.close();
    	}
    	catch (SQLException e)
    	{
    		e.printStackTrace();
    	}
    	return list;
    }
}
