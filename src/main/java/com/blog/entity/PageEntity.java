package com.blog.entity;

import lombok.Data;

@Data
public class PageEntity {

    //查询第几页
    private int pageNumber;
    //每页多少条
    private int pageSize;
    //经过计算后从第几行开始
    private int start;
    //需要查询多少行
    private int rows;
    //总条数
    private int total;
    //页中查询后的内容
    private Object object;

}
