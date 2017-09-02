$("#login").click(function(){

    var data = {
        name : $("#userName").val(),
        password : $("#password").val()
    }

    $.ajax({
        type: "post",
        dataType: "json",
        url: ctx+'doLogin',
        data: data,
        success: function (data) {
            if(data.status > 0){
                alert("登录成功！"+data.rows.type);
            }else{
                alert("完犊子");
            }

        }
    })
})