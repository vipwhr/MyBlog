var E = window.wangEditor;
var editor = new E('#editor');
// 或者 var editor = new E( document.getElementById('editor') )
editor.create();

document.getElementById('submitArticle').addEventListener('click', function () {

    var data = {
        content : editor.txt.html(),
        title : $("#title").val(),
        foreword : $("#foreword").val()
    }

    $.ajax({
        url:ctx+"/blog/doAddBlog",
        type:"POST",
        data:data,
        dataType:"JSON",
        success:function (result) {
            alert(result.rows.id);
        }
    })

}, false)