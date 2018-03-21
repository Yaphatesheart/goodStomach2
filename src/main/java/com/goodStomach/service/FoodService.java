package com.goodStomach.service;

import com.goodStomach.entity.Food;

import java.util.List;

public interface FoodService {
	//	ApplicationContext ac=
//			new ClassPathXmlApplicationContext(
//					"com/kai/db/mybatis/mybatis1.xml");
//	FoodMapper fd = (FoodMapper) ac.getBean("foodDao");
//
//	public void addOne(Food food){
//		fd.addOne(food);
//	}
//
//	public void deleteOne(Long id){
//		fd.deleteOne(id);
//	}
//
//	public void updateOne(Food food){
//		fd.updateOne(food);
//	}
//
//	public List<Food> selectAll(){
//		List<Food> list = fd.selectAll();
//		return list;
//	}
//
//	public Food selectById(Long id){
//		Food food = fd.selectById(id);
//		return food;
//	}
//
//	public List<Food> selectByKind(Long k_id){
//		List<Food> list = fd.selectByKind(k_id);
//		return list;
//	}

	void addOne(Food food);

	void deleteOne(Long id);

	void updateOne(Food food);

	List<Food> selectAll();

	Food selectById(Long id);

	List<Food> selectByKind(Long k_id);
}
