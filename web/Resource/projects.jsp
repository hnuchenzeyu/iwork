<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<html>

	<head>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">


		<title>H+ 后台主题UI框架 - 项目</title>
		<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
		<meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

		<link rel="shortcut icon" href="favicon.ico">
		<link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
		<link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">

		<link href="css/animate.min.css" rel="stylesheet">
		<link href="css/style.min.css?v=4.0.0" rel="stylesheet">
		<base target="_blank">

		<%
			pageContext.setAttribute("base_PATH", request.getContextPath());
		%>

	</head>

	<body class="gray-bg">

		<div class="wrapper wrapper-content animated fadeInUp">
			<div class="row">
				<div class="col-sm-12">

					<div class="ibox">
						<div class="ibox-title">

							<button id="allProjects" class="btn btn-outline btn-primary">所有项目</button>
							<c:forEach var="pro" items="${projectTypes}" >
								<button class="btn btn-outline btn-default" name="projectType" onclick="showTypeProjects()" value="${pro.projectTypeId}">${pro.projectTypeName}</button>
							</c:forEach>

							<div class="ibox-tools">
                                <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#newProjectModal">
                                    创建新项目
                                </button>
							</div>
							<div class="ibox-tools">
								<button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
									创建新分类
								</button>
							</div>

                            <!-- 创建新分类的窗口 -->
							<div class="modal inmodal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content animated bounceInRight">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
											</button>
											<i class="fa fa-laptop modal-icon"></i>
											<h4 class="modal-title">创建分类</h4>
											</div>
										<div class="modal-body">
											<p>创建项目相关分类，方便管理</p>
											<div class="form-group"><label>分类名</label> <input id="projectType" type="text" placeholder="请输入分类名称" class="form-control" value=""></div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
											<button id="save_btn" type="button" class="btn btn-primary">保存</button>
										</div>
									</div>
								</div>
							</div>

                            <!-- 创建新项目的窗口 -->
                            <div class="modal inmodal" id="newProjectModal" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content animated bounceInRight">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                                            </button>
                                            <i class="fa fa-laptop modal-icon"></i>
                                            <h4 class="modal-title">创建项目</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>创建一个新的项目</p>
                                            <div class="form-group">
                                                <label>项目名称</label>
                                                <input id="newProjectTitle" type="text" placeholder="请输入项目名称" class="form-control" value="">
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <label>项目状态</label>
                                                <select id="newProjectStatus" type="text" placeholder="请选择项目状态" class="form-control">
                                                    <option value="1">进行中</option>
                                                    <option value="2">已取消</option>
                                                </select>
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <label>项目类别</label>
                                                <select id="newProjectType" type="text" placeholder="请选择项目类别" class="form-control">
                                                    <option value="1">电子商城</option>
                                                    <option value="2">政府部门</option>
                                                    <option value="3">电子商务</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>项目内容</label>
                                                <textarea id="newProjectContext" rows="3" cols="81" placeholder="请输入项目内容" ></textarea>
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                            <button id="create_new_project" type="button" class="btn btn-primary">保存</button>
                                        </div>
                                    </div>
                                </div>
                            </div>


							<!-- 编辑项目的窗口 -->
							<div class="modal inmodal" id="editProjectModal" tabindex="-1" role="dialog" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content animated bounceInRight">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
											</button>
											<i class="fa fa-laptop modal-icon"></i>
											<h4 class="modal-title">编辑项目</h4>
										</div>
										<div class="modal-body">
											<p>编辑这个项目</p>
											<div class="form-group">
												<label>项目名称</label>
												<input id="editProjectTitle" type="text" placeholder="请输入项目名称" class="form-control" value="">
											</div>
											<br>
											<div class="form-group">
												<label>项目状态</label>
												<select id="editProjectStatus" type="text" placeholder="请选择项目状态" class="form-control">
													<option value="1">进行中</option>
													<option value="2">已取消</option>
												</select>
											</div>
											<br>
											<div class="form-group">
												<label>项目类别</label>
												<select id="editProjectType" type="text" placeholder="请选择项目类别" class="form-control">
													<option value="1">电子商城</option>
													<option value="2">政府部门</option>
													<option value="3">电子商务</option>
												</select>
											</div>
											<div class="form-group">
												<label>项目进度</label>
												<input id="editProjectProgress" rows="3" cols="81" placeholder="请输入项目进度" ></input>
											</div>
											<div class="form-group">
												<label>项目内容</label>
												<textarea id="editProjectContext" rows="3" cols="81" placeholder="请输入项目内容" ></textarea>
											</div>
										</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
											<button id="edit_project" type="button" class="btn btn-primary">保存</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="ibox-content">
							<div class="row m-b-sm m-t-sm">
								<div class="col-md-1">
									<button type="button" id="loading-example-btn" class="btn btn-white btn-sm"><i class="fa fa-refresh"></i> 刷新</button>
								</div>
								<div class="col-md-11">
									<div class="input-group">
										<input type="text" placeholder="请输入项目名称" class="input-sm form-control"> <span class="input-group-btn">
											<button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
									</div>
								</div>
							</div>

							<div class="project-list">

								<table class="table table-hover">
									<tbody id="tbody-data">
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="js/jquery.min.js?v=2.1.4"></script>
		<script src="js/bootstrap.min.js?v=3.3.5"></script>
		<script src="js/content.min.js?v=1.0.0"></script>

        <script src="js/json2.js"></script>
		<script src="iwork_js/projects.js"></script>
		<script src="iwork_js/timeControl.js"></script>

		<script>
			$(document).ready(function() {
				$("#loading-example-btn").click(function() {
					btn = $(this);
					simpleLoad(btn, true);
					simpleLoad(btn, false)
				})
			});

			function simpleLoad(btn, state) {
				if (state) {
					btn.children().addClass("fa-spin");
					btn.contents().last().replaceWith(" Loading")
				} else {
					setTimeout(function() {
						btn.children().removeClass("fa-spin");
						btn.contents().last().replaceWith(" Refresh")
					}, 2000)
				}
			};
		</script>
		<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	</body>
</html>
