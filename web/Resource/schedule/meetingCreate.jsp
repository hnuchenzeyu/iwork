<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - Bootstrap3 Markdown编辑器</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="Resource/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="Resource/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="Resource/css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Resource/css/plugins/markdown/bootstrap-markdown.min.css" />
    <link href="Resource/css/style.min.css?v=4.0.0" rel="stylesheet"><base target="_blank">
	<!-- 日期Daterange picker -->
	<link href="Resource/js/datetimepicker/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
				<div class="ibox">

				<div class="ibox-content">
				<div class="row">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">主题：</label>

                        <div class="col-sm-10">
                            <input id="title_note" name="title_note" type="text" placeholder="主题" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="row">

					 <div class="form-group">
					    <label class="col-sm-2 control-label">内容：</label>
					    <div class="col-sm-10">
					        <textarea id="detail_note" name="content" data-provide="markdown" rows="10"></textarea>
					    </div>
					</div>
                </div>
				<div class="row" style="margin-top: 20px;">
					<label class="col-sm-2 control-label">会议室：</label>
					<div class="col-sm-10">
						<input class="form-control" type="text" value="" placeholder="会议室" >
					</div>
				</div>
				<div class="row">
					<div class="form-group">
						<label class="col-sm-2 control-label">开始日期：</label>
						<div class="col-sm-10">
							<input class="form-control layer-date" type="text" placeholder="开始时间" value="" id="starttime" readonly>
						</div>
				    </div>
				</div>
				<div class="row  style='margin-button: 20px;'">
					<div class="form-group">
						<label class="col-sm-2 control-label">结束日期：</label>
						<div class="col-sm-10">
							<input class="form-control layer-date" type="text" value="" placeholder="结束时间" id="endtime" readonly>
						</div>
				    </div>
				</div>

				<div class="row footer">
					<div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					        <a class="btn btn-sm center btn-white cancel"  >取消</a>
							<a class="btn btn-sm center btn-white" >发布</a>
					    </div>
					</div>
				</div>
             </div>
			 </div>
    </div>
    <script src="Resource/js/jquery.min.js?v=2.1.4"></script>
    <script src="Resource/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="Resource/js/content.min.js?v=1.0.0"></script>
    <script type="text/javascript" src="Resource/js/plugins/markdown/markdown.js"></script>
    <script type="text/javascript" src="Resource/js/plugins/markdown/to-markdown.js"></script>
    <script type="text/javascript" src="Resource/js/plugins/markdown/bootstrap-markdown.js"></script>
    <script type="text/javascript" src="Resource/js/plugins/markdown/bootstrap-markdown.zh.js"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<!-- 日期控件 -->
	<script src="Resource/js/datetimepicker/bootstrap-datetimepicker.js"></script>
	<script src='Resource/js/datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js'></script>
	<script>
		var datenow=new Date(+new Date()+8*3600*1000).toISOString().replace(/T/g,' ').replace(/\.[\d]{3}Z/,'');
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
			$("#endtime").datetimepicker('setStartDate',startTime);
			$("#endtime").val("");
		});
		$('#endtime').datetimepicker({
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
</body>

</html>