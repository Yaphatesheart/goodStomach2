package com.goodStomach.entity;

import java.io.Serializable;

public class SomeMessage implements Serializable {

	private static final long serialVersionUID = 1L;

	private String orderDate;
	private Long U_id;
	
	public SomeMessage() {
		// TODO Auto-generated constructor stub
	}
	public SomeMessage(String orderDate, Long u_id) {
		super();
		this.orderDate = orderDate;
		U_id = u_id;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public Long getU_id() {
		return U_id;
	}
	public void setU_id(Long u_id) {
		U_id = u_id;
	}
	
}
