package com.blog.utils;

public class JsonResult {

    private int status;
    private String message;
    private Object rows;

    public JsonResult(int status,String message,Object rows){
        this.status = status;
        this.message = message;
        this.rows = rows;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getRows() {
        return rows;
    }

    public void setRows(Object rows) {
        this.rows = rows;
    }
}
