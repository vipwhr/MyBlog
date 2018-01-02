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
<nav>
    <div class="nav-wrapper grey darken-3">
        <a href="${request.contextPath}/index" class="brand-logo"> <i class="fa fa-delicious fa-1x" aria-hidden="true" style="color: #F1F1F1;margin-right: 8px;margin-left: 8px"></i>Adrian's Blog</a>
        <ul id="nav-mobile" class="right">
            <li><input placeholder="搜索文章" id="first_name" type="text" class="validate"></li>
            <li><a><i class="material-icons">search</i></a></li>
        </ul>
    </div>
</nav>
<script type="text/javascript" src="${request.contextPath}/project/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${request.contextPath}/materialize/js/materialize.js"></script>
</body>
</html>