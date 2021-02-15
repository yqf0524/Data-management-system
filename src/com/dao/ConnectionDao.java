package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDao 
{
	public static Connection getConn()
	{
		Connection conn=null;
		
		try 
		{
			//加载驱动程序
			Class.forName("com.mysql.jdbc.Driver");
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			//获得数据库的连接
			String URL = "jdbc:mysql://localhost:3306/product?user=root&password=520524&useUnicode=true&characterEncoding=UTF-8";
			conn = DriverManager.getConnection(URL);
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}

}
