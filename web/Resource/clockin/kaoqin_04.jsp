<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 联系人</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">

    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/style.min.css?v=4.0.0" rel="stylesheet">
    <base target="_blank">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-4 ">
            <div class="btn-group hidden-xs" id="exampleToolbar" role="group">
                <button type="button" class="btn btn-outline btn-default" data-toggle="modal" data-target="#myModal">
                    <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                </button>
                <button type="button" class="btn btn-outline btn-default">
                    <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>
                </button>
                <button type="button" class="btn btn-outline btn-default">
                    <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                </button>
                <br>
                <div class="modal inmodal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content animated bounceInRight">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                                        class="sr-only">关闭</span>
                                </button>

                                <h4 class="modal-title">添加优秀员工</h4>

                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>工号</label> <input id="workerId" type="text" placeholder="请输入员工号/"
                                                             class="form-control">

                                </div>
                                <div class="form-group">
                                    <label>荣誉</label>
                                    <div id="honor" class="form-group">
                                        <%--                                        <label>第一</label>--%>
                                    </div>
                                    <select id="praises" class="btn btn-default">
                                        <option>全勤奖</option>
                                        <option>三好员工</option>
                                        <option>创新引领者</option>
                                    </select>
                                    <a class="btn btn-default" onclick="addHonor()"><i
                                            class="glyphicon glyphicon-plus"></i></a>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary" onclick="saveHonor()">保存</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <br>
    <br>
    <div class="row">
        <c:forEach items="${excellence}" var="e" varStatus="vs">
        <div class="col-sm-4">
            <div class="contact-box">
                <div class="ibox-title">
                    <div class="ibox-tools">
                        <a class="close-link" onclick="deleteThisRow(this)" data-id="${e.excellentStaffId}">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>

                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="../img/a2.jpg">
                            <div class="m-t-xs font-bold">CTO</div>
                        </div>
                    </div>

                    <div class="col-sm-8">
                        <h3><strong>${e.user.userName}</strong></h3>
                        <p><i class="fa fa-map-marker"></i> ${e.user.departmentObj.departmentName}</p>
                        <address>
                            <strong>荣誉</strong><br>
                            ${e.excellrntReason}
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        </c:forEach>
    </div>
</div>
<script src="../js/jquery.min.js?v=2.1.4"></script>
<script src="../js/bootstrap.min.js?v=3.3.5"></script>
<script src="../js/content.min.js?v=1.0.0"></script>
<script src="../js/json2.js"></script>
<script src="../iwork_js/kaoqin_c.js"></script>
<script>
    $(document).ready(function () {
        $(".contact-box").each(function () {
            animationHover(this, "pulse")
        })
    });
    // $(document).ready(function () {
    //
    //     $(".ibox-title").hide();
    // });
</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>