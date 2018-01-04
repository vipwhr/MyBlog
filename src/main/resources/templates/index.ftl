<!DOCTYPE html>
<html>
<head>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="materialize/css/materialize.css" media="screen,projection"/>

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

</head>

<body>
<!--#include file="header.ftl" -->
<#include "header.ftl">
<div class="container">
    <div class="row"></div>
    <div class="row"></div>
    <div class="row">
        <div class="col s3">
            <div class="row">
                <div class="col s12">
                    <div class="card grey darken-3">
                        <div class="card-content white-text">
                            <span class="card-title">博主简介</span>
                            <p>Hello ~   I am Adrian</p>
                            <p>Welcome to my blog</p>
                        </div>
                        <div class="card-action">
                            <i class="fa fa-github-square fa-2x" aria-hidden="true" style="color: #F1F1F1;margin-right: 8px"></i>
                            <i class="fa fa-facebook-square fa-2x" aria-hidden="true" style="color: #F1F1F1;margin-right: 8px"></i>
                            <i class="fa fa-linkedin-square fa-2x" aria-hidden="true" style="color: #F1F1F1;margin-right: 8px"></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col s12">
                    <div class="card grey darken-3">
                        <div class="card-content white-text">
                            <span class="card-title">概况描述</span>
                            <p>哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈</p>
                        </div>
                        <div class="card-action">
                            <a href="#">This is a href but nothing</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s8 offset-l1">
            <div class="row">
                <h4>文章列表</h4>
                <div class="divider"></div>
            </div>
            <div id="blogsArea">
                <div class="pageData">

                </div>
                <div class="pageInfo">

                </div>
            </div>


        </div>

    </div>
</div>
<#include "footer.ftl">
<script type="text/javascript" src="${request.contextPath}/project/Pager.js"></script>
<script>
    var data = {
        pageNumber: 1,
        pageSize:5
    }
    DrawPage("${request.contextPath}/blog/page","blogsArea",JSON.stringify(data));
</script>
</body>
</html>