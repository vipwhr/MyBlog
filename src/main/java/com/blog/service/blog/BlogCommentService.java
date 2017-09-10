package com.blog.service.blog;

import com.blog.entity.blog.BlogComment;

public interface BlogCommentService {

    /**
     * 增加一条评论
     * @param param
     * @return
     */
    int addBlogComment(BlogComment param);

}
