package com.km.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.km.util.JdbcUtil;

/**
 * Servlet implementation class HomepageServlet
 */
@WebServlet("/HomepageServlet")
public class HomepageServlet extends HttpServlet {
	JdbcUtil jdbc = new JdbcUtil();
	ResultSet rs=null;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String username = (String)request.getSession().getAttribute("username");
		String head = (String)request.getSession().getAttribute("head_img");
		String introduce = request.getParameter("introduce");
		String sex = request.getParameter("sex");
		//生日
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String birthday = year+"-"+month;
		//地区
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String address = province+"-"+city;
		//查询信息
		String sql="select * from tb_users where username=?";
		rs=jdbc.executeQuery(sql, username);
		if(rs==null){
			System.out.println("请先登录");
		}else{
			System.out.println(username+"=="+introduce+"=="+head+"=="+sex+"=="+birthday+"=="+address);
			String sql2="update tb_users set introduce=?,head=?,sex=?,birthday=?,address=? where username=?";
			int i= jdbc.update(sql2,introduce,head,sex,birthday,address,username);
		}
		request.getSession().setAttribute("sex", sex);
		request.getSession().setAttribute("introduce",introduce );
		request.getSession().setAttribute("year", year);
		request.getSession().setAttribute("month", month);
		request.getSession().setAttribute("province", province);
		request.getSession().setAttribute("city", city);
		request.getSession().setAttribute("head_img", head);
		request.getRequestDispatcher("homepage.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
