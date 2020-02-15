package com.km.service;

import java.util.List;

import com.km.dao.MusicDao;
import com.km.model.Music;
import com.km.model.User;

import com.km.util.CommonUtil;

public class MusicService {
	private MusicDao dao=new MusicDao();
	public List queryMusic(Music music){
		return dao.queryMusic(music);
	}
	public void insertUser(User user) {
		dao.insertUser(user);
	}
	public int getAllCount(){
		int totalCount = dao.queryAllCount();
		 int totalPage = totalCount%CommonUtil.pageSize==0?totalCount/CommonUtil.pageSize:totalCount/CommonUtil.pageSize+1;
		 return totalPage;
	}
}
