package com.blog.entity.blog;

import com.blog.entity.PageEntity;
import lombok.Data;

import java.sql.Timestamp;

@Data
public class BlogEntity extends PageEntity{

    private int id;
    private String title;
    private String foreword;
    private String content;
    private Timestamp ctime;
    private long creater;
    private Timestamp mtime;
    private long updater;
    private int isvalid;

    //非数据库字段
    private String createrName;
}
