<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 文章页面</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">

    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="css/plugins/summernote/summernote-bs3.css" rel="stylesheet">

    <link href="css/style.min.css?v=4.0.0" rel="stylesheet">
    <base target="_blank">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content  animated fadeInRight article">
    <div class="row">
        <div class="col-lg-10 col-lg-offset-1">
            <div class="ibox">
                <div class="ibox-content">
                    <div class="pull-right">
                        <button class="btn btn-white btn-xs" type="button">700BIKE</button>
                        <button class="btn btn-white btn-xs" type="button">BeginOne</button>
                        <button class="btn btn-white btn-xs" type="button">乐视超级自行车</button>
                    </div>
                    <div class="text-center article-title">
                        <h1>
                            ${article.activityTitle}
                        </h1>
                    </div>
                    ${article.activityContext}
                    <hr>

                    <div class="row">
                        <div class="col-lg-12">

                            <h2>评论：</h2>
                            <c:forEach items="${comments}" var="cmt">
                            <div class="social-feed-box">
                                <div class="social-avatar">
                                    <a href="" class="pull-left">
                                        <img alt="image" src="img/a1.jpg">
                                    </a>
                                    <div class="media-body">
                                        <a href="#">
                                            ${cmt.user.userName}
                                        </a>
                                        <small class="text-muted">${cmt.commentDate}</small>
                                    </div>
                                </div>
                                <div class="social-body">
                                    <p>
                                        ${cmt.content}
                                    </p>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h3>编辑评论</h3>
                                    <div class="ibox-tools">
                                        <a class="collapse-link">
                                            <i class="fa fa-chevron-up"></i>
                                        </a>
                                        <a class="dropdown-toggle" data-toggle="dropdown" href="form_editors.html#">
                                            <i class="fa fa-wrench"></i>
                                        </a>
                                        <ul class="dropdown-menu dropdown-user">
                                            <li><a href="form_editors.html#">选项1</a>
                                            </li>
                                            <li><a href="form_editors.html#">选项2</a>
                                            </li>
                                        </ul>
                                        <a class="close-link">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="ibox-content no-padding">

                                    <div class="summernote">
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <button class="btn btn-primary pull-right" type="button" onclick="sendComment()">
                                <i class="fa fa-check"></i>&nbsp;提交
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<script src="js/jquery.min.js?v=2.1.4"></script>
<script src="js/json2.js"></script>
<script src="js/bootstrap.min.js?v=3.3.5"></script>
<script src="js/content.min.js?v=1.0.0"></script>
<script src="js/plugins/summernote/summernote.min.js"></script>
<script src="js/plugins/summernote/summernote-zh-CN.js"></script>
<script>
    $(document).ready(function () {
        $(".summernote").summernote({lang: "zh-CN"})
    });
    var edit = function () {
        $("#eg").addClass("no-padding");
        $(".click2edit").summernote({lang: "zh-CN", focus: true})
    };
    var save = function () {
        $("#eg").removeClass("no-padding");
        var aHTML = $(".click2edit").code();
        $(".click2edit").destroy()
    };</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<script>
    function sendComment() {
        var comment = $('.summernote').code();
        var param = window.location.search;//?后的字符串
        param = param.split("=")[1];//获取id对应的值
        if (comment==""){
            alert("内容不能为空")
        }
        else{
            $.ajax({
                url:"addComment",
                type:"post",
                contentType: "application/json",
                data:JSON.stringify({
                    content: comment,
                    activityID: param
                }),
                success:function (data) {
                    window.location.reload();
                },
                error:function (data) {
                    alert("上传失败");
                }
            });
        }
    }
</script>
</body>

</html>
