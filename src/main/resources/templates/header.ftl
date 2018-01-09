<!DOCTYPE html>
<html>
<head>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="${request.contextPath}/materialize/css/materialize.css" media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="${request.contextPath}/project/font-awesome.min.css" media="screen,projection"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>

<body>
<script>
    var ctx = "${request.contextPath}";
</script>
<div class="navbar-fixed">
    <nav>
        <div class="nav-wrapper grey darken-3">
            <a href="${request.contextPath}/index" class="brand-logo"> <i class="large  material-icons" aria-hidden="true" style="color: #F1F1F1;margin-right: 8px;margin-left: 8px">polymer</i>AdrainBlog</a>
            <ul id="nav-mobile" class="right">
                <li><a id="registry" data-target="modal1" class="btn waves-effect waves-light" name="action" href="#modal1">登录</a></li>
                <li><a id="newArticle" class="btn waves-effect waves-light" name="action">写文章</a></li>
                <li><input placeholder="搜索文章" id="first_name" type="text" class="validate"></li>
                <li><a><i class="material-icons">search</i></a></li>
            </ul>
        </div>
    </nav>
</div>
<div id="modal1" class="modal" style="width: 500px">
    <div class="modal-content">
        <div class="row">
            <div class="col s10 offset-s1">
                <h5>登录</h5>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s10 offset-s1">
                <input placeholder="请输入用户名" id="first_name" type="text" class="validate">
            </div>
        </div>
        <div class="row">
            <div class="input-field col s10 offset-s1">
                <input placeholder="请输入密码" id="password" type="password" class="validate">
            </div>
        </div>
    </div>
    <div class="row modal-footer">
        <div class="col s10 offset-s1">
            <a href="#!" class="modal-action modal-close btn waves-effect waves-light" style="width: 100%">登录</a>
        </div>

    </div>
</div>
<script type="text/javascript" src="${request.contextPath}/project/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${request.contextPath}/materialize/js/materialize.js"></script>
<script type="text/javascript" src="${request.contextPath}/project/header.js"></script>
</body>
</html>