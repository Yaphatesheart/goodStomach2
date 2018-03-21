package com.goodStomach.dao;

import com.goodStomach.entity.Manager;

public interface ManagerMapper {
    public Manager selectManagerByName(String name);
}
