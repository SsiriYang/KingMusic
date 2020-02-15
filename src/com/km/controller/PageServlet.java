package com.km.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.km.model.Music;
import com.km.service.MusicService;


/**
 * Servlet implementation class BookServlet
 */
@WebServlet("/PageServlet")
public class PageServlet extends BaseServlet {
	private MusicService service=new MusicService();

	//查询所有图书
	public void queryMusic(HttpServletRequest request,HttpServletResponse response){
		int pageindex=1;//页码
		String index=request.getParameter("pageindex");
		if(index!=null){
			pageindex=Integer.parseInt(index);//将string页码转为int
			
		}
		
		//获取查询条件
		String name=request.getParameter("name");
		Music music=new Music();
		music.setName(name);
		music.setPageindex(pageindex);
		int totalPage=service.getAllCount();
		List musics=service.queryMusic(music);
		request.setAttribute("musics", musics);//将musics放在request中
		try {
			//将当前页码传给book.jsp
			request.setAttribute("pageindex", pageindex);
			request.setAttribute("totalPage", totalPage);
			request.getRequestDispatcher("query.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	//查询指定id或name的图书
	public void queryMusic2(HttpServletRequest request,HttpServletResponse response){
		Music music=new Music();
		music.setPageindex(1);
		List musics=service.queryMusic(music);
		
		request.setAttribute("musics", musics);//将books放在request中
		try {
			request.getRequestDispatcher("query.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

/*	public void updateBook(HttpServletRequest request,HttpServletResponse response){
		Book book=new Book();
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String author=request.getParameter("author");
		String price=request.getParameter("price");
		String des=request.getParameter("des");
		book.setId(id);
		book.setName(name);
		book.setAuthor(author);
		book.setPrice(Double.parseDouble(price));//将字符串转double类型
		book.setDes(des);
		Conversion.convert(book, request);
		service.updateBook(book);
		queryBook2(request,response);
	}*/
	

}
