package com.goodStomach.entity;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ShoppingCar implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Map<Long, Line> map = new HashMap<Long,Line>();
	/**
	 * 向购物车中添加产品
	 * 先判断购物车中有没有该产品的订单项目，如果有，在数量上做改变，
	 * 如果没有向map中添加
	 */
	
	public void add(Line line){
		if(map.containsKey(line.getFood().getId())){
			Line oldline = map.get(line.getFood().getId());
			oldline.setNum(oldline.getNum()+1);
		}else{
			line.setNum(1);
			map.put(line.getFood().getId(), line);
		}
	}
	
	/**
	 * 删除订单
	 * */
	public void delete(Long foodId){
		map.remove(foodId);
	}
	/**
	 * 获取价钱
	 * */
	public double getCost(){
		Set<Long> keySet = map.keySet();
		Iterator<Long> iter = keySet.iterator();
		double cost = 0.0;
		while(iter.hasNext()){
			Long key = iter.next();
			Line value = map.get(key);
			Integer num = value.getNum();
			double price = value.getFood().getPrice();
			double lineCost = num*price;
			cost += lineCost;
		}
		return cost;
	}
	/**
	 * 获取购物车中所有订单项
	 * List<Line>
	 * */
	public Map<Long, Line> getLines(){
		return map;
	}
	/**
	 * 清空购物车
	 * */
	public void clear(){
		map.clear();
	}
}
