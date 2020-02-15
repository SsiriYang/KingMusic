package com.km.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.km.model.Music;
import com.km.model.User;
import com.km.util.CommonUtil;
import com.km.util.JdbcUtil;



public class MusicDao {
	private JdbcUtil jdbc=new JdbcUtil();
		public List queryMusic(Music music){
			String sql="select * from tb_music where 1=1";
			
			if(music.getName()!=null && !music.getName().equals("")){
				sql+=" and name like '%"+music.getName()+"%'";}
			if(music.getAuthor()!=null && !music.getAuthor().equals("")){
				sql+=" and author like '%"+music.getAuthor()+"%'";
			}
			sql+=" limit "+(music.getPageindex()-1)*CommonUtil.pageSize+","+CommonUtil.pageSize+"";;
			ResultSet rs=jdbc.executeQuery(sql);//传递sql语句
			List list=new ArrayList();//创建一个集合存放查询出来的歌曲
			try {
				while(rs.next()){
					Music msc=new Music();
					msc.setName(rs.getString(1));
					msc.setAuthor(rs.getString(2));
					list.add(msc);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return list;
		}
		public void insertUser(User user) {
			String sql="insert into tb_users (username,password,tel) values(?,?,?)";
			jdbc.executeUpdate(sql,user.getUsername(),user.getPassword(),user.getTel());
		
		}
		public int queryAllCount() {
			String sql="select count(*) from tb_music";
			ResultSet rs=jdbc.executeQuery(sql);
			int totalCount=0;
			try {
				rs.next();
				totalCount=rs.getInt(1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return totalCount;
		}
			

}
