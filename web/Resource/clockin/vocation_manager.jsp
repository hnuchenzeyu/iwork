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
				                        <table class="table table-hover" id="exampleTableFromData" data-mobile-responsive="true">
				                            <thead>
				                            <tr>
				                                <th style="width: 100px;">申请人</th>
				                                <th style="width: 100px;">开始时间</th>
				                                <th style="width: 100px;">结束时间</th>
				                                <th>事由</th>
												<th style="width: 100px">操作</th>
				                            </tr>
				                            </thead>
				                            <tbody>
				                            <tr>
				                                <td>backdrop</td>
				                                <td>boolean 或 string <code>'static'</code></td>
				                                <td>true</td>
				                                <td>遮罩层，或使用<code>'static'</code>指定遮罩层与关闭模态窗口不关联</td>
												<td>  
												    <a href="projects.html#" class="btn btn-white btn-sm"><i class="glyphicon glyphicon-remove"></i> 查看 </a>
													<a href="projects.html#" class="btn btn-white btn-sm"><i class="glyphicon glyphicon-remove"></i> 结束 </a>
												</td>
				                            </tr>
				                    
				                           
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
				                        <table class="table table-hover" id="exampleTableFromData" data-mobile-responsive="true">
				                            <thead>
				                            <tr>
				                                <th style="width: 100px;">申请人</th>
				                                <th style="width: 100px;">开始时间</th>
				                                <th style="width: 100px;">结束时间</th>
				                                <th>事由</th>
												<th style="width: 100px">操作</th>
				                            </tr>
				                            </thead>
				                            <tbody>
				                            <tr>
				                                <td>backdrop</td>
				                                <td>boolean 或 string <code>'static'</code></td>
				                                <td>true</td>
				                                <td>遮罩层，或使用<code>'static'</code>指定遮罩层与关闭模态窗口不关联</td>
												<td>							
												    <a href="projects.html#" class="btn btn-white btn-sm"><i class="glyphicon glyphicon-remove"></i> 查看 </a>
												    <a href="projects.html#" class="btn btn-white btn-sm"><i class="glyphicon glyphicon-remove"></i> 结束 </a>
												</td>
				                            </tr>
				                    
				                           
				                            </tbody>
				                        </table>
				                    </div>
				                </div>
				            </div>
				       </div>      
							   <div class="row">
							               <div class="ibox float-e-margins">
							                   <div class="ibox-title">
							                       <h5>已完成</h5>
							   
							                   </div>
							                   <div class="ibox-content">
							   
							                       <div class="table-responsive">
							                           <table class="table table-hover" id="exampleTableFromData" data-mobile-responsive="true">
							                               <thead>
							                               <tr>
							                                   <th style="width: 100px;">申请人</th>
							                                   <th style="width: 100px;">开始时间</th>
							                                   <th style="width: 100px;">结束时间</th>
							                                   <th>事由</th>
							                               </tr>
							                               </thead>
							                               <tbody>
							                               <tr>
							                                   <td>backdrop</td>
							                                   <td>boolean 或 string <code>'static'</code></td>
							                                   <td>true</td>
							                                   <td>遮罩层，或使用<code>'static'</code>指定遮罩层与关闭模态窗口不关联</td>
							                               </tr>
							                       
							                              
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
				                       <table class="table table-hover" data-click-to-select="true" data-mobile-responsive="true">
				                         <thead>
				                         <tr>
				                             <th>查看</th>
				                             <th>日期</th>
											 <th>详情</th>
				                             <th>申请人</th>
				                             <th>操作</th>
				                         </tr>
				                         </thead>
				                               <tr>
				                                   <td class="project-status">
				                                       <a class="btn btn-white btn-sm">查看</a>
				                                   </td>
				                                   <td class="project-title">
				                                       
				                                       <small>2014.08.15~2019.07.09</small>
				                                   </td>
				                                    <td class="project-title">
				                                       <a href="project_detail.html">病假</a>
				                                       <br/>
				                                       <small>创建于 2014.08.15</small>
				                                   </td>
				                                   <td class="project-people">
				                                       <a href="projects.html"><img alt="image" class="img-circle" src="img/a3.jpg"></a>
				                                   
				                                   </td>
				                                   <td class="project-actions">
				                                       <a href="projects.html#" class="btn btn-white btn-sm"><i class="glyphicon glyphicon-ok"></i> 批准 </a>
				                                       <a href="projects.html#" class="btn btn-white btn-sm"><i class="glyphicon glyphicon-remove"></i> 驳回 </a>
				                                   </td>
				                               </tr>
				                               
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
			$("#startDate").datetimepicker('setEndDate',endTime);
		});
	</script>
	
</body>

</html>