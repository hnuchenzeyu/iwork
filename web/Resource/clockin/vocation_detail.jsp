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
	<div id="wrapper wrapper-content ">
    <div id="vocation_datail" hidden >
			<div class="row">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">请假人：</label>

                                <div class="col-sm-10">
                                    <input type="text" placeholder="请假人" class="form-control"> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">上司：</label>

                                <div class="col-sm-10">
                                   <input disabled="true"  type="text" value="李源" />
                                </div>
                            </div>
							 <div class="form-group">
                                        <label class="col-sm-2 control-label">请假时间段：</label>
                                        <div class="col-sm-10">
                                          
											<input class="form-control" type="text" value="2018.9.23" id="starttime" readonly> 				
											<input class="form-control" type="text" value="2018.9.29"  id="expirationDate" readonly> 
                                        </div>
                              </div>
							   <div class="form-group">
							      <label class="col-sm-2 control-label">请假事由：</label>
							      <div class="col-sm-10">
							          <p>发烧了 </p>
							      </div>
							  </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button class="btn btn-sm btn-white" type="submit">确定</button>
                                </div>
                            </div>
                        </form>
                 
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
	</body>

</html>