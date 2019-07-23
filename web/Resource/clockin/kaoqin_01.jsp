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
			<li role="presentation" class="active"><a href="#createVocation" data-toggle="tab">新建假条</a></li>
			<li role="presentation"><a href="#ownrecord" data-toggle="tab">个人记录</a></li>
			<li role="presentation"><a href="#dealing" data-toggle="tab">处理中</a></li>
		</ul>

		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="createVocation">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">请假人：</label>

                                <div class="col-sm-10">
                                    <input name="username" data-fid="${sessionScope.get("loginuser").userId}" type="text" value="${sessionScope.get("loginuser").userName}" placeholder="请假人" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-sm-2 control-label">上司：</label>

                                <div class="col-sm-10">
                                    <select id="subname">
										<c:forEach items="${managers}" var="manager">
											<option data-fid="${manager.userId}">${manager.getUserName()}</option>
										</c:forEach>
									</select>
                                </div>
                            </div>
							 <div class="form-group">
                                        <label class="col-sm-2 control-label">请假时间段：</label>
                                        <div class="col-sm-10">

											<input name="starttime" class="form-control layer-date" type="text" placeholder="开始时间" value="" id="starttime" readonly>
											<input name="endtime" class="form-control layer-date" type="text" value="" placeholder="结束时间" id="expirationDate" readonly>
                                        </div>
                              </div>
							   <div class="form-group">
							      <label  class="col-sm-2 control-label">请假事由：</label>
							      <div class="col-sm-10">
									  <textarea id="reason" class="form-control"  rows="10"></textarea>
							      </div>
							  </div>
							<div class="form-group">

								<div class="col-sm-offset-2 col-sm-10">
									<input id="sub" type="button" value="请假" class="btn btn-group btn-primary"/>
	                            </div>
							</div>
                        </form>

			</div>

			<div class="tab-pane fade" id="ownrecord">
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
				                                <th data-field ="username" style="width: 100px;">申请人</th>
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
							                       <h5>请假记录</h5>

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

							                           </table>
							                       </div>
							                   </div>
							               </div>
							          </div>

			</div>
			<div class="tab-pane fade" id="dealing">
				<div class="row">
				            <div class="ibox float-e-margins">

				                <div class="ibox-content">

				                    <div  class="project-list">
				                       <table class="table table-hover" id="vocation_submit"  data-mobile-responsive="true">
				                         <thead>
				                         <tr>
											 <th data-field= "status">状态</th>

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
    <script src="Resource/js/plugins/layer/layer.min.js"></script>
    <script src="Resource/js/hplus.min.js?v=4.0.0"></script>
    <script type="text/javascript" src="Resource/js/contabs.min.js"></script>
    <script src="Resource/js/plugins/pace/pace.min.js"></script>
	<script src="Resource/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script src="Resource/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script src="Resource/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<!-- 日期Daterange picker -->
	<link href="Resource/js/datetimepicker/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
	<!-- 日期控件 -->
	<script src="Resource/js/datetimepicker/bootstrap-datetimepicker.js"></script>
	<script src='Resource/js/datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js'></script>
	<script>


		$('#starttime').datetimepicker({
			format : 'yyyy-mm-dd hh:ii',
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,//日期时间选择器打开之后首先显示的视图。 可接受的值：//0 分钟视图；1小时
			minView : 0, //日期时间选择器所能够提供的最精确的时间选择视图
			minuteStep:1,//分钟
			formatViewType : 'time'
		}).on('hide', function(event) {
			event.preventDefault();
			event.stopPropagation();
			var startTime = event.date;
			$("#expirationDate").datetimepicker('setStartDate',startTime);
			$("#expirationDate").val("");
		});
		$('#expirationDate').datetimepicker({
			format : 'yyyy-mm-dd hh:ii',
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,//日期时间选择器打开之后首先显示的视图。 可接受的值：//0 分钟视图；1小时
			minView : 0, //日期时间选择器所能够提供的最精确的时间选择视图
			minuteStep:1,//分钟
			formatViewType : 'time'
		}).on('hide', function(event) {
			event.preventDefault();
			event.stopPropagation();
			var endTime = event.date;
			$("#starttime").datetimepicker('setEndDate',endTime);
		});
	</script>

	<script>

        function getFormData() {
        var formdata = {

            userId:$("input[name='username']").data("fid"),
            userName:$("input[name='username']").val(),
            subperior:$("#subname option:selected").data("fid"),
            startTime:$("#starttime").val(),
            endTime:$("#expirationDate").val(),
            vocatinonReason:$("#reason").val(),
            status:4

        };
            return formdata;
            }
        $(document).ready(function() {
		$("#sub").on('click',function () {
		    alert($("input[name='username']").val());
		   var fdata =getFormData();
		   alert(fdata.userId+fdata.userName+fdata.startTime+fdata.endTime+fdata.vocatinonReason+fdata.subperior);


		   $.ajax({
              url:'${pageContext.request.contextPath}/vocationInsert',
              type:'post',
              data:JSON.stringify(fdata),
              contentType:"application/json;charset=utf-8",
              success:function (data) {
                  alert("success");
                  alert(data.toString());
              },
               error:function (XMLHttpRequest, textStatus) {
                   alert(XMLHttpRequest.readyState+"/"+XMLHttpRequest.status+"/"+textStatus);
               }
           });
        });
        });
	</script>
	<script>










		$(function () {


            function operateFormatter(value, row, index) {
                return [
                    '<a type="button" id="rowdelete" class="btn  btn-sm" ><i class="glyphicon glyphicon-remove"></i></a>'
                ].join('');
            };
            window.operateEvents1 = {
                'click #rowdelete': function(e, value, row, index) {
                    alert(row.vocationId);
						$.ajax({
							url:"${pageContext.request.contextPath}/deleteVocation",
							type:"post",
							data:{vocationId:row.vocationId},
							success:function (data) {
								alert(data.toString());
                            },
                            error:function (XMLHttpRequest, textStatus) {
                                alert(XMLHttpRequest.readyState+"/"+XMLHttpRequest.status+"/"+textStatus);
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
                width: '7%',
                visible: false
            }, {
			  field: 'username',
			  title: '申请人'
			}, {
			  field: 'startTime',
			  title: '开始时间',
			  
			}, {
			  field: 'endTime',
			  title: '结束时间'
			}, {
			  field: 'vocatinonReason',
			  title: '事由'
			}, {
			  field: 'operate',
			  title: '操作',
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
                width: '7%',
                visible: false
            },{
			  field: 'status',
			  title: '状态',
                formatter: function(value,row,index) {
                    //通过判断单元格的值，来格式化单元格，返回的值即为格式化后包含的元素
                    var a = "";
                    if(value == "4") {
                         a = '<span class="btn btn-block btn-primary">'+'审核中'+'</span>';
                    }else if(value == "5"){
                        a = '<span class="btn btn-block btn-warning">'+'已驳回'+'</span>';
                    }
                    return a;
                }
			}, {
			  field: 'startTime',
			  title: '开始时间',
			  
			}, {
			  field: 'endTime',
			  title: '结束时间'
			}, {
			  field: 'vocatinonReason',
			  title: '事由'
			}, {
			  field: 'operate',
			  title: '操作',
				events: operateEvents1,
              formatter:operateFormatter()
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
			url:"${pageContext.request.contextPath}/vocationRecordSelf",    //请求方式（*
            type:"post",
            contentType: "application/x-www-form-urlencoded",
			toolbar: '#toolbar',        //工具按钮用哪个容器
			striped: true,           //是否显示行间隔色
			cache: false,            //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）

			sortable: false,           //是否启用排序
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
</body>

</html>