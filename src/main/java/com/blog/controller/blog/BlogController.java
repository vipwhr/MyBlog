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

    /**
     * 添加文章的页面
     * @return
     */
    @RequestMapping(value = "/addBlog",method = RequestMethod.GET)
    public String addBlog(){
        return "blog/edit_article";
    }

    /**
     * 添加文章的操作
     * @return
     */
    @RequestMapping(value = "/doAddBlog",method = RequestMethod.POST)
    public String doAddBlog(BlogEntity blogEntity){
        if(blogService.insertBlog(blogEntity) > 0){
            return String.valueOf(new JsonResult(Constant.SUCCESS,"success",blogEntity));
        }else{
            return String.valueOf(new JsonResult(Constant.FAIL,"fail",null));
        }
    }

    @RequestMapping(value = "/addComment",method = RequestMethod.POST)
    @ResponseBody
    public JsonResult doAddComment(BlogComment blogComment){
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
