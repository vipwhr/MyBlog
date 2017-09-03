package com.blog.controller.index;

import com.blog.entity.blog.Article;
import com.blog.service.blog.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/*
* 首页controller
*
* */
@Controller
public class IndexController {

    @Autowired
    private ArticleService articleService;

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(Model model){
        List<Article> articleList = articleService.getArticle(1,10,null);
        model.addAttribute("articleList",articleList);
        return "index" ;
    }

}
