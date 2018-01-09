/**
 * Created by Adrian on 2017/9/7.
 */

var data = {
    pageNumber: 1,
    pageSize:5
}
DrawPage(ctx+"/blog/page","blogsArea",JSON.stringify(data));

function articleInfo(blogId){
    window.location.href = ctx + "/blog/detail?blogId=" + blogId;
}