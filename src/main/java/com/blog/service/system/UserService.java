package com.blog.service.system;

import com.blog.entity.system.User;

public interface UserService {

    User userLogin(String name,String password);

}
