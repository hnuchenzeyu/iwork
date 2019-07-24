<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 项目</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="Resource/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="Resource/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">

    <link href="Resource/css/animate.min.css" rel="stylesheet">
    <link href="Resource/css/style.min.css?v=4.0.0" rel="stylesheet">
    <base target="_blank">

</head>

<body class="gray-bg">

    <div class="wrapper wrapper-content animated fadeInUp">
        <div class="row">
            <div class="col-sm-12">

                <div class="ibox">
                    <div class="ibox-title">
                        <h5>所有出差任务</h5>
                        <div class="ibox-tools">
                            <a id="evection" class="btn btn-primary btn-xs">创建新出差</a>
                        </div>
						<div  id="evections" hidden>
						      
						      <p>saopiahf</p>  
						
						</div>
						
					</div>	
																	 					                    
					<div class="ibox-content">
                        <div class="row m-b-sm m-t-sm">
                            <div class="col-md-1">
                                <button type="button" id="loading-example-btn" class="btn btn-white btn-sm"><i class="fa fa-refresh"></i> 刷新</button>
                            </div>
                            <div class="col-md-11">
                                <div class="input-group">
                                    <input type="text" placeholder="请输入出差名称" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                </div>
                            </div>
                        </div>

                        <div class="project-list">

                            <table class="table table-hover">
                                <tbody>
                                <c:forEach items="${outsideWorks}" var="work">
                                    <tr>
                                        <c:choose>
                                            <c:when test="${work.workstatus==1}">
                                                <td class="project-status">
                                                    <span class="label label-primary">进行中</span>
                                                </td>
                                            </c:when>
                                            <c:when test="${work.workstatus==2}">
                                                <td class="project-status">
                                                    <span class="label label-warning">已结束</span>
                                                </td>
                                            </c:when>
                                        </c:choose>
                                        <td class="project-title">
                                            <a href="project_detail.html">${work.worktitle}</a>
                                            <br/>
                                            <small>创建于${work.workstarttime}</small>
                                        </td>
                                        <td class="project-completion">
                                            <small>当前进度： ${work.workprogress}%</small>
                                            <div class="progress progress-mini">
                                                <div style="width: ${work.workprogress}%;" class="progress-bar"></div>
                                            </div>
                                        </td>
                                        <td class="project-people">
                                            <span>${work.workmember}</span>
                                        </td>
                                        <td class="project-actions">
                                            <a href="#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i> 查看 </a>
                                            <a href="#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i> 编辑 </a>
                                        </td>
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
	<script src="Resource/js/jquery.min.js?v=2.1.4"></script>
    <script src="Resource/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="Resource/js/content.min.js?v=1.0.0"></script>
    <script>
       $(document).ready(function(){$("#loading-example-btn").click(function(){btn=$(this);simpleLoad(btn,true);simpleLoad(btn,false)})});function simpleLoad(btn,state){if(state){btn.children().addClass("fa-spin");btn.contents().last().replaceWith(" Loading")}else{setTimeout(function(){btn.children().removeClass("fa-spin");btn.contents().last().replaceWith(" Refresh")},2000)}};
    </script>	
	<script src="Resource/js/plugins/layer/layer.js"></script>	
	<script>		
		$("#evection").click(function(){		
			
			layer.open({	
		        type: 2,         
		        title: '新增差务',
		        fix: false,
		        shadeClose: true,
				closeBtn: 0,
		        maxmin: true,
		        area: ['1000px', '500px'],
		        content: "new_work.jsp",
				
		    });	
		});
		
	</script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    </body>
</html>