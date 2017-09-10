$("#submitComment").on("click",function(){

    data={
        blogId : blogId,
        commentContent : $("#commentContent").val()
    }


    $.ajax({
        type: "post",
        dataType: "json",
        url: ctx+'/blog/addComment',
        data: data,
        success: function (data) {
            alert(data.message);
        }
    })
})


