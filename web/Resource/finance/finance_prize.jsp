<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - Flot图表</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="../css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/style.min.css?v=4.0.0" rel="stylesheet">
    <base target="_blank">
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
<div class="wrapper wrapper-content animated fadeInRight">

    <div class="row animated fadeInDown">
        <div class="row">
            <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>绩效奖</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>

                            <a><i class="glyphicon glyphicon-plus"></i></a>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>

                    </div>
                    <div class="ibox-content">
                        <div class="btn-group hidden-xs" id="toolbar_prizeclass" role="group">
                            <button type="button" class="btn btn-outline btn-default">
                                <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                            </button>

                            <button type="button" class="btn btn-outline btn-default" onclick="deletePrizeData()">
                                <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                            </button>

                        </div>
                        <table id="prizeClass" data-mobile-responsive="true">
                            <thead>
                            <tr>
                                <th data-field="Tid">绩效奖档次</th>
                                <th data-field="First">类别</th>
                                <th data-field="First">金额</th>
                            </tr>
                            </thead>
                            <tbody><%--显示数据有效--%>
                            <c:forEach items="${prizes}" var="p">
                            <tr data-id="${p.id}">
                                <td></td>
                                <td>${p.type}</td>
                                <td>${p.prizeClass}</td>
                                <td>${p.amount}</td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="ibox-heading">
                        <a id="publish" class="btn btn-block btn-primary">发放绩效奖</a>
                    </div>
                </div>

            </div>
            <div class="col-sm-9">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h4>本<input id="terms" class="teams btn btn-group" value="${prizes[0].terms}" type="text">期绩效奖获得名单</h4>
                    </div>
                    <div class="btn-group hidden-xs" id="toolbar_finance" role="group">
                        <button type="button" class="btn btn-outline btn-default">
                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                        </button>

                        <button type="button" class="btn btn-outline btn-default">
                            <i class="glyphicon glyphicon-trash" aria-hidden="true" onclick="deleteWageData()"></i>
                        </button>

                    </div>
                    <div class="ibox-content">
                        <table id="excellent_staff">
                            <tbody>
                            <c:forEach items="${staff_wages}" var="w">
                                <tr data-id="${w.wageId}">
                                    <td></td>
                                    <td>${w.user.userId}</td>
                                    <td>${w.user.userName}</td>
                                    <td>${w.prize.type}</td>
                                    <td>${w.prize.publishTime}</td>
                                    <td>${w.prize.prizeClass}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>
<script src="../js/jquery.min.js?v=2.1.4"></script>
<script src="../js/bootstrap.min.js?v=3.3.5"></script>

<script src="../js/content.min.js?v=1.0.0"></script>
<script src="../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="../js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="../js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>

<script src="../js/plugins/layer/layer.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<script>
    var datenow = new Date(+new Date() + 8 * 3600 * 1000).toISOString().replace(/T/g, ' ').replace(/\.[\d]{3}Z/, '');//格式2019-07-18 11:40:31
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    if (month < 10) {
        month = "0" + month;
    }
    if (day < 10) {
        day = "0" + day;
    }//年月日

    $("#toolbar_finance").children().eq(0).click(function () {
        layer.open({
            type: 1,
            maxmin: true,
            title: '绩效奖',
            fix: false,
            shadeClose: true,
            closeBtn: 0,
            area: ['800px', '300px'],
            content: $('#create_finance'),//这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
            success: function () {
                $("#create_time").val(year + month + day);
            }
        });
    });
    $("#toolbar_prizeclass").children().eq(0).click(function () {
        layer.open({
            type: 1,
            maxmin: true,
            title: '绩效奖',
            fix: false,
            shadeClose: true,
            closeBtn: 0,
            area: ['800px', '300px'],
            content: $('#publish_prize'),//这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
            success: function () {

            }
        });
    });
    $(function () {
        //1.初始化Table
        var oTable = new TableInit();
        var data = [{
            field: 'checkbox',
            checkbox: true
        }, {
            field: 'user_id',
            title: '员工工号'
        }, {
            field: 'name',
            title: '员工姓名'
        }, {
            field: 'prize_class',
            title: '绩效奖档次'
        }, {
            field: 'prize_time',
            title: '发放期数'
        }, {
            field: 'prize_type',
            title: '类别'
        },];


        oTable.Init(data, "#excellent_staff", '#toolbar_finance', true, true);
        data = [{
            field: 'checkbox',
            checkbox: true
        },{
            field: 'prize_class',
            title: '绩效奖档次'
        }, {
            field: 'prize_type',
            title: '类别'
        }, {
            field: 'prize_count',
            title: '金额'
        }];
        oTable.Init(data, "#prizeClass", "#toolbar_prizeclass", false, false);

        //2.初始化Button的点击事件
        /* var oButtonInit = new ButtonInit();
        oButtonInit.Init(); */

    });
    var TableInit = function () {
        var oTableInit = new Object();

        //初始化Table
        oTableInit.Init = function (columns_, id, toolbars, search, refresh) {
            $(id).bootstrapTable({
                url: '/VenderManager/TradeList',     //请求后台的URL（*）
                method: 'get',           //请求方式（*）
                toolbar: toolbars,        //工具按钮用哪个容器
                striped: true,           //是否显示行间隔色
                cache: false,            //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
                pagination: false,          //是否显示分页（*）
                sortable: false,           //是否启用排序
                sortOrder: "asc",          //排序方式
                queryParams: oTableInit.queryParams,//传递参数（*）
                sidePagination: "server",      //分页方式：client客户端分页，server服务端分页（*）
                pageNumber: 1,            //初始化加载第一页，默认第一页
                pageSize: 50,            //每页的记录行数（*）
                pageList: [10, 25, 50, 100],    //可供选择的每页的行数（*）
                search: search,
                showRefresh: refresh,
                clickToSelect: true,
                strictSearch: true,
                clickToSelect: true,        //是否启用点击选中行
                uniqueId: "id",           //每一行的唯一标识，一般为主键列
                cardView: false,          //是否显示详细视图
                detailView: false,          //是否显示父子表
                columns: columns_
            });
        };

        //得到查询的参数
        oTableInit.queryParams = function (params) {
            var temp = {  //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                limit: params.limit,  //页面大小
                offset: params.offset, //页码
                sdate: $("#stratTime").val(),
                edate: $("#endTime").val(),
                sellerid: $("#sellerid").val(),
                orderid: $("#orderid").val(),
                CardNumber: $("#CardNumber").val(),
                maxrows: params.limit,
                pageindex: params.pageNumber,
                portid: $("#portid").val(),
                CardNumber: $("#CardNumber").val(),
                tradetype: $('input:radio[name="tradetype"]:checked').val(),
                success: $('input:radio[name="success"]:checked').val(),
            };
            return temp;
        };
        return oTableInit;
    };

</script>


<div hidden="true" class="wrapper wrapper-content " id="create_finance">

    <form class="form-horizontal">

        <div class="row">
            <div class="form-group">
                <label class="col-sm-2 control-label">员工工号：</label>

                <div class="col-sm-10">
                    <input id="userId" name="title_note" type="text" placeholder="流水号" class="form-control">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <label class="col-sm-2 control-label">绩效奖档次：</label>

                <div class="col-sm-10">
                    <select id="prizeId" name="title_note" class="form-control">
                        <c:forEach var="p" items="${prizes}">
                            <option value="${p.id}">${p.type}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <label class="col-sm-2 control-label">绩效奖期数：</label>

                <div class="col-sm-10">
                    <input id="prizeTerm" name="title_note" value="绩效奖期数" type="text" class="form-control">
                </div>
            </div>
        </div>


        <div class="row">
            <div class="form-group ">
                <div class="col-sm-offset-2 col-sm-10 bottom">
                    <a class="btn btn-sm center btn-white">取消</a>
                    <a class="btn btn-sm center btn-white">修改</a>
                    <a id="createList" class="btn btn-sm center btn-white">创建</a>
                </div>
            </div>
        </div>
    </form>

</div>
<div hidden="true" class="wrapper wrapper-content " id="publish_prize">

    <form class="form-horizontal">


        <div class="row">
            <div class="form-group">
                <label class="col-sm-2 control-label">绩效奖档次：</label>

                <div class="col-sm-10">
                    <input id="prizeType" name="prizeType" type="text" class="form-control" placeholder="例如：绩效奖二等">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <label class="col-sm-2 control-label">类别：</label>

                <div class="col-sm-10">
                    <input id="prizeCate" name="prizeCate" type="text" class="form-control" placeholder="绩效奖为1，补贴为2">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <label class="col-sm-2 control-label">金额：</label>

                <div class="col-sm-10">
                    <input id="amount" name="amount" type="text" class="form-control" placeholder="例如：3999">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group ">
                <div class="col-sm-offset-2 col-sm-10 bottom">
                    <input type="button" id="createPrize" class="btn btn-sm center btn-white" value="发放"/>
                </div>
            </div>
        </div>
    </form>
</div>
<script src="../js/json2.js"></script>
<script src="../iwork_js/finance.js"></script><!--数据操作-->
</body>
</html>
