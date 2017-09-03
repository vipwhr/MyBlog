package com.blog.service.blog;

import com.blog.entity.blog.Article;

import java.util.List;

public interface ArticleService {

    List<Article> getArticle(int pageNumber,int pageSize,String title);

}
