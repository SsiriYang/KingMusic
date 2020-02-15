package com.km.model;

public class User {
	private String username;
	private String password;
	private String tel;
	private String head;
	private String introduce;
	private String sex;
	private String birthday;
	private String address;
	
	
	public User() {
		super();
	}
	public User(String username, String password, String tel, String head, String introduce, String sex,
			String birthday, String address) {
		super();
		this.username = username;
		this.password = password;
		this.tel = tel;
		this.head = head;
		this.introduce = introduce;
		this.sex = sex;
		this.birthday = birthday;
		this.address = address;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	

}
