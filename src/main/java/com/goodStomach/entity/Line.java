package com.goodStomach.entity;

import java.io.Serializable;

public class Line implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long id;
	private Integer num;
	/**
	 * 关联关系 -- 多对一  对应一个订单
	 * */
	private Order order;
	/**
	 * 关联关系 -- 多对一  对应一类食物
	 * */
	private Food food;
	private Long u_id;
	private String name;
	private Double price;
	private Long f_id;
	private String orderDate;
	public Line() {
		// TODO Auto-generated constructor stub
	}
	public Line(Long id, Integer num) {
		super();
		this.id = id;
		this.num = num;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public Food getFood() {
		return food;
	}
	public void setFood(Food food) {
		this.food = food;
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
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Long getF_id() {
		return f_id;
	}
	public void setF_id(Long f_id) {
		this.f_id = f_id;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	
}
