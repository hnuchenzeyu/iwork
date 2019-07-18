<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 写信</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min.css?v=4.0.0" rel="stylesheet">
    <base target="_blank">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content">
    <div class="row">
        <div class="col-sm-12 animated fadeInRight">
            <div class="mail-box-header">
                <div class="pull-right tooltip-demo">
                    <a href="mailbox.html" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top"
                       title="存为草稿"><i class="fa fa-pencil"></i> 存为草稿</a>
                    <a href="mailbox.html" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="top"
                       title="放弃"><i class="fa fa-times"></i> 放弃</a>
                </div>
                <h2>
                    发布<!-- 标题：福利或相关活动 -->
                </h2>
            </div>
            <div class="mail-box">


                <div class="mail-body">

                    <form action="release_activity" class="form-horizontal" method="post">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">主题：</label>

                            <div class="col-sm-10">
                                <input type="text" id="title" name="title" class="form-control" value="">
                            </div>
                        </div>
                    </form>

                </div>

                <!--                    <div class="mail-text h-200" >-->
                <!--                        <div class="summernote">-->

                <!--                        </div>-->
                <!--                        <div class="clearfix"></div>-->
                <!--                    </div>-->
                <div class="mail-text h-200">
                    <div class="summernote"></div>
                    <div class="clearfix"></div>
                </div>

                <div class="mail-body text-right tooltip-demo">
                    <button class="btn btn-sm btn-primary" data-toggle="tooltip" data-placement="top"
                            title="Send" onclick="sendActivity()"><i class="fa fa-reply"></i> 发送
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
        $('.click2edit').summernote({focus: true});
    };
    var save = function () {
        var markup = $('.click2edit').code();
        // $('.click2edit').destroy();
    };
</script>
<script>
    // 上传福利
    function sendActivity() {
        var w_title = $("#title").val();
        var w_content = $(".summernote").code();
        if (w_title == "" || w_content == "") {
            alert("请输入完整标题和内容")
        } else {
            $.ajax({
                url: "addWelfare",
                type: "post",
                contentType: "application/json",
                data: JSON.stringify({
                    activityTitle: w_title,
                    activityContext: w_content
                }),
                success: function (result) {
                    window.location.href = "WelfareList";
                },
                error: function (result) {
                    alert("上传失败")
                }
            });
        }
    }
</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>