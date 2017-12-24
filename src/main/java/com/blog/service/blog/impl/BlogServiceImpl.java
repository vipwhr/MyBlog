package com.blog.service.blog.impl;

import com.blog.dao.blog.BlogDao;
import com.blog.entity.blog.Blog;
import com.blog.service.blog.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogDao blogDao;

    @Override
    public List<Blog> getBlog(int pageNumber, int pageSize, String title) {
        Blog param = new Blog();
        param.setStart((pageNumber-1)*pageSize);
        param.setRows(pageSize);
        param.setTitle(title);
        return blogDao.getBlog(param);
    }

    @Override
    public Blog getBlogById(int blogId) {
        Blog param = new Blog();
        param.setId(blogId);
        return blogDao.getBlogById(param);
    }
}
