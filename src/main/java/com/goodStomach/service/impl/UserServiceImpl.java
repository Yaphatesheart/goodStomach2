package com.goodStomach.service.impl;

import com.goodStomach.dao.UserMapper;
import com.goodStomach.entity.User;
import com.goodStomach.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public User selectByName(String name) {
        User user = userMapper.selectUserByName(name);
        return user;
    }

    public void insertOne(User user) {
        userMapper.insertOne(user);
    }

    public void deleteOne(Long id) {
        userMapper.deleteById(id);
    }

    public List<User> selectAll() {
        List<User> list = userMapper.selectAll();
        return list;
    }
}
