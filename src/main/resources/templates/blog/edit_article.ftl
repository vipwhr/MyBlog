<!DOCTYPE html>
<html>
<head>
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
                <label for="title">概述</label>
            </div>
        </div>
        <div class="row">
            <div id="editor" class="col s8 offset-s2">
                <p>请输入文章内容</p>
            </div>
        </div>
        <div class="row">
            <div class="col s2 offset-s9">
                <button id="btn2" class="btn waves-effect waves-light" type="submit" name="action">提交
                </button>
            </div>
        </div>

</div>

<script type="text/javascript" src= "${request.contextPath}/util/wangEditor.min.js"></script>
<script type="text/javascript">
    var E = window.wangEditor;
    var editor = new E('#editor');
    // 或者 var editor = new E( document.getElementById('editor') )
    editor.create();

    document.getElementById('btn2').addEventListener('click', function () {
        // 读取 text
        alert(editor.txt.html())
    }, false)
</script>
<#include "../footer.ftl">
</body>
</html>