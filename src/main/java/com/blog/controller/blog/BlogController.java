package com.blog.controller.blog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Adrian on 2017/9/7.
 */

@Controller
public class BlogController {

    @RequestMapping(value = "/blog/detail",method = RequestMethod.GET)
    public String blogDetail(Long blogId){
        return "blog/article";
    }


}
