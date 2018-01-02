package com.blog.service.blog.impl;

import com.blog.dao.blog.BlogDao;
import com.blog.entity.blog.BlogEntity;
import com.blog.service.blog.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogDao blogDao;

    @Override
    public List<BlogEntity> getBlog(int pageNumber, int pageSize, String title) {
        BlogEntity param = new BlogEntity();
        param.setStart((pageNumber-1)*pageSize);
        param.setRows(pageSize);
        param.setTitle(title);
        return blogDao.page(param);
    }

    @Override
    public BlogEntity getBlogById(int blogId) {
        BlogEntity param = new BlogEntity();
        param.setId(blogId);
        return blogDao.getBlogById(param);
    }
}
