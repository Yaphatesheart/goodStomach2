package com.goodStomach.dao;

import com.goodStomach.entity.Food;

import java.util.List;

public interface FoodMapper {

    public void addOne(Food food);

    public void deleteOne(Long id);

    public void updateOne(Food food);

    public List<Food> selectAll();

    public Food selectById(Long id);

    public List<Food> selectByKind(Long k_id);
}
