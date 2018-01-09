
$(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal').modal({
        dismissible: true, // Modal can be dismissed by clicking outside of the modal
        opacity: .6, // Opacity of modal background
        in_duration: 300, // Transition in duration
        out_duration: 200, // Transition out duration
        starting_top: '20%', // Starting top style attribute
        ending_top: '10%', // Ending top style attribute
        ready: function(modal, trigger) {
            //创建时候的操作
            console.log(modal, trigger);
        },
        complete: function() {
            //关闭操作
        } // Callback for Modal close

    });
});

$("#newArticle").on("click",function () {
    window.location.href = ctx+"/blog/addBlog";
})

