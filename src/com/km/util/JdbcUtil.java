package com.km.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;

public class JdbcUtil {
	private Connection conn = null;
	private PreparedStatement pst=null;
	private ResultSet rs=null;
	private String url="jdbc:mysql://localhost:3306/kmusic";
	private String username="root";
	private String password="123456";
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Context ctx=new InitialContext();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//获取连接
	public Connection getConn(){
		try {
			conn = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	//增 删 改
	public void executeUpdate(String sql,Object... obj){
		getConn();
		try {
			pst = conn.prepareStatement(sql);
			//给占位符赋值
			if(obj!=null){
				for(int i=0;i<obj.length;i++){
					pst.setObject(i+1, obj[i]);
				}
			}
			pst.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close();
		}
	}
	public int update(String sql,Object... param){
		getConn();
		try {
			pst = conn.prepareStatement(sql);
			if(param!=null){
				for(int i=0;i<param.length;i++){
					pst.setObject(i+1, param[i]);
				}
			}
			int i = pst.executeUpdate();
			return i;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	//查询的操作
	public ResultSet executeQuery(String sql,Object... obj){
		getConn();
		try {
			pst = conn.prepareStatement(sql);
			//给占位符赋值
			if(obj!=null){
				for(int i=0;i<obj.length;i++){
					pst.setObject(i+1, obj[i]);
				}
			}
			rs =pst.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	//插入信息
		public int add(String sql,Object... param){
			getConn();
			try {
				pst = conn.prepareStatement(sql);
				//赋值给SQL语句的占位符,顺序对应
				if(param!=null){
					for(int i=0;i<param.length;i++){
						pst.setObject(i+1, param[i]);
					}
				}
				int i = pst.executeUpdate();
				return i;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return 0;
		}

	//关闭连接
	public void close(){
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(pst!=null){
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	
}
