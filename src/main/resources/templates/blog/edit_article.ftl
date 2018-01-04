<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
</head>
<script>

</script>
<body>
<#include "../header.ftl">
<div class="container">
    <div class="row">
        <div class="col s8 offset-s2">
            <h4>编辑您的文章</h4>
            <div class="divider"></div>
        </div>

    </div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row">
        <div class="input-field col s8 offset-s2">
            <input id="title" type="text" class="validate">
            <label for="title">标题</label>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s8 offset-s2">
            <input id="foreword" type="text" class="validate">
            <label for="foreword">概述</label>
        </div>
    </div>
    <div class="row">
        <div id="editor" class="col s8 offset-s2">
            <p>请输入文章内容</p>
        </div>
    </div>
    <div class="row">
        <div class="col s2 offset-s9">
            <button id="submitArticle" class="btn waves-effect waves-light" type="submit" name="action">提交
            </button>
        </div>
    </div>

</div>

<script type="text/javascript" src="${request.contextPath}/util/wangEditor.min.js"></script>
<script type="text/javascript" src="${request.contextPath}/project/blog/edit_article.js"></script>

</script>
<#include "../footer.ftl">
</body>
</html>