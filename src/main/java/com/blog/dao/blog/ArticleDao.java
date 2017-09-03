package com.blog.dao.blog;

import com.blog.entity.blog.Article;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ArticleDao {

    List<Article> getArticle(Article param);

}
