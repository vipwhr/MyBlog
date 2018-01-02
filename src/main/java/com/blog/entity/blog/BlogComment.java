package com.blog.entity.blog;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class BlogComment {
    private int id;
    private int blogId;
    private String commentContent;
    private Timestamp ctime;
    private int creater;
    private Timestamp mtime;
    private int updater;
    private int isvalid;
}
