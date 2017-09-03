package com.blog.service.blog.impl;

import com.blog.dao.blog.ArticleDao;
import com.blog.entity.blog.Article;
import com.blog.service.blog.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ArticleServiceImpl implements ArticleService{

    @Autowired
    private ArticleDao articleDao;

    @Override
    public List<Article> getArticle(int pageNumber, int pageSize, String title) {
        Article param = new Article();
        param.setStart((pageNumber-1)*pageSize);
        param.setRows(pageSize);
        param.setTitle(title);
        return articleDao.getArticle(param);
    }
}
