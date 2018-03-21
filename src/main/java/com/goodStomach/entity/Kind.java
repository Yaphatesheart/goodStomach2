package com.goodStomach.entity;

import java.io.Serializable;

public class Kind implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;
	private String name;
	private String message;
	
	public Kind() {
		// TODO Auto-generated constructor stub
	}
	public Kind(Long id, String name, String message) {
		super();
		this.id = id;
		this.name = name;
		this.message = message;
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
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "Kind [id=" + id + ", name=" + name + ", message=" + message + "]";
	}
	
	
	
}
