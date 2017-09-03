package com.blog.service.system.impl;

import com.blog.dao.system.UserDao;
import com.blog.entity.system.User;
import com.blog.service.system.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User userLogin(String name, String password) {
        User param = new User();
        param.setName(name);
        param.setPassword(password);
        return userDao.getUser(param);
    }
}
