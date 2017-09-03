package com.blog.dao.system;

import com.blog.entity.system.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    User getUser(User param);
}
