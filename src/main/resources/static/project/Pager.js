function DrawPage(url, id, param) {
    console.log(url)
    var paramObj = JSON.parse(param);
    var nowPageNumber = paramObj.pageNumber;
    $.ajax({
        url: url,
        type: "post",
        datatype: "JSON",
        data: paramObj,
        success: function (data) {
            if (data.status == 1) {
                //绘制信息展示部分
                rows = data.rows;
                var pageData = "";
                for (var i = 0; i < rows.length; i++) {
                    pageData += "<div class='row'><a href=" + ctx + "/blog/detail/" + rows[i].id + "><h5>" + rows[i].title
                        + "</h5></a><p>" + rows[i].foreword + "</p><div class='divider'></div></div>";
                }
                $("#" + id + " .pageData").html(pageData);
                //绘制分页部分
                //var pageInfo = "<ul class='pagination right-align'><li class='disabled'><a href='#!'><i class='material-icons'>chevron_left</i></a></li>";
                var pageInfo = "<ul class='pagination right-align'>";
                for (var j = 1; j < data.rows[0].total / paramObj.pageSize + 1; j++) {

                    if (j == nowPageNumber) {
                        //pageInfo += "<li class='active'><a onclick=DrawPage('" + url + "','" + id + "'," + param + ")>" + j + "</a></li>";
                        paramObj.pageNumber = j;
                        param = JSON.stringify(paramObj);
                        pageInfo += `<li class='active'><a onclick=DrawPage('${url}','${id}','${param}')>${j}</a></li>`;
                    } else {
                        //pageInfo+="<li class='waves-effect'><a onclick=DrawPage('"+url+"','"+id+"',"+param +")>"+j+"</a></li>";
                        paramObj.pageNumber = j;
                        param = JSON.stringify(paramObj);
                        pageInfo += `<li class='waves-effect'><a onclick=DrawPage('${url}','${id}','${param}')>${j}</a></li>`;
                    }
                }
                //pageInfo += "<li class='waves-effect'><a href='#!'><i class='material-icons'>chevron_right</i></a></li>";
                pageInfo += "</ul>";
                $("#" + id + " .pageInfo").html(pageInfo);
            } else {
                alert("数据不正常！");
            }
        }
    })
}