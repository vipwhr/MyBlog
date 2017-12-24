package com.blog.utils;

import lombok.Data;

@Data
public class JsonResult {

    private int status;
    private String message;
    private Object rows;

    public JsonResult(int status,String message,Object rows){
        this.status = status;
        this.message = message;
        this.rows = rows;
    }

}
