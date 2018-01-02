package com.blog.utils;

import lombok.Data;

@Data
public class JsonResult {

    private int status;
    private String message;
    private Object rows;

    public static JsonResult SUCCESS_RESULT = new JsonResult(1,"SUCCESS",null);
    public static JsonResult FAIL_RESULT = new JsonResult(-1,"FAIL",null);

    public JsonResult(int status,String message,Object rows){
        this.status = status;
        this.message = message;
        this.rows = rows;
    }

}
