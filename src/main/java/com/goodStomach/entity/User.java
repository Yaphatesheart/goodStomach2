package com.goodStomach.entity;

import java.io.Serializable;

public class User implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
	private Long id;//id
	private String username;//用户名
	private String password;//密码
	private String phone;//手机号码
	private String address;//地址信息
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	
	
	public User(Long id, String username, String password, String phone, String address) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.phone = phone;
		this.address = address;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", phone=" + phone
				+ ", address=" + address + "]";
	}
	
	
}
