package com.km.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.km.model.Music;
import com.km.service.MusicService;
import com.km.util.JdbcUtil;
import com.mysql.jdbc.JDBC4CallableStatement;

@WebServlet("/PlayServlet")
public class PlayServlet extends HttpServlet {
	private JdbcUtil jdbc=new JdbcUtil();
	private MusicService service=new MusicService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
			String name=request.getParameter("name");
			System.out.println(name);
			String sql="select url from tb_music where name=?";
			
			ResultSet rs=jdbc.executeQuery(sql, name);
			List<Music> musics=new ArrayList<Music>();

				String url="";
				while(rs.next()){
					
					url+=rs.getString(1);
					
				}
				System.out.println(url);
				request.setAttribute("url",url);
				request.setAttribute("name",name);				
				
				
				//haha
				/*String name =(String) request.getAttribute("name");*/
				/*String names="陈奕迅 - 你给我听好";*/
				String fileName = getServletContext().getRealPath("lrc/"+name+".lrc");
				
				String s = readFileByLines(fileName);
				System.out.println(s+"====");
		        request.setAttribute("s", s);
		        request.getRequestDispatcher("km_player_plus.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	public static String readFileByLines(String fileName) {
        File file = new File(fileName);
        InputStreamReader reader = null;
        try {
            
            reader = new InputStreamReader(new FileInputStream(file),"utf-8");
            BufferedReader bufferedReader = new BufferedReader(reader);
            String tempString = null;
            String songs = "";
            // 一次读入一行，直到读入null为文件结束
            while ((tempString = bufferedReader.readLine()) != null) {
                // 显示行号	                
                 songs = songs+tempString+"\r\n";	                	                
            }
            System.out.println(songs);	            
            bufferedReader.close();
            return songs;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e1) {
                }
            }
            
        }
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
