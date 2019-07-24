<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <title>H+ 后台主题UI框架 - 主页</title>

    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <!--[if lt IE 8]>
    <meta http-equiv="refresh" content="0;ie.html"/>
    <![endif]-->

    <link rel="shortcut icon" href="favicon.ico">
    <link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/style.min.css?v=4.0.0" rel="stylesheet">
    <link href="../css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <style type="text/css">
        #box {

            height: 300px;
            overflow-x: hidden;
            overflow-y: scroll;
            line-height: 30px;
            text-align: center;
        }

        #box::-webkit-scrollbar {
            display: none;
        }
    </style>
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content">
    <ul id="myTab" class="nav nav-tabs">
        <li role="presentation" class="active"><a href="#home" data-toggle="tab">名单</a></li>
        <li role="presentation"><a href="#profile" data-toggle="tab">本日考勤情况</a></li>
        <li role="presentation"><a href="#statistic" data-toggle="tab">出勤统计</a></li>
    </ul>

    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="home">
            <div class="example-wrap">

                <div class="example">
                    <div class="btn-group hidden-xs" id="listToolbar" role="group">
                        <button type="button" class="btn btn-outline btn-default">
                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                        </button>
                        <button type="button" class="btn btn-outline btn-default">
                            <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>
                        </button>
                        <button type="button" class="btn btn-outline btn-default">
                            <i class="glyphicon glyphicon-trash" aria-hidden="true" onclick="deleteAbsence()"></i>
                        </button>

                    </div>
                    <table id="listTable"
                           data-toggle="table"
                           data-mobile-responsive="true"
                           data-pagination="true"
                           data-sidePagination="client"
                           data-pageSize="25"
                           data-url="getAbsence"
                           data-striped="true"
                           data-clickToSelect="true">
                        <thead>
                        <tr>
                            <th data-checkbox="true"></th>
                            <th data-field="absenceId">序号</th>
                            <th data-field="absenceUserId">工号</th>
                            <th data-field="user.userName">姓名</th>
                            <th data-field="absenceType">状态</th>
                            <th data-field="absenceTimeQuantum">时间段</th>
                            <th data-field="lateTime">迟到时长</th>
                        </tr>
                        </thead>

                    </table>
                </div>
            </div>

        </div>

        <div class="tab-pane fade" id="profile">
            <div class="example-wrap">

                <div class="example">
                    <div class="btn-group hidden-xs" id="exampleToolbar" role="group">
<%--                        <button type="button" class="btn btn-outline btn-default">--%>
<%--                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>--%>
<%--                        </button>--%>
<%--                        <button type="button" class="btn btn-outline btn-default">--%>
<%--                            <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>--%>
<%--                        </button>--%>
<%--                        <button type="button" class="btn btn-outline btn-default"">--%>
<%--                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>--%>
<%--                        </button>--%>
                    </div>
                    <table id="tradeList" data-toggle="table"
                           data-url="getTodayAttendance">
                        <thead>
                        <tr>
                            <th data-field="Num">序号</th>
                            <th data-field="morning">上午缺勤人数</th>
                            <th data-field="afternoon">下午缺勤人数</th>
                            <th data-field="evening">晚上缺勤人数</th>
                        </tr>
                        </thead>
                    </table>
                </div>
            </div>

        </div>
        <div class="tab-pane fade" id="statistic">
            <div class="example-wrap">

                <div class="example">
                    <div class="btn-group hidden-xs" id="toolbar" role="group">
<%--                        <button type="button" class="btn btn-outline btn-default">--%>
<%--                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>--%>
<%--                        </button>--%>
<%--                        <button type="button" class="btn btn-outline btn-default">--%>
<%--                            <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>--%>
<%--                        </button>--%>
<%--                        <button type="button" class="btn btn-outline btn-default">--%>
<%--                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>--%>
<%--                        </button>--%>
                    </div>
                    <table id="ab_statistic"
                           data-toggle="table"
                           data-url="getAttendanceStatistic">
                        <thead>
                        <tr>
                            <th data-field="user.userId">工号</th>
                            <th data-field="user.userName">姓名</th>
                            <th data-field="lateTimes">迟到次数</th>
                            <th data-field="leaveTimes">请假次数</th>
                            <th data-field="businessTime">出差次数</th>
                        </tr>
                        </thead>
                    </table>
                </div>
            </div>

        </div>
    </div>

</div>
<script src="../js/jquery.min.js?v=2.1.4"></script>
<script src="../js/bootstrap.min.js?v=3.3.5"></script>
<script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/hplus.min.js?v=4.0.0"></script>
<script type="text/javascript" src="../js/contabs.min.js"></script>
<script src="../js/plugins/pace/pace.min.js"></script>
<script src="../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="../js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="../js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="../js/demo/bootstrap-table-demo.min.js"></script>

<!-- 日期Daterange picker -->
<link href="../js/datetimepicker/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css"/>
<!-- 日期控件 -->
<script src="../js/datetimepicker/bootstrap-datetimepicker.js"></script>
<script src='../js/datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js'></script>
<script>
    $('#starttime').datetimepicker({
        format: 'yyyy-mm-dd hh:ii',
        language: 'zh-CN',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,//日期时间选择器打开之后首先显示的视图。 可接受的值：//0 分钟视图；1小时
        minView: 0, //日期时间选择器所能够提供的最精确的时间选择视图
        minuteStep: 1,//分钟
        formatViewType: 'time'
    }).on('hide', function (event) {
        event.preventDefault();
        event.stopPropagation();
        var startTime = event.date;
        $("#expirationDate").datetimepicker('setStartDate', startTime);
        $("#expirationDate").val("");
    });
    $('#expirationDate').datetimepicker({
        format: 'yyyy-mm-dd hh:ii',
        language: 'zh-CN',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,//日期时间选择器打开之后首先显示的视图。 可接受的值：//0 分钟视图；1小时
        minView: 0, //日期时间选择器所能够提供的最精确的时间选择视图
        minuteStep: 1,//分钟
        formatViewType: 'time'
    }).on('hide', function (event) {
        event.preventDefault();
        event.stopPropagation();
        var endTime = event.date;
        $("#startDate").datetimepicker('setEndDate', endTime);
    });

</script>

<script>

    // $(function () {
    //
    //
    //     //1.初始化Table
    //     var oTable = new TableInit();
    //     var s = new newTableInit();
    //
    //
    //     oTable.Init();
    //     s.Init();
    //
    //
    //     //2.初始化Button的点击事件
    //     /* var oButtonInit = new ButtonInit();
    //     oButtonInit.Init(); */
    //
    // });
    //
    // $("#toolbar .btn")[2].click(function () {
    //     alert("test");
    // });
    // var TableInit = function () {
    //     var oTableInit = new Object();
    //
    //     //初始化Table
    //     oTableInit.Init = function () {
    //
    //         $("#listTable").bootstrapTable({
    //             url: '/VenderManager/TradeList',     //请求后台的URL（*）
    //             method: 'get',           //请求方式（*）
    //             toolbar: '#listToolbar', //工具按钮用哪个容器
    //             striped: true,           //是否显示行间隔色
    //             cache: false,            //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
    //             pagination: true,          //是否显示分页（*）
    //             sortable: false,           //是否启用排序
    //             sortOrder: "asc",          //排序方式
    //             // queryParams: oTableInit.queryParams,//传递参数（*）
    //             sidePagination: "client",      //分页方式：client客户端分页，server服务端分页（*）
    //             pageNumber: 1,            //初始化加载第一页，默认第一页
    //             pageSize: 25,            //每页的记录行数（*）
    //             pageList: [10, 25, 50, 100],    //可供选择的每页的行数（*）
    //             search: true,
    //             showRefresh: true,
    //             clickToSelect: true,
    //             strictSearch: true,
    //             clickToSelect: true,        //是否启用点击选中行
    //             uniqueId: "absenceUserId",           //每一行的唯一标识，一般为主键列
    //             cardView: false,          //是否显示详细视图
    //             detailView: false,          //是否显示父子表
    //             columns: [{
    //                 field: 'checkbox',
    //                 checkbox: true
    //             },{
    //                 field: 'absenceUserId',
    //                 title: '工号'
    //             }, {
    //                 field: 'user.userName',
    //                 title: '姓名'
    //             }, {
    //                 field: 'absenceType',
    //                 title: '状态',
    //             }, {
    //                 field: 'absenceTimeQuantum',
    //                 title: '时间段'
    //             }, {
    //                 field: 'lateTime',
    //                 title: '迟到时长'
    //             }]
    //         });
    //     };
    //
    //     //得到查询的参数
    //     // oTableInit.queryParams = function (params) {
    //     //     var temp = {  //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
    //     //         limit: params.limit,  //页面大小
    //     //         offset: params.offset, //页码
    //     //         sdate: $("#stratTime").val(),
    //     //         edate: $("#endTime").val(),
    //     //         sellerid: $("#sellerid").val(),
    //     //         orderid: $("#orderid").val(),
    //     //         CardNumber: $("#CardNumber").val(),
    //     //         maxrows: params.limit,
    //     //         pageindex: params.pageNumber,
    //     //         portid: $("#portid").val(),
    //     //         CardNumber: $("#CardNumber").val(),
    //     //         tradetype: $('input:radio[name="tradetype"]:checked').val(),
    //     //         success: $('input:radio[name="success"]:checked').val(),
    //     //     };
    //     //     return temp;
    //     // };
    //     return oTableInit;
    // };
    //
    // var newTableInit = function () {
    //     var oTableInit = new Object();
    //     var data = [{
    //         "uid": "hjl1",
    //         "uname": "special",
    //         "normal__signin": "1",
    //         "late_signin": "2",
    //         "vocation_signin": "3",
    //         "absence_signin": "4"
    //     }, {
    //         "uid": "hjl1",
    //         "uname": "hjl",
    //         "normal__signin": "1",
    //         "late_signin": "2",
    //         "vocation_signin": "3",
    //         "absence_signin": "4"
    //     }, {
    //         "uid": "hjl1",
    //         "uname": "hjl",
    //         "normal__signin": "1",
    //         "late_signin": "2",
    //         "vocation_signin": "3",
    //         "absence_signin": "4"
    //     }, {
    //         "uid": "hjl1",
    //         "uname": "hjl",
    //         "normal__signin": "1",
    //         "late_signin": "2",
    //         "vocation_signin": "3",
    //         "absence_signin": "4"
    //     }];
    //
    //     //初始化Table
    //     function operateFormatter(value, row, index) {
    //         return [
    //             '<a type="button" class="btn  btn-sm" ><i class="glyphicon glyphicon-remove"></i></a>'
    //         ].join('');
    //     }
    //
    //     oTableInit.Init = function () {
    //         $('#ab_statistic').bootstrapTable({
    //             data: data,//请求方式（*）
    //             toolbar: '#toolbar',        //工具按钮用哪个容器
    //             striped: true,           //是否显示行间隔色
    //             cache: false,            //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
    //             pagination: true,          //是否显示分页（*）
    //             sortable: false,           //是否启用排序
    //             sortOrder: "asc",          //排序方式
    //             queryParams: oTableInit.queryParams,//传递参数（*）
    //             sidePagination: "server",      //分页方式：client客户端分页，server服务端分页（*）
    //             pageNumber: 1,            //初始化加载第一页，默认第一页
    //             pageSize: 50,            //每页的记录行数（*）
    //             pageList: [10, 25, 50, 100],    //可供选择的每页的行数（*）
    //             strictSearch: true,
    //             clickToSelect: true,        //是否启用点击选中行
    //             //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
    //             uniqueId: "id",           //每一行的唯一标识，一般为主键列
    //             cardView: false,          //是否显示详细视图
    //             detailView: false,          //是否显示父子表
    //             columns: [{
    //                 field: 'checkbox',
    //                 checkbox: true
    //             }, {
    //                 field: 'uid',
    //                 title: '工号'
    //             }, {
    //                 field: 'uname',
    //                 title: '姓名'
    //             }, {
    //                 field: 'normal__signin',
    //                 title: '正常打卡',
    //                 formatter: function (value, row, index) {
    //                     //通过判断单元格的值，来格式化单元格，返回的值即为格式化后包含的元素
    //                     var a = "";
    //                     if (value == "1") {//已签
    //                         var a = '<span style="color:#00ff00">' + value + '</span>';
    //                     } else if (value == "0") {//未签
    //                         var a = '<span style="color:#0000ff">' + value + '</span>';
    //                     } else if (value == "2") {//迟到
    //                         var a = '<span style="color:#FF0000">' + value + '</span>';
    //                     } else if (value == "3") {//早退
    //                         var a = '<span style="color:#FFF000">' + value + '</span>';
    //                     } else {
    //                         var a = '<span>' + value + '</span>';
    //                     }
    //                     return a;
    //
    //                 }
    //             }, {
    //                 field: 'late_signin',
    //                 title: '迟到'
    //             }, {
    //                 field: 'vocation_signin',
    //                 title: '请假'
    //             }, {
    //                 field: 'absence_signin',
    //                 title: '旷工'
    //             }],
    //
    //
    //         });
    //
    //     };
    //
    //     //得到查询的参数
    //     oTableInit.queryParams = function (params) {
    //         var temp = {  //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
    //             limit: params.limit,  //页面大小
    //             offset: params.offset, //页码
    //             sdate: $("#stratTime").val(),
    //             edate: $("#endTime").val(),
    //             sellerid: $("#sellerid").val(),
    //             orderid: $("#orderid").val(),
    //             CardNumber: $("#CardNumber").val(),
    //             maxrows: params.limit,
    //             pageindex: params.pageNumber,
    //             portid: $("#portid").val(),
    //             CardNumber: $("#CardNumber").val(),
    //             tradetype: $('input:radio[name="tradetype"]:checked').val(),
    //             success: $('input:radio[name="success"]:checked').val(),
    //         };
    //         return temp;
    //     };
    //     return oTableInit;
    // };


</script>

<script src="../js/plugins/layer/layer.js"></script>
<script src="../js/json2.js"></script>
<script src="../iwork_js/kaoqin_c.js"></script>
<script>
    $("#listToolbar").children().eq(0).click(function () {
        layer.open({
            type: 1,
            title: '添加缺勤记录',
            fix: false,
            shadeClose: true,
            closeBtn: 0,
            area: ['1000px', '500px'],
            content: $('#create_absence'),//这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
            success: function () {
                // var date = new Date();
                // var year = date.getFullYear();
                // var month = date.getMonth() + 1;
                // var day = date.getDate();
                // var hour = date.getHours();
                // var minute = date.getMinutes();
                // if (month < 10) {
                //     month = "0" + month;
                // }
                // if (day < 10) {
                //     day = "0" + day;
                // }//年月日
                // $("#lateTime").val(year+"-"+month+"-"+day+"T"+hour+":"+minute);
            }
        });
    });
</script>
</body>
<div hidden="true" class="wrapper wrapper-content " id="create_absence">
    <div class="row">
        <form class="form-horizontal">
    </div>
    <div class="row">
        <div class="form-group">
            <label class="col-sm-2 control-label">工号：</label>

            <div class="col-sm-10">
                <input id="userId" name="title_note" type="text" placeholder="工号" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="col-sm-2 control-label">状态：</label>

            <div class="col-sm-10">
                <select id="absenceType" class="form-control">
                    <option value="1">迟到/旷工</option>
                    <option value="2">请假</option>
                    <option value="3">出差</option>
                </select>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="col-sm-2 control-label">时间段</label>

            <div class="col-sm-10">
                <select id="absenceTimeQuantum" class="form-control">
                    <option value="1">上午</option>
                    <option value="2">下午</option>
                    <option value="3">晚上</option>
                </select>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="col-sm-2 control-label">迟到时长</label>

            <div class="col-sm-10">
                <input id="lateTime" name="title_note" type="text" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">

    </div>
    <div class="row">
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <a id="create" class="btn btn-sm center btn-white" onclick="createAbsence()">创建</a>
            </div>
        </div>
    </div>
    </form>

</div>
</html>