package com.goodStomach.dao;


import com.goodStomach.entity.Order;

import java.util.List;

public interface OrderMapper {
    void addOrder(Order order);

    void deleteOrder(Long id);

    Order findById(Long id);

    List<Order> findAll();

    void updateOrder(Order order);
}
