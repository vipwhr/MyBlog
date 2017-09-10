package com.blog.controller.blog;

import com.blog.entity.blog.Blog;
import com.blog.entity.blog.BlogComment;
import com.blog.service.blog.BlogCommentService;
import com.blog.service.blog.BlogService;
import com.blog.utils.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Adrian on 2017/9/7.
 */

@Controller
public class BlogController {

    @Autowired
    BlogService blogService;

    @Autowired
    BlogCommentService blogCommentService;

    @RequestMapping(value = "/blog/detail",method = RequestMethod.GET)
    public String blogDetail(Model model, int blogId){
        Blog blog = blogService.getBlogById(blogId);
        model.addAttribute("blog",blog);
        return "blog/article";
    }


    @RequestMapping(value = "/blog/addComment",method = RequestMethod.POST)
    @ResponseBody
    public JsonResult addComment(BlogComment blogComment){
        int commentId = blogCommentService.addBlogComment(blogComment);
        if(commentId > 0){
            return new JsonResult(-1,"OK",null);
        }else{
            return new JsonResult(-1,"GG",null);
        }
    }
}
