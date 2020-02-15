package com.km.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.km.util.JdbcUtil;

@WebServlet("/ChangePassServlet")
public class ChangePassServlet extends HttpServlet {
	JdbcUtil jdbc = new JdbcUtil();
	ResultSet rs = null;
	int r=-1;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String username = (String) request.getSession().getAttribute("username");
		String newpass=request.getParameter("newpass");
		String repass=request.getParameter("repass");
		String sql="update tb_users set password=? where username=?";
		r=jdbc.update(sql,newpass,username);
		if(r!=-1){
			request.getSession().setAttribute("password", newpass);
			request.getRequestDispatcher("homepage.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("homepage.jsp").forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
