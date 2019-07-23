<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 社交</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <!-- 富文本编辑框 -->
    <link href="css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min.css?v=4.0.0" rel="stylesheet">
    <base target="_blank">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content  animated fadeInRight">
    <div class="row">

        <div class="col-sm-12">
            <div class="ibox">
                <div class="ibox-content ">
                    <div class="mail-box">
                        <div class="mail-text h-200">
                            <div class="summernote">
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="mail-body text-right tooltip-demo">
                            <button id="requestAdd" class="btn btn-sm btn-primary" data-toggle="tooltip"
                                    data-placement="top"
                                    title="Send"><i class="fa fa-reply"></i> 发送
                            </button>
                            <button class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top"
                                    title="Discard email"><i class="fa fa-times"></i> 放弃
                            </button>
                            <button class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top"
                                    title="Move to draft folder"><i class="fa fa-pencil"></i> 存为草稿
                            </button>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <c:forEach items="${Origins}" var="o">
                <div class="social-feed-box">
                    <div class="pull-right social-action dropdown">
                        <button data-toggle="dropdown" class="dropdown-toggle btn-white">
                            <i class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-menu m-t-xs">
                            <li><a onclick="deleteOrin(${o.activityId})">删除</a></li>
                        </ul>
                    </div>
                    <div class="social-avatar">
                        <a href="" class="pull-left">
                            <img alt="image" src="img/a1.jpg">
                        </a>
                        <div class="media-body">
                            <a href="#">
                                    ${o.user.userName}
                            </a>
                            <small class="text-muted">${o.activityCreateTime} 来自
                                <c:choose>
                                    <c:when test="${o.activityType==3}">创意</c:when>
                                    <c:when test="${o.activityType==4}">意见栏</c:when>
                                </c:choose>
                            </small>
                        </div>
                    </div>
                    <div class="social-body">
                        <p>
                                ${o.activityContext}
                        </p>

                        <div class="btn-group">
                            <button class="btn btn-white btn-xs"><i class="fa fa-thumbs-up"></i> 赞</button>
                            <button class="btn btn-white btn-xs"><i class="fa fa-comments"></i> 评论</button>
                            <button class="btn btn-white btn-xs"><i class="fa fa-share"></i> 分享</button>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<script src="js/jquery.min.js?v=2.1.4"></script>
<script src="js/json2.js"></script>
<script src="js/bootstrap.min.js?v=3.3.5"></script>
<script src="js/content.min.js?v=1.0.0"></script>
<script src="js/plugins/iCheck/icheck.min.js"></script>
<script src="js/plugins/summernote/summernote.min.js"></script>
<script src="js/plugins/summernote/summernote-zh-CN.js"></script>
<script>
    $(document).ready(function () {
        $(".i-checks").iCheck({checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green",});
        $(".summernote").summernote({lang: "zh-CN"})
    });
    var edit = function () {
        $(".click2edit").summernote({focus: true})
    };
    var save = function () {
        var aHTML = $(".click2edit").code();
        $(".click2edit").destroy()
    };
</script>
<script>
    $("#requestAdd").click(function () {
        sendOriginality(${requestURL});
    })
</script>
<script>
    function sendOriginality(URL) {
        var original = $('.summernote').code();
        if (original == "") {
            alert("内容不能为空")
        } else {
            $.ajax({
                url: URL,
                type: "post",
                data: {content: original},
                success: function (data) {
                    window.location.reload();
                },
                error: function (data) {
                    alert("上传失败");
                }
            });
        }
    }
</script>
<script>
    function deleteOrin(activityId) {
        $.ajax({
            url: "deleteActivityById",
            type: "post",
            data: {activityId: activityId},
            success: function () {
                window.location.reload();
            },
            error: function () {
                alert("删除失败！");
            }
        });
    }
</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>