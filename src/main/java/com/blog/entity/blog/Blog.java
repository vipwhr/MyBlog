package com.blog.entity.blog;

import com.blog.entity.PageEntity;

import java.sql.Timestamp;

public class Blog extends PageEntity{

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

    public String getCreaterName() {
        return createrName;
    }

    public void setCreaterName(String createrName) {
        this.createrName = createrName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getForeword() {
        return foreword;
    }

    public void setForeword(String foreword) {
        this.foreword = foreword;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getCtime() {
        return ctime;
    }

    public void setCtime(Timestamp ctime) {
        this.ctime = ctime;
    }

    public long getCreater() {
        return creater;
    }

    public void setCreater(long creater) {
        this.creater = creater;
    }

    public Timestamp getMtime() {
        return mtime;
    }

    public void setMtime(Timestamp mtime) {
        this.mtime = mtime;
    }

    public long getUpdater() {
        return updater;
    }

    public void setUpdater(long updater) {
        this.updater = updater;
    }

    public int getIsvalid() {
        return isvalid;
    }

    public void setIsvalid(int isvalid) {
        this.isvalid = isvalid;
    }
}
