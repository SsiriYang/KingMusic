package com.km.model;

public class Music {
	private String name;
	private String author;
	private String type;
	private String url;
	private int pageindex;
	
	public Music() {
		super();
	}
	
	
	public Music(String name, String author, String type, String url, int pageindex) {
		super();
		this.name = name;
		this.author = author;
		this.type = type;
		this.url = url;
		this.pageindex = pageindex;
	}


	public int getPageindex() {
		return pageindex;
	}
	public void setPageindex(int pageindex) {
		this.pageindex = pageindex;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	
}
