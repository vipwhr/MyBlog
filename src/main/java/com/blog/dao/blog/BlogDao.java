package com.blog.dao.blog;

import com.blog.entity.blog.Blog;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface BlogDao {

    /**
     * 根据文章内容，页码，模糊查询文章
     * @param param
     * @return
     */
    List<Blog> getBlog(Blog param);

    /**
     * 根据文章id获取文章详细信息
     * @param blogId
     * @return
     */
    Blog getBlogById(Blog param);
}
