package com.goodStomach.dao;


import com.goodStomach.entity.User;

import java.util.List;

public interface UserMapper {
    public User selectUserByName(String name);

    public void insertOne(User user);

    public List<User> selectAll();

    public void deleteById(Long id);
}
