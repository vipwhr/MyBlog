package com.blog.service.blog.impl;

import com.blog.dao.blog.BlogCommentDao;
import com.blog.entity.blog.BlogComment;
import com.blog.service.blog.BlogCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BlogCommentServiceImpl implements BlogCommentService {

    @Autowired
    private BlogCommentDao blogCommentDao;


    @Override
    public int addBlogComment(BlogComment param) {
        return blogCommentDao.addBlogComment(param);
    }
}
