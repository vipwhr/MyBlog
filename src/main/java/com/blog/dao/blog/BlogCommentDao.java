package com.blog.dao.blog;

import com.blog.entity.blog.BlogComment;
import org.springframework.stereotype.Repository;

@Repository
public interface BlogCommentDao {

    /**
     * 增加一条评论
     * @param param
     * @return
     */
    int addBlogComment(BlogComment param);

}
