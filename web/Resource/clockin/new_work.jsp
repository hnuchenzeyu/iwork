<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
    <link href="Resource/css/style.min.css?v=4.0.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
				<form class="form-horizontal">
				<div class="row">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">主题：</label>
                    
                        <div class="col-sm-10">
                            <input id="title_work" name="title_note" type="text" placeholder="主题" class="form-control">
                        </div>
                    </div>
                </div>  
                <div class="row">
					
					 <div class="form-group">
					    <label class="col-sm-2 control-label">工作详情：</label>
					
					    <div class="col-sm-10">
					        <textarea id="work_detail_new" name="content" data-provide="markdown" rows="6"></textarea> 
					    </div>
					</div>
                </div>  
				 <div class="row">
				     <div class="form-group">
				         <label class="col-sm-2 control-label">成员：</label>
				     
				         <div  class="col-sm-10">
				             
								<div id="member_list">
									<span id="mark"></span>
									<a id="add_member" class="btn btn-circle btn-default"><i class="glyphicon glyphicon-plus"></i></a>
								</div>

							
				         </div>
				     </div>
				 </div>  
				<div class="row">
					<div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					        <a id="cancel" href="javascript:history.back();" class="btn btn-group center btn-default" >取消</a>
							<a id="create" class="btn btn-group btn-primaryr">创建</a>
					    </div>
					</div>
				</div>		   
                </form>
    </div>
	<div id="ml"><p id="memlist"></p></div>
	<div id="member_list_select" class="wrapper wrapper-content" hidden="true">

		<div class="feed-activity-list">
			<div id="member" class="feed-element">
				<c:forEach items="${userList}" var="user">
					<label class="media-body" data-name="${user.userName}" data-fid="${user.userId}">${user.userName}</label>
				</c:forEach>
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
	<script src="Resource/js/plugins/layer/layer.js"></script>	
	<script>


		memberlist=new Array();
		$("#member_list").on("click",".member",function(){	
			
			alert(this.getAttribute("data-name"));
			if(memberlist!=null)
			{
				for(var i=0;i<memberlist.length;i++)
				{
					
					if(memberlist[i].name==this.getAttribute("data-name"))
						{
							memberlist.splice(i,1);
						}
				}
			}	
			this.remove();
			});
		
		$("#member").on('click',"label",function(){
						var x=window.document.getElementById("mark");
						var k=0;
						var member=new Object();
						member.id=this.getAttribute("data-fid");
						member.name=this.getAttribute("data-name");

						alert(member.id);
						;


						if(!memberlist.some(function (m) {
                            return m.id==member.id;
                        }))
						{
							memberlist.push(member);
							$(x).after("<label class='member' data-name='"+member.name  + "' data-fid='"+member.id+"'>"+this.getAttribute("data-name")+"</label><span>/</spcn>");
						}					
					});
		$("#add_member").click(function(){
			layer.open({	
			    type: 1,         
			    title: '添加成员',
			    fix: false,
			    shadeClose: true,
				closeBtn: 0,
				area: ['200px', '500px'],
			    content: $('#member_list_select'),			
				success: function(layero, index){
					$(".media-body").click(function(){
						layer.close(index);
					});
				}
			});	
		});

        function callbackdata(){
            var title = $("#title_work").val();
            var detail =$("#work_detail_new").val();

            var str="";

            for(var i=0;i<memberlist.length;i++)
            {
                str+=memberlist[i].id+',';
            }
            if (str.length > 0) {
                str = str.substr(0, str.length - 1);
            }

            var data ={
                worktitle:title,
                workdescription:detail.toString(),
                workmember:str
            }
            return data;
        }
		$("#create").click(function () {
		    alert(callbackdata().workmember);
            $.ajax({
                url:"${pageContext.request.contextPath}/insertIntoWork",
                type:"post",
                data:JSON.stringify(callbackdata()),
                contentType:"application/json;charset=utf-8",
                success:function (data) {
                    alert(data);
                },error:function (XMLHttpRequest, textStatus) {
                    alert(XMLHttpRequest.readyState+"/"+XMLHttpRequest.status+"/"+textStatus);
                }

            });
        });
	</script>

</body>

</html>