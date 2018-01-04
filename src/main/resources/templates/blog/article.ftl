<!DOCTYPE html>
<html>
<head>
    <style>
        .container{
            margin-bottom: 80px;
        }
    </style>
</head>
<script>

</script>
<body>
<#include "../header.ftl">
<div class="container">

    <h2 class="center-align">${blog.title}</h2>
    <p class="center-align"><i class="fa fa-pencil" aria-hidden="true"></i>${blog.createrName}</p>
    <p class="center-align">${blog.ctime}</p>
    <div class="divider"></div>
    <p>${blog.foreword}</p>
    <div class="divider"></div>
    <p>${blog.content}</p>
</div>

<#include "../footer.ftl">

</body>
</html>