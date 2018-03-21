package com.goodStomach.service;

import com.goodStomach.entity.User;

import java.util.List;

public interface UserService {

    User selectByName(String name);

    void insertOne(User user);

    void deleteOne(Long id);

    List<User> selectAll();


}
