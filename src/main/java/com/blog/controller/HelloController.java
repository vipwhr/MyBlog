package com.blog.controller;

import com.blog.entity.system.User;
import com.blog.service.system.UserService;
import com.blog.utils.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/hello",method = RequestMethod.GET)
    public String hello(){
        return "/user/hello";
    }

    @RequestMapping(value = "/doLogin",method = RequestMethod.POST)
    @ResponseBody
    public JsonResult doLogin(User user){
        User result = userService.userLogin(user.getName(),user.getPassword());
        if(result == null){
            return new JsonResult(-1,"No such User",null);
        }

        return new JsonResult(1,"Login success",result);
    }

}
