package com.goodStomach.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Order implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long id;
	/**
	 * 价钱（总价）
	 * */
	private Double cost;
	private String orderDate;
	private Long u_id;
	private String name;
	private String state;
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	/**
	 * 关联关系 - 一对多 : 对应多个订单项
	 * */
	private Set<Line> lines = new HashSet<Line>();
	/**
	 * 关联关系 - 多对一 : 对应一个顾客
	 * */
	private User user;
	public Order() {
		// TODO Auto-generated constructor stub
	}
	public Order(Long id, Double cost, String orderDate) {
		super();
		this.id = id;
		this.cost = cost;
		this.orderDate = orderDate;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Double getCost() {
		return cost;
	}
	public void setCost(Double cost) {
		this.cost = cost;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public Set<Line> getLines() {
		return lines;
	}
	public void setLines(Set<Line> lines) {
		this.lines = lines;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Long getU_id() {
		return u_id;
	}
	public void setU_id(Long u_id) {
		this.u_id = u_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
