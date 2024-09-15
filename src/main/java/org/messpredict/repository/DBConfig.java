package org.messpredict.repository;

import java.sql.*;
import java.util.*;
import java.io.*;

public class DBConfig {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private static DBConfig db=null;

	private DBConfig(String path) {
		try {
			FileInputStream fin=new FileInputStream(path);
			Properties p=new Properties();
			p.load(fin);
			String user=p.getProperty("db.username");
			String pass=p.getProperty("db.password");
			String url=p.getProperty("db.url");
			String driver=p.getProperty("db.driverclassname");
			/*System.out.println(user);
			System.out.println(pass);
			System.out.println(url);
			System.out.println(driver);
			*/
			Class.forName(driver);
			conn=DriverManager.getConnection(url,user,pass);
			
			try {
				if(conn!=null) {
					System.out.println("Connect");
				} else {
					System.out.println("not connect");
				}

			} catch (Exception e) {
				//System.out.println("Error is " + e);
			}
		} catch (Exception e) {
			System.out.println("Error is "+e);
		}
	}
	public static DBConfig getInstance(String path) {
		if(db==null) {
			db=new DBConfig(path);
		}
		return db;
	}
	public Connection getConnection() {
		return conn;
	}
	public PreparedStatement getPreparedStatement() {
		return ps;
	}
	public ResultSet getResultSet() {
		return rs;
	}
}
