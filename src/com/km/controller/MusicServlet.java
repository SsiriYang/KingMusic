package com.km.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bouncycastle.crypto.tls.AlertLevel;

import com.km.model.Music;
import com.km.model.User;
import com.km.service.MusicService;
import com.km.util.JdbcUtil;
@WebServlet("/MusicServlet")
public class MusicServlet extends BaseServlet {
	private MusicService service=new MusicService();
	//登录验证
	public void checkLogin(HttpServletRequest request,HttpServletResponse response){
		JdbcUtil jdbc=new JdbcUtil();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		String sql="select * from tb_users where username='"+username+"' and password='"+password+"'";
		ResultSet rs=jdbc.executeQuery(sql); 
		try {
			if(rs.next()){
				String sex=rs.getString(6);
				String birthday=rs.getString(7);
				String address=rs.getString(8);
				if(birthday!=null){		
					int b=birthday.indexOf("-");
					String year=birthday.substring(0, b);
					String month=birthday.substring(b+1);
					System.out.println(year+"=="+month);
					request.getSession().setAttribute("year", year);
					request.getSession().setAttribute("month", month);
				}
				if(address!=null){
					int i=address.indexOf("-");
					String province=address.substring(0, i);
					String city=address	.substring(i+1)	;
					System.out.println(province+"=="+city);
					request.getSession().setAttribute("province", province);
					request.getSession().setAttribute("city", city);
				}
				request.getSession().setAttribute("sex", sex);
				request.getSession().setAttribute("head_img",rs.getString(4) );
				request.getSession().setAttribute("introduce",rs.getString(5) );
				request.getSession().setAttribute("username", username);
				request.getSession().setAttribute("password", password);
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}else{
				request.setAttribute("flag", "用户名或密码错误，请重新输入");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//注册并向数据库添加信息
	public void insertUser(HttpServletRequest request,HttpServletResponse response){
		//设置请求的编码格式
		try {
			request.setCharacterEncoding("UTF-8");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String tel = request.getParameter("tel");
			User user=new User();
			user.setUsername(username);
			user.setPassword(password);
			user.setTel(tel);
			service.insertUser(user);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			}
	}
	//查询歌曲
	public void queryMusic(HttpServletRequest request,HttpServletResponse response){
		String name=request.getParameter("name");
		String author=request.getParameter("author");
		Music music=new Music();
		music.setName(name);
		music.setAuthor(author);
		List musics=service.queryMusic(music);
		request.setAttribute("musics", musics);//将musics放在request中
		try {
			//将当前页码传给主页
			request.getRequestDispatcher("query.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
