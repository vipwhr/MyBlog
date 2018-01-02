package com.blog.controller.blog;

import com.blog.config.Constant;
import com.blog.entity.PageEntity;
import com.blog.entity.blog.BlogEntity;
import com.blog.entity.blog.BlogComment;
import com.blog.service.blog.BlogCommentService;
import com.blog.service.blog.BlogService;
import com.blog.utils.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Adrian on 2017/9/7.
 */

@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    BlogService blogService;

    @Autowired
    BlogCommentService blogCommentService;

    @RequestMapping(value = "/detail/{blogId}",method = RequestMethod.GET)
    public String blogDetail(Model model, @PathVariable("blogId") int blogId){
        BlogEntity blog = blogService.getBlogById(blogId);
        model.addAttribute("blog",blog);
        return "blog/article";
    }


    @RequestMapping(value = "/addComment",method = RequestMethod.POST)
    @ResponseBody
    public JsonResult addComment(BlogComment blogComment){
        int commentId = blogCommentService.addBlogComment(blogComment);
        if(commentId > 0){
            return new JsonResult(Constant.FAIL,"OK",null);
        }else{
            return new JsonResult(Constant.FAIL,"GG",null);
        }
    }

    @RequestMapping(value = "/page",method = RequestMethod.POST)
    @ResponseBody
    public JsonResult page(Model model,int pageNumber,int pageSize){
        List<BlogEntity> articleList = blogService.getBlog(pageNumber, pageSize,null);
        JsonResult result = new JsonResult(Constant.SUCCESS,"SUCCESS",articleList);
        return result;
    }
}
