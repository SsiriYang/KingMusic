package com.km.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.km.model.User;
import com.km.util.JdbcUtil;
import com.mysql.jdbc.JDBC4ResultSet;

@WebServlet("/back")
public class back extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private JdbcUtil jdbc=new JdbcUtil();
    
    public back() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String username=request.getParameter("username");
		String repass=request.getParameter("repassword");
		String pass=request.getParameter("password");
		User user=new User();
		user.setUsername(username);
		String sql="select * from tb_users where username='"+username+"'";
		ResultSet rs=jdbc.executeQuery(sql);
		try {
			if(username==""){
				response.getWriter().print("{\"success\":2}");//3代表空
			}else
			if (rs.next()) {
				response.getWriter().print("{\"success\":1}");//1代表重复
			} else {
				response.getWriter().print("{\"success\":0}");//0代表可用
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
