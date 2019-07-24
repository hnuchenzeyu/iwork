<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>H+ 后台主题UI框架 - 主页</title>

    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <!--[if lt IE 8]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link rel="shortcut icon" href="favicon.ico">
    <link href="Resource/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="Resource/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="Resource/css/animate.min.css" rel="stylesheet">
    <link href="Resource/css/style.min.css?v=4.0.0" rel="stylesheet">
	<link href="Resource/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">

</head>

<body class="gray-bg" >  
	<div class="wrapper wrapper-content">
		<ul id="myTab" class="nav nav-tabs">
			<li role="presentation"><a href="#profile" data-toggle="tab">请假记录</a></li>
			<li role="presentation"><a href="#dropdown1" data-toggle="tab">请假批复</a></li>
		</ul>

		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="profile">
				<div class="row">
				            <div class="ibox float-e-margins">
				                <div class="ibox-title">
				                    <h5>即将开始</h5>
				
				                </div>
				                <div class="ibox-content">
				
				                    <div class="table-responsive">
										<table class="table table-hover" id="vocation_come" data-mobile-responsive="true">
											<thead>
											<tr>
												<th data-field = "username" style="width: 100px;">申请人</th>
												<th data-field="startTime" style="width: 100px;">开始时间</th>
												<th data-field="endTime" style="width: 100px;">结束时间</th>
												<th data-field="vocatinonReason">事由</th>
												<th data-field="operate" style="width: 100px">操作</th>
											</tr>
											</thead>
											<tbody>


											</tbody>
										</table>
									</div>
				                </div>
				            </div>
				</div>           
				<div class="row">
				            <div class="ibox float-e-margins">
				                <div class="ibox-title">
				                    <h5>正在进行</h5>
				
				                </div>
				                <div class="ibox-content">
				
				                    <div class="table-responsive">
										<table class="table table-hover" id="vocation_now" data-mobile-responsive="true">
											<thead>
											<tr>
												<th data-field = "username" style="width: 100px;">申请人</th>
												<th data-field="startTime" style="width: 100px;">开始时间</th>
												<th data-field="endTime" style="width: 100px;">结束时间</th>
												<th data-field="vocatinonReason">事由</th>
												<th data-field="operate" style="width: 100px">操作</th>
											</tr>
											</thead>
											<tbody>


											</tbody>
										</table>
									</div>
								</div>
							</div>
				</div>
				<div class="row">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>已结束</h5>

						</div>
						<div class="ibox-content">

							<div class="table-responsive">
								<table class="table table-hover" id="vocation_log" data-mobile-responsive="true">
									<thead>
									<tr>
										<th data-field = "username" style="width: 100px;">申请人</th>
										<th data-field="startTime" style="width: 100px;">开始时间</th>
										<th data-field="endTime" style="width: 100px;">结束时间</th>
										<th data-field="vocatinonReason">事由</th>
										<th data-field="operate" style="width: 100px">操作</th>
									</tr>
									</thead>
									<tbody>


									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="dropdown1">
				<div class="row">
				            <div class="ibox float-e-margins">
				                <div class="ibox-title">
				                    <h5>待批复</h5>
				
				                </div>
				                <div class="ibox-content">
				
				                    <div  class="project-list">
										<table class="table table-hover" id="vocation_submit"  data-mobile-responsive="true">
											<thead>
											<tr>
												<th data-field= "show">查看</th>

												<th data-field="startTime" style="width: 100px;">开始时间</th>
												<th data-field="endTime" style="width: 100px;">结束时间</th>
												<th data-field="vocatinonReason">事由</th>
												<th data-field="operate" style="width: 100px">操作</th>
											</tr>
											</thead>
										</table>
				                    </div>
				                </div>
				            </div>
				</div> 
				</div>
		</div>

    </div>
    <script src="Resource/js/jquery.min.js?v=2.1.4"></script>
    <script src="Resource/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="Resource/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="Resource/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="Resource/js/plugins/layer/layer.js"></script>
    <script src="Resource/js/hplus.min.js?v=4.0.0"></script>
    <script type="text/javascript" src="Resource/js/contabs.min.js"></script>
    <script src="Resource/js/plugins/pace/pace.min.js"></script>
	<script src="Resource/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script src="Resource/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script src="Resource/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>

	<script>
        $(function () {


            function operateFormatter(value, row, index) {
                return [
                    '<a id="showdetail" class="btn  btn-sm btn-info"><i class="glyphicon glyphicon-remove"></i> 查看 </a>\n' ,
                    '<a id="rowdelete" class="btn btn-warning  btn-sm"><i class="glyphicon glyphicon-remove"></i> 结束 </a>\n'
                ].join('');
            };
            function operateFormatter2(value, row, index) {
                return [
                    '<a id="permit" class="btn  btn-sm btn-primary"><i class="glyphicon glyphicon-ok"></i> 批准 </a>\n' ,
                    '<a id="reject" class="btn  btn-sm btn-warning"><i class="glyphicon glyphicon-remove"></i> 驳回 </a>\n'
                ].join('');
            };

            function operateShow(value,row,index) {
                //通过判断单元格的值，来格式化单元格，返回的值即为格式化后包含的元素
                return ['<a id="showdetail" class="btn btn-info  btn-sm"> 查看 </a>\n'].join('');
            }
            window.operateEvents1 = {
                'click #rowdelete': function(e, value, row, index) {
                    layer.open({
						type:1,
						title:"是否删除",
                        area: ['200px', '100px'],
						btn:['确定','取消'],
						content:"<div class='wrapper wrapper-content'><p>是否删除假条？</p></div>",
						yes:function (index, layero) {
                            $.ajax({
                                url:"${pageContext.request.contextPath}/deleteVocation",
                                type:"post",
                                data:{vocationId:row.vocationId},
                                success:function (data) {
                                    alert(data.toString());
                                    row.remove();
                                },
                                error:function (XMLHttpRequest, textStatus) {
                                    alert(XMLHttpRequest.readyState+"/"+XMLHttpRequest.status+"/"+textStatus);
                                }
                            });
                            layer.close(index);
                        },btn2: function(index, layero){
                           layer.close(index);
                        }
					});


                },
                'click #showdetail': function(e, value, row, index) {
                    layer.open({
                        type: 1,
                        title: '假条详情',
                        fix: false,
                        shadeClose: true,
                        closeBtn: 1,
                        btn: ['确定'],
                        maxmin: true,
                        scrollbar: false,
                        area: ['800px', '500px'],
                        content: $('#vocation_datail'),
                        success:function (layero,index) {

                            $("#vName").val(row.username);
                            $("#starttime").val(row.startTime);
                            $("#endtime").val(row.endTime);
                            $("#reason").text(row.vocatinonReason);
                        },
						yes: function(index, layero){

                            layer.close(index);
                        }
                    });
                },'click #permit': function(e, value, row, index) {
                    layer.open({
                        type:1,
                        title:"是否批准",
                        area: ['200px', '100px'],
                        btn:['确定','取消'],
                        content:"<div class=\"wrapper wrapper-content\"><p>是否批准假条？</p></div>",
                        yes:function (index, layero) {
                            $.ajax({
                                url:"${pageContext.request.contextPath}/permitVocation",
                                type:"post",
                                data:{vocationId:row.vocationId},
                                success:function (data) {
                                    alert(data.toString());
                                   $("#vocation_submit").bootstrapTable('refresh');
                                },
                                error:function (XMLHttpRequest, textStatus) {
                                    alert(XMLHttpRequest.readyState+"/"+XMLHttpRequest.status+"/"+textStatus);
                                }
                            });

                            layer.close(index);
                        },btn2: function(index, layero){
                            layer.close(index);
                        }
                    });
                },'click #reject': function(e, value, row, index) {
                    layer.open({
                        type:1,
                        title:"是否驳回",
                        area: ['200px', '100px'],
                        btn:['确定','取消'],
                        content:"<div class='wrapper wrapper-content'><p>是否驳回假条？</p></div>",
                        yes:function (index, layero) {
                            $.ajax({
                                url:"${pageContext.request.contextPath}/rejectVocation",
                                type:"post",
                                data:{vocationId:row.vocationId},
                                success:function (data) {
                                    alert(data.toString());
                                    $("#vocation_submit").bootstrapTable('refresh');
                                },
                                error:function (XMLHttpRequest, textStatus) {
                                    alert(XMLHttpRequest.readyState+"/"+XMLHttpRequest.status+"/"+textStatus);
                                }
                            });
                            layer.close(index);
                        },
						btn2: function(index, layero){
                            layer.close(index);
                        }
                    });


                }
            };




            //1.初始化Table
            var oTable = new TableInit();
            var d= [{
                title: 'id',
                field: 'vocationId',
                align: 'center',
                valign: 'middle',
                width: '10%',
                visible: false
            }, {
                field: 'username',
                title: '申请人',
                width: '10%',
            }, {
                field: 'startTime',
                title: '开始时间',
                width: '10%',
            }, {
                field: 'endTime',
                title: '结束时间',
                width: '15%',
            }, {
                field: 'vocatinonReason',
                title: '事由',
                width: '60%',
            }, {
                field: 'operate',
                title: '操作',
                width: '10%',
                events: operateEvents1,
                formatter:operateFormatter

            }];


            oTable.Init("#vocation_come",d,1);//1即将开始2正在进行3已结束4审核中5驳回
            oTable.Init("#vocation_now",d,2);
            oTable.Init("#vocation_log",d,3);
            d= [{
                title: 'id',
                field: 'vocationId',
                align: 'center',
                valign: 'middle',
                width: '10%',
                visible: false
            },{
                field: 'show',
                title: '查看',
                events:operateEvents1,
                formatter: operateShow,
                width: '10%',
            },{
                field: 'username',
                title: '申请人',
				visible:false,
                width: '10%',
            },  {
                field: 'startTime',
                title: '开始时间',
                width: '10%',

            }, {
                field: 'endTime',
                title: '结束时间',
                width: '10%',
            }, {
                field: 'vocatinonReason',
                title: '事由',
                width: '40%',
            }, {
                field: 'operate',
                title: '操作',
                width: '10%',
                events: operateEvents1,
                formatter:operateFormatter2()
            }];
            oTable.Init("#vocation_submit",d,4);


            //2.初始化Button的点击事件
            /* var oButtonInit = new ButtonInit();
            oButtonInit.Init(); */

        });

        var TableInit = function () {
            var oTableInit = new Object();

            //初始化Table
            oTableInit.Init = function (tableid,datal,recordType) {
                $(tableid).bootstrapTable('destroy');
                $(tableid).bootstrapTable({
                    //请求后台的URL（*）
                    url:"${pageContext.request.contextPath}/allRecord",    //请求方式（*
                    type:"post",
                    contentType: "application/x-www-form-urlencoded",
                    toolbar: '#toolbar',        //工具按钮用哪个容器
                    striped: true,           //是否显示行间隔色
                    cache: false,            //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
                    sortable:true,           //是否启用排序
                    sortOrder: "asc",          //排序方式
                    queryParams:function (params) {
                        var param = {
                            limit: params.limit,  //页面大小
                            offset: params.offset, //页码

                            recordTypes:recordType
                        };
                        return param;
                    },
                    //传递参数（*）
                    sidePagination: "server",      //分页方式：client客户端分页，server服务端分页（*）
                    pageNumber:1,            //初始化加载第一页，默认第一页
                    pageSize: 50,            //每页的记录行数（*）
                    pageList: [10, 25, 50, 100],    //可供选择的每页的行数（*）
                    clickToSelect: true,
                    strictSearch: true,
                    clickToSelect: true,        //是否启用点击选中行
                    uniqueId: "id",           //每一行的唯一标识，一般为主键列
                    cardView: false,          //是否显示详细视图
                    detailView: false,          //是否显示父子表
                    columns:datal,
                    onLoadError: function(){  //加载失败时执行  
                        alert("加载数据失败");
                    }

                });
            };
            return oTableInit;
        };

	</script>
	<div id="vocation_datail" hidden >
		<div id="wrapper wrapper-content ">
			<div class="ibox">
			<div class="ibox-content">
				<form class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-2 control-label">请假人：</label>

						<div class="col-sm-10">
							<input type="text" id="vName" placeholder="请假人" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">上司：</label>

						<div class="col-sm-10">
							<input disabled="true" id="supName" type="text" value="${sessionScope.get("loginmanager").userName}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">请假时间段：</label>
						<div class="col-sm-10">

							<input class="form-control" type="text" value="2018.9.23" id="starttime" readonly>
							<input class="form-control" type="text" value="2018.9.29"  id="endtime" readonly>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">请假事由：</label>
						<div class="col-sm-10">
							<p id="reason">发烧了 </p>
						</div>
					</div>

				</form>

			</div>
			</div>
		</div>

	</div>
</body>


</html>
