package com.blog.service.blog;

import com.blog.entity.blog.BlogEntity;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.junit.Test;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringRunner.class)
@SpringBootTest()
@WebAppConfiguration
public class UnitTest {

    @Autowired
    BlogService blogService;

    @Test
    public void test(){
        BlogEntity blogEntity = new BlogEntity();
        blogEntity.setContent("content test");
        blogEntity.setTitle("title test");
        blogEntity.setForeword("foreword test");
        blogService.insertBlog(blogEntity);
    }
}