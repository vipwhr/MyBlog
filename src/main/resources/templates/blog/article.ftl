<!doctype html>
<html>
<head>
    <script>
        var ctx = "${request.contextPath}";
        var blogId = "${blog.id}";
    </script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Article</title>

    <link rel="icon" type="image/png" href="${request.contextPath}/assets/i/favicon.png">
    <link rel="stylesheet" href="${request.contextPath}/assets/css/amazeui.min.css">
    <link rel="stylesheet" href="${request.contextPath}/assets/css/app.css">
</head>

<body id="blog-article-sidebar">

<!-- content srart -->
<div class="am-g am-g-fixed blog-fixed blog-content">
    <div class="am-u-sm-12">
        <article class="am-article blog-article-p">
            <div class="am-article-hd">
                <h1 class="am-article-title blog-text-center">${blog.title}</h1>
                <p class="am-article-meta blog-text-center">
                    <span><a href="#">@${blog.createrName} &nbsp;</a></span>-
                    <span><a href="#">${blog.ctime}</a></span>
                </p>
            </div>
            <div class="am-article-bd">
                <img src="${request.contextPath}/assets/i/f18.jpg" alt="" class="blog-entry-img blog-article-margin">
                <p class="class="am-article-lead"">
                    ${blog.content}
                </p>
            </div>
        </article>

        <div class="am-g blog-article-widget blog-article-margin">
            <div class="am-u-lg-4 am-u-md-5 am-u-sm-7 am-u-sm-centered blog-text-center">
                <span class="am-icon-tags"> &nbsp;</span><a href="#">标签</a> , <a href="#">TAG</a> , <a href="#">Article</a>
                <hr>
                <a href=""><span class="am-icon-qq am-icon-fw am-primary blog-icon"></span></a>
                <a href=""><span class="am-icon-wechat am-icon-fw blog-icon"></span></a>
                <a href=""><span class="am-icon-weibo am-icon-fw blog-icon"></span></a>
            </div>
        </div>

        <hr>
        <div class="am-g blog-author blog-article-margin">
            <div class="am-u-sm-3 am-u-md-3 am-u-lg-2">
                <img src="${request.contextPath}/assets/i/user.jpg" alt="" class="blog-author-img am-circle">
            </div>
            <div class="am-u-sm-9 am-u-md-9 am-u-lg-10">
                <h3><span>作者 &nbsp;: &nbsp;</span><span class="blog-color">Adrian</span></h3>
                <p>To the world you may be one person, but to one person you may be the world.</p>
            </div>
        </div>
        <hr>

        <div class="am-g blog-author blog-article-margin">
            <div class="am-u-sm-9 am-u-md-9 am-u-lg-10">
                <h3><span>作者 &nbsp;: &nbsp;</span><span class="blog-color">Adrian</span></h3>
                <p>To the world you may be one person, but to one person you may be the world.</p>
            </div>
        </div>
        <hr>

        <ul class="am-pagination blog-article-margin">
            <li class="am-pagination-prev"><a href="#" class="">&laquo; 一切的回顾</a></li>
            <li class="am-pagination-next"><a href="">不远的未来 &raquo;</a></li>
        </ul>

        <hr>




        <form class="am-form am-g" onsubmit="return false;">
            <h3 class="blog-comment">评论</h3>
            <fieldset>
                <div class="am-form-group am-u-sm-4 blog-clear-left">
                    <input type="text" class="" placeholder="名字">
                </div>
                <div class="am-form-group am-u-sm-4">
                    <input type="email" class="" placeholder="邮箱">
                </div>

                <div class="am-form-group am-u-sm-4 blog-clear-right">
                    <input type="password" class="" placeholder="网站">
                </div>

                <div class="am-form-group">
                    <textarea id="commentContent" class="" rows="5" placeholder="一字千金"></textarea>
                </div>

                <p><button id="submitComment" class="am-btn am-btn-default">发表评论</button></p>
            </fieldset>
        </form>

        <hr>
    </div>
</div>
<!-- content end -->

<#include "${request.contextPath}/footer.ftl"/>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>

<script src="${request.contextPath}/assets/js/amazeui.min.js"></script>
<script src="${request.contextPath}/project/blog/blog_info.js"></script>
</body>
</html>