<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - 时间轴</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="../css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/style.min.css?v=4.0.0" rel="stylesheet"><base target="_blank">

    <!-- Sweet Alert -->
    <link href="../css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
        <div class="row animated fadeInRight">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>记事本</h5>
                        <div class="ibox-tools">
                            <ul class="bs-glyphicons-list">
                                <a href="note_create.jsp" target="_self">
                                    <li>
                                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                                        <span class="glyphicon-class">新建笔记</span>
                                    </li>
                                </a>
                            </ul>
                        </div>
                    </div>
                    <div id="allNotes" class="ibox-content timeline">
                        <div class="timeline-item">
                            <div class="row">
                                <div class="col-xs-3 date">
                                    <i class="fa fa-briefcase"></i> 6:00
                                    <br>
                                    <small class="text-navy">2 小时前</small>
                                </div>
                                <div class="col-xs-7 content no-top-border">
                                    <p class="m-b-xs">
                                        <strong>服务器已彻底崩溃</strong>
                                    </p>
                                    <p style="display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 3;overflow: hidden;">还未检查出错误</p>
                                </div>
								 <div class="col-xs-3">
								   <button class="btn btn-circle demo3">
									   <i class="glyphicon glyphicon-remove"></i>
                                   </button>
								</div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="../js/jquery.min.js?v=2.1.4"></script>
    <script src="../js/bootstrap.min.js?v=3.3.5"></script>
    <script src="../js/plugins/peity/jquery.peity.min.js"></script>
    <script src="../js/content.min.js?v=1.0.0"></script>
    <script src="../js/demo/peity-demo.min.js"></script>

    <script src="../js/plugins/sweetalert/sweetalert.min.js"></script>
    <script src="../iwork_js/note.js"></script>
    <script src="../iwork_js/timeControl.js"></script>

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>

</body>

</html>