package com.blog.dao;

import com.blog.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {

    User getUser(User param);

}
