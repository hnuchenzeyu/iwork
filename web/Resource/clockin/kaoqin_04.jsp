<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - 联系人</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="Resource/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="Resource/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">

    <link href="Resource/css/animate.min.css" rel="stylesheet">
    <link href="Resource/css/style.min.css?v=4.0.0" rel="stylesheet"><base target="_blank">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-4 ">
			<div class="btn-group hidden-xs" id="exampleToolbar" role="group">
			    <button type="button" class="btn btn-outline btn-default" data-toggle="modal" data-target="#myModal">
			        <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
			    </button>
			    <button type="button" class="btn btn-outline btn-default">
			        <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>
			    </button>
			    <button type="button" class="btn btn-outline btn-default">
			        <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
			    </button><br>
				<div class="modal inmodal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
				       <div class="modal-dialog">
				           <div class="modal-content animated bounceInRight">
				               <div class="modal-header">
				                   <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
				                   </button>
				                 
				                   <h4 class="modal-title">添加优秀员工</h4>
				                 
				                   </div>
				                   <div class="modal-body">
				                      	<div class="form-group">
												<label>工号</label> <input type="text" placeholder="请输入员工号/"  class="form-control">
											
												</div>
												<div class="form-group">
												<label>荣誉</label> 
												<div class="form-group">
												<label>第一</label> 
												
												</div>
												<select class="btn btn-default">
													<option>第二</option>
												</select>
												<a class="btn btn-default"	><i class="glyphicon glyphicon-plus"></i></a>	
												</div>
				                   </div>
				                   <div class="modal-footer">
				                       <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
				                       <button type="button" class="btn btn-primary">保存</button>
				                   </div>
				               </div>
				           </div>
				       </div>
				
			</div>
			</div>
		</div>
        <br>
		<br>
		<div class="row">
            <div class="col-sm-4">
                <div class="contact-box">
					 <div class="ibox-title">					   
					    <div class="ibox-tools">					      
					        <a class="close-link">
					            <i class="fa fa-times"></i>
					        </a>
					    </div>
						</div>
					
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="Resource/img/a2.jpg">
                                <div class="m-t-xs font-bold">CTO</div>
                            </div>
                        </div>
						
                        <div class="col-sm-8">
                            <h3><strong>奔波儿灞</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 甘肃·兰州</p>
                            <address>
                            <strong>荣誉</strong><br>
                            全勤奖<br>
                            三好员工<br>
							创新引领者
							</address>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-box">
					<div class="ibox-title">					   
					   <div class="ibox-tools">					      
					       <a class="close-link">
					           <i class="fa fa-times"></i>
					       </a>
					   </div>
					</div>
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="Resource/img/a1.jpg">
                                <div class="m-t-xs font-bold">营销总监</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>灞波儿奔</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 四川·成都</p>
                            <address>
							   <strong>荣誉</strong><br>
							   全勤奖<br>
							   三好员工<br>
							   创新引领者
                           </address>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-box">
					 <div class="ibox-title">					   
					   <div class="ibox-tools">					      
					       <a class="close-link">
					           <i class="fa fa-times"></i>
					       </a>
					   </div>
											</div>
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="Resource/img/a3.jpg">
                                <div class="m-t-xs font-bold">Marketing manager</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>Monica Smith</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                           <address>
                           							   <strong>荣誉</strong><br>
                           							   全勤奖<br>
                           							   三好员工<br>
                           							   创新引领者
                           </address>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-box">
					 <div class="ibox-title">					   
					   <div class="ibox-tools">					      
					       <a class="close-link">
					           <i class="fa fa-times"></i>
					       </a>
					   </div>
											</div>
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="Resource/img/a4.jpg">
                                <div class="m-t-xs font-bold">攻城师</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>Michael Zimber</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                            <address>
                            							   <strong>荣誉</strong><br>
                            							   全勤奖<br>
                            							   三好员工<br>
                            							   创新引领者
                            </address>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-box">
					 <div class="ibox-title">					   
					   <div class="ibox-tools">					      
					       <a class="close-link">
					           <i class="fa fa-times"></i>
					       </a>
					   </div>
											</div>
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="Resource/img/a5.jpg">
                                <div class="m-t-xs font-bold">射鸡师</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>作家崔成浩</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                            <address>
                            <strong>Baidu, Inc.</strong><br>
                            E-mail:xxx@baidu.com<br>
                            Weibo:<a href="">http://weibo.com/xxx</a><br>
                            <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-box">
					 <div class="ibox-title">					   
					   <div class="ibox-tools">					      
					       <a class="close-link">
					           <i class="fa fa-times"></i>
					       </a>
					   </div>
											</div>
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="Resource/img/a6.jpg">
                                <div class="m-t-xs font-bold">射鸡师</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>韩寒</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                           <address>
                           							   <strong>荣誉</strong><br>
                           							   全勤奖<br>
                           							   三好员工<br>
                           							   创新引领者
                           </address>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-box">
					 <div class="ibox-title">					   
					   <div class="ibox-tools">					      
					       <a class="close-link">
					           <i class="fa fa-times"></i>
					       </a>
					   </div>
					 </div>
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="Resource/img/a1.jpg">
                                <div class="m-t-xs font-bold">CEO</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>郭敬明</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                           <address>
									<strong>荣誉</strong><br>
                           			全勤奖<br>
                           			三好员工<br>
                           			创新引领者
                           </address>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-box">
					 <div class="ibox-title">					   
					   <div class="ibox-tools">					      
					       <a class="close-link">
					           <i class="fa fa-times"></i>
					       </a>
					   </div>
											</div>
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="Resource/img/a2.jpg">
                                <div class="m-t-xs font-bold">射鸡师</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>马云</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                            <address>
                            							   <strong>荣誉</strong><br>
                            							   全勤奖<br>
                            							   三好员工<br>
                            							   创新引领者
                            </address>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-box">
					 <div class="ibox-title">					   
					   <div class="ibox-tools">					      
					       <a class="close-link">
					           <i class="fa fa-times"></i>
					       </a>
					   </div>
											</div>
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="Resource/img/a3.jpg">
                                <div class="m-t-xs font-bold">市场总监</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>范爷</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                           <address>
                           							   <strong>荣誉</strong><br>
                           							   全勤奖<br>
                           							   三好员工<br>
                           							   创新引领者
                           </address>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-box">
					 <div class="ibox-title">					   
					   <div class="ibox-tools">					      
					       <a class="close-link">
					           <i class="fa fa-times"></i>
					       </a>
					   </div>
											</div>
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="Resource/img/a4.jpg">
                                <div class="m-t-xs font-bold">攻城师</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>李彦宏</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                           <address>
                           							   <strong>荣誉</strong><br>
                           							   全勤奖<br>
                           							   三好员工<br>
                           							   创新引领者
                           </address>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-box">
					 <div class="ibox-title">					   
					   <div class="ibox-tools">					      
					       <a class="close-link">
					           <i class="fa fa-times"></i>
					       </a>
					   </div>
											</div>
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="Resource/img/a5.jpg">
                                <div class="m-t-xs font-bold">射鸡师</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>小马哥</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                           <address>
                           							   <strong>荣誉</strong><br>
                           							   全勤奖<br>
                           							   三好员工<br>
                           							   创新引领者
                           </address>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-box">
					 <div class="ibox-title">					   
					   <div class="ibox-tools">					      
					       <a class="close-link">
					           <i class="fa fa-times"></i>
					       </a>
					   </div>
											</div>
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="Resource/img/a6.jpg">
                                <div class="m-t-xs font-bold">射鸡师</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>乔峰</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                           <address>
                           							   <strong>荣誉</strong><br>
                           							   全勤奖<br>
                           							   三好员工<br>
                           							   创新引领者
                           </address>
                        </div>
                        <div class="clearfix"></div>
                    </a>

                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-box">
					 <div class="ibox-title">					   
					   <div class="ibox-tools">					      
					       <a class="close-link">
					           <i class="fa fa-times"></i>
					       </a>
					   </div>
											</div>
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="Resource/img/a1.jpg">
                                <div class="m-t-xs font-bold">CEO</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>慕容晓晓</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                           <address>
                           							   <strong>荣誉</strong><br>
                           							   全勤奖<br>
                           							   三好员工<br>
                           							   创新引领者
                           </address>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-box">
					 <div class="ibox-title">					   
					   <div class="ibox-tools">					      
					       <a class="close-link">
					           <i class="fa fa-times"></i>
					       </a>
					   </div>
											</div>
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="Resource/img/a2.jpg">
                                <div class="m-t-xs font-bold">射鸡师</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>高圆圆</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                           <address>
                           							   <strong>荣誉</strong><br>
                           							   全勤奖<br>
                           							   三好员工<br>
                           							   创新引领者
                           </address>
                        </div>
                        <div class="clearfix" ></div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <script src="Resource/js/jquery.min.js?v=2.1.4"></script>
    <script src="Resource/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="Resource/js/content.min.js?v=1.0.0"></script>
    <script>
        $(document).ready(function(){$(".contact-box").each(function(){animationHover(this,"pulse")})});
		$(document).ready(function(){
			
			$(".ibox-title").hide();
		});
    </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>