package com.blog.controller.index;

import com.blog.entity.blog.BlogEntity;
import com.blog.service.blog.BlogService;
import lombok.extern.slf4j.Slf4j;
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
@Slf4j
@Controller
public class IndexController {

    @Autowired
    private BlogService blogService;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String all(){
        log.debug("发生了一次重定向到index");
        return "redirect:/index" ;
    }

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(Model model){
        List<BlogEntity> articleList = blogService.getBlog(1,10,null);
        model.addAttribute("articleList",articleList);
        return "index" ;
    }
}
