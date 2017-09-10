package com.blog.service.blog;

import com.blog.entity.blog.Blog;

import java.util.List;

public interface BlogService {

    /**
     * 分页查询文章列表
     * @param pageNumber
     * @param pageSize
     * @param title
     * @return
     */
    List<Blog> getBlog(int pageNumber,int pageSize,String title);

    /**
     * 根据blog id获取详细的信息
     * @param blogId
     * @return
     */
    Blog getBlogById(int blogId);

}
