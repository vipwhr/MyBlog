<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>BLOG</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="icon" type="image/png" href="assets/i/favicon.png">
  <link rel="stylesheet" href="assets/css/amazeui.min.css">
  <link rel="stylesheet" href="assets/css/app.css">
</head>

<body id="blog">

<header class="am-g am-g-fixed blog-fixed blog-text-center blog-header">
    <div class="am-u-sm-8 am-u-sm-centered">
        <img width="200" src="${request.contextPath}assets/i/favicon.png" alt="Amaze UI Logo"/>
        <h2 class="am-hide-sm-only">Adrian BLOG</h2>
    </div>
</header>
<#--<hr>
<nav class="am-g am-g-fixed blog-fixed blog-nav">
<button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only blog-button" data-am-collapse="{target: '#blog-collapse'}" ><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="blog-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav">
      <li class="am-active"><a href="lw-index.html">首页</a></li>
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          首页布局 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="lw-index.html">1. blog-index-standard</a></li>         
          <li><a href="lw-index-nosidebar.html">2. blog-index-nosidebar</a></li>
          <li><a href="lw-index-center.html">3. blog-index-layout</a></li>
          <li><a href="lw-index-noslider.html">4. blog-index-noslider</a></li>
        </ul>
      </li>
      <li><a href="lw-article.html">标准文章</a></li>
      <li><a href="lw-img.html">图片库</a></li>
      <li><a href="lw-article-fullwidth.html">全宽页面</a></li>
      <li><a href="lw-timeline.html">存档</a></li>
    </ul>
    <form class="am-topbar-form am-topbar-right am-form-inline" role="search">
      <div class="am-form-group">
        <input type="text" class="am-form-field am-input-sm" placeholder="搜索">
      </div>
    </form>
  </div>
</nav>
<hr>-->

<!-- banner start -->
<div class="am-g am-g-fixed blog-fixed am-u-sm-centered blog-article-margin">
    <div data-am-widget="slider" class="am-slider am-slider-b1" data-am-slider='{&quot;controlNav&quot;:false}' >
    <ul class="am-slides">
        <#list articleList as article>
            <li>
                <img src="assets/i/b${article_index + 1}.jpg">
                <div class="blog-slider-desc am-slider-desc ">
                    <div class="blog-text-center blog-slider-con">
                        <h1 class="blog-h-margin"><a href="">${article.title}</a></h1>
                        <p>${article.foreword}</p>
                        <span>${article.ctime}</span>
                        <br><br><br><br><br><br><br>
                    </div>
                </div>
            </li>
        </#list>
    </ul>
    </div>
</div>
<!-- banner end -->

<!-- content srart -->
<div class="am-g am-g-fixed blog-fixed">
    <div class="am-u-md-12 am-u-sm-12">

        <#list articleList as article>
            <article class="am-g blog-entry-article">
                <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                    <img src="assets/i/f${article_index + 4}.jpg" alt="" class="am-u-sm-12">
                </div>
                <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                    <span><a href="" class="blog-color">Article &nbsp;</a></span>
                    <span> @${article.createrName} &nbsp;</span>
                    <span>${article.ctime}</span>
                    <h1><a href="">${article.title}</a></h1>
                    <p>${article.foreword}
                    </p>
                    <p><a href="" class="blog-continue">continue reading</a></p>
                </div>
            </article>
        </#list>
        <ul class="am-pagination">
  <li class="am-pagination-prev"><a href="">&laquo; Prev</a></li>
  <li class="am-pagination-next"><a href="">Next &raquo;</a></li>
</ul>
    </div>

</div>
<!-- content end -->
<#include "${request.contextPath}/footer.ftl"/>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="assets/js/amazeui.min.js"></script>
<!-- <script src="assets/js/app.js"></script> -->
</body>
</html>