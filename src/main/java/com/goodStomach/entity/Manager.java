package com.goodStomach.entity;

import java.io.Serializable;

public class Manager implements Serializable {

	private static final long serialVersionUID = 1L;
	private Long id;
	private String name;
	private String password;
	public Manager() {
		// TODO Auto-generated constructor stub
	}
	public Manager(Long id, String name, String password) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Manger [id=" + id + ", name=" + name + ", password=" + password + "]";
	}
	
}
