$(document).ready(function () {

    //显示所有项目
    showProjects();

});

//获取所有项目的数据
function showProjects() {
    var tbody = window.document.getElementById("tbody-data");
    $.ajax({
        type:"GET",
        url:"http://localhost:8080/iWork/showProjects",
        data:"",
        dataType:"json",
        success:function (datas) {
            //请求成功调用的函数
            // console.log(datas);
            var i;
            var str = "";
            for (i in datas){
                var progress = datas[i].projectProgress;
                var projectType = datas[i].project_type.projectTypeName;                //多表联合查询
                var createTime = new Date(datas[i].createTime).Format("yy-MM-dd");      //月份是M，秒是m
                var projectId = datas[i].projectId
                // console.log(projectType);
                // console.log(createTime);
                str += "<tr>" +
                    "<td class=\"project-status proTd\" data-projectid = \" " + projectId + " \">" +
                        "<span class=\"label label-primary\">" + datas[i].projectStatus + "</span>" +
                    "</td>" +
                    "<td name=\"project-title\" class=\"project-title\">" +
                        "<a href=\"#\">" + datas[i].projectTitle + "</a> " +
                        "<br /> " +
                        "<small>"+"创建于"+ createTime +"</small> " +
                    "</td>" +
                    "<td class=\"project-type\">" +
                        "<a href=\"#\" >" + "项目类型" + "</a> " +
                        "<br /> " +
                        "<small>"+ projectType +"</small> " +
                    "</td>" +
                    "<td class=\"project-completion\"> " +
                        "<small>当前进度：" + progress + "%</small> " +
                        "<div class=\"progress progress-mini\"> " +
                            "<div style=\"width: " + progress + "%;\" class=\"progress-bar\">" +
                            "</div>" +
                        " </div> " +
                    "</td>" +
                    "<td class=\"project-people\"> " +
                        "<img alt=\"image\" class=\"img-circle\" src=\"img/a3.jpg\"> " +
                    "</td>" +
                    "<td class=\"project-actions\" style=\"clear:both\"> " +
                        "<a class=\"btn btn-white btn-sm\" onclick='viewProject()'>" +
                            "<i class=\"fa fa-folder\"></i> 查看 " +
                        "</a>" +
                        "<a class=\"btn btn-white btn-sm\" onclick='editProjectModal()' data-target='#editProjectModal'>" +
                            "<i class=\"fa fa-pencil\"></i> 编辑 " +
                        "</a>" +
                    "</td>" +
                    "</tr>"
            }
            tbody.innerHTML = str;
        },
        //调用执行后调用的函数
        complete: function(XMLHttpRequest, textStatus){
            // alert(XMLHttpRequest.responseText);
            // alert(textStatus);
            //HideLoading();
        },
        //调用出错执行的函数
        error: function(){
            alert("查询失败！");
        }
    })
};

//编辑项目
function editProjectModal(){
    var projectId = parseInt($(".proTd").data("projectid"));
    $("#editProjectModal").modal("show");

    //保存按钮
    $("#save_project").click(function () {
        console.log("保存")
        console.log(projectId);

        // var editProjectTitle = $(".project-title").val();
        // var editProjectStatus = $(".project-status").val();
        // var editProjectType = parseInt($(".project-type").val());
        // var editProjectProgress = $(".project-completion").val();
        // var editProjectContext = $("#editProjectContext").val();
        //
        // console.log("editProjectTitle：" + editProjectTitle);
        //
        // //将页面上的值写入编辑模拟窗口
        // $("#editProjectTitle").value = editProjectTitle;
        // $("#editProjectStatus").value = editProjectStatus;
        // $("#editProjectType").value = editProjectType;
        // $("#editProjectProgress").value = editProjectProgress;
        // // $("#editProjectContext").value = editProjectContext;

        var editProjectTitle = $("#editProjectTitle").val();
        var editProjectStatus = $("#editProjectStatus").val();
        var editProjectType =$("#editProjectType").val();
        var editProjectProgress = $("#editProjectProgress").val();
        var editProjectContext = $("#editProjectContext").val();
        console.log("editProjectTitle：" + editProjectTitle);

        if (editProjectTitle == null || editProjectStatus == null || editProjectType == null || editProjectProgress == null || editProjectContext == null){

        } else{
            $.ajax({
                type:"POST",
                url:"http://localhost:8080/iWork/updateProject",
                contentType: "application/json",
                data:JSON.stringify({
                    projectId:projectId,
                    projectTitle:editProjectTitle,
                    projectStatus:editProjectStatus,
                    projectType:editProjectType,
                    projectContext:editProjectContext,
                    projectProgress:editProjectProgress,
                }),
                success:function (datas) {
                    //请求成功调用的函数
                    $("#editProjectModal").modal("hide");
                    swal({
                        title:"太帅了",
                        text:"编辑成功了",
                        type:"success"
                    },function () {
                        window.location.reload();
                    });
                },
                //调用执行后调用的函数
                complete: function(XMLHttpRequest, textStatus){
                    // alert(XMLHttpRequest.responseText);
                    // alert(textStatus);
                    //HideLoading();
                },
                //调用出错执行的函数
                error: function(){
                    swal({
                        title:"可惜了",
                        text:"编辑失败了",
                        type:"failure"
                    });
                }
            });
        };
    });
};

//创建新的项目
$("#create_new_project").click(function () {

    var newProjectTitle = $("#newProjectTitle").val();
    var newProjectStatus = $("#newProjectStatus").val();
    var newProjectType = parseInt($("#newProjectType").val());
    var newProjectContext = $("#newProjectContext").val();

    // if (isNaN(newProjectType)){
    //     alert("是非数字值");
    // } else{
    //     alert("是数字值");
    // }
    //

    if (newProjectTitle == null||newProjectStatus==null||newProjectType==null||newProjectContext==null){
        alert("输入不能为空");
    } else{
        console.log(newProjectType);
        $.ajax({
            type:"POST",
            url:"addProjects",
            contentType: "application/json",
            data: JSON.stringify({
                projectTitle:newProjectTitle,
                projectStatus:newProjectStatus,
                projectType:newProjectType,
                projectContext:newProjectContext
            }),
            success:function (result) {
                $("#newProjectModal").modal("hide");
                swal({
                    title:"太帅了",
                    text:"创建成功了",
                    type:"success"
                },function () {
                    window.location.reload();
                });
            },
            error:function () {
                swal({
                    title:"可惜了",
                    text:"编辑失败了",
                    type:"failure"
                });
                $("#newProjectModal").modal("hide");
            }
        })
    }
});

//创建新分类
$("#save_btn").click(function () {
    var projectType = $("#projectType").val();
    console.log(projectType);

    if (projectType == null){
        alert("输入不能为空");
    } else{
        $.ajax({
            type:"POST",
            url:"http://localhost:8080/iWork/addProjectType",
            data: {projectTypeName: projectType},
            success:function (result) {
                $("#myModal").modal("hide");
                swal({
                    title:"太帅了",
                    text:"创建成功了",
                    type:"success"
                },function () {
                    window.location.reload();
                });
            },
            error:function () {
                swal({
                    title:"可惜了",
                    text:"创建失败了",
                    type:"failure"
                });
                $("#myModal").modal("hide");
            }
        })
    }
});

//点击所有项目按钮，显示所有项目
$("#allProjectTypes").click(function () {
    var tbody = window.document.getElementById("tbody-data");
    $.ajax({
        type:"GET",
        url:"showProjects",
        data:"",
        dataType:"json",
        success:function (datas) {
            //请求成功调用的函数
            console.log(datas);
            var i;
            var str = "";
            for (i in datas){
                var progress = datas[i].projectProgress;
                var projectType = datas[i].project_type.projectTypeName;                //多表联合查询
                var createTime = new Date(datas[i].createTime).Format("yy-MM-dd");      //月份是M，秒是m
                console.log(projectType);
                console.log(createTime);
                str += "<tr>" +
                    "<td class=\"project-status\"><span class=\"label label-primary\">" + datas[i].projectStatus + "</span></td>" +
                    "<td name=\"project-title\" value=\""+ datas[i].projectId + "\" class=\"project-title\"><a href=\"#\">" + datas[i].projectTitle + "</a> <br /> <small>"+"创建于"+ createTime +"</small> </td>" +
                    "<td class=\"project-type\"><a href=\"#\">" + "项目类型" + "</a> <br /> <small>"+ projectType +"</small> </td>" +
                    "<td class=\"project-completion\"> <small>当前进度：" + progress + "%</small> <div class=\"progress progress-mini\"> <div style=\"width: " + progress + "%;\" class=\"progress-bar\"></div> </div> </td>" +
                    "<td class=\"project-people\"> <img alt=\"image\" class=\"img-circle\" src=\"img/a3.jpg\"> </td>" +
                    "<td class=\"project-actions\" style=\"clear:both\"> " +
                    "<a class=\"btn btn-white btn-sm\" ><i class=\"fa fa-folder\"></i> 查看 </a>" +
                    "<a class=\"btn btn-white btn-sm\" onclick='editProjectModal()' data-target=\"#editProjectModal\"><i class=\"fa fa-pencil\"></i> 编辑 </a>" +
                    "</td>" +
                    "</tr>"
            }
            tbody.innerHTML = str;
            console.log("所有项目success");
        },
        //调用执行后调用的函数
        complete: function(XMLHttpRequest, textStatus){
            // alert(XMLHttpRequest.responseText);
            // alert(textStatus);
            //HideLoading();
        },
        //调用出错执行的函数
        error: function(){
            alert("查询失败！");
        }
    })
});

//点击不同的项目类别按钮，显示不同类别的所有项目
function showTypeProjects() {
    var tbody = window.document.getElementsByName("projectType").val();
    $.ajax({
        type:"POST",
        url:"showTypeProjects",
        data:{projectTypeId:pro},
        dataType:"json",
        success:function (datas) {
            //请求成功调用的函数
            console.log(datas);
            var i;
            var str = "";
            for (i in datas){
                var progress = datas[i].projectProgress;
                var projectType = datas[i].project_type.projectTypeName;
                var createTime = new Date(datas[i].createTime).Format("yy-MM-dd");
                console.log(projectType);
                console.log(createTime);
                str += "<tr>" +
                    "<td class=\"project-status\"><span class=\"label label-primary\">" + datas[i].projectStatus + "</span></td>" +
                    "<td name=\"project-title\" value=\""+ datas[i].projectId + "\" class=\"project-title\"><a href=\"#\">" + datas[i].projectTitle + "</a> <br /> <small>"+"创建于"+ createTime +"</small> </td>" +
                    "<td class=\"project-type\"><a href=\"#\">" + "项目类型" + "</a> <br /> <small>"+ projectType +"</small> </td>" +
                    "<td class=\"project-completion\"> <small>当前进度：" + progress + "%</small> <div class=\"progress progress-mini\"> <div style=\"width: " + progress + "%;\" class=\"progress-bar\"></div> </div> </td>" +
                    "<td class=\"project-people\"> <img alt=\"image\" class=\"img-circle\" src=\"img/a3.jpg\"> </td>" +
                    "<td class=\"project-actions\" style=\"clear:both\"> " +
                    "<a class=\"btn btn-white btn-sm\" ><i class=\"fa fa-folder\"></i> 查看 </a>" +
                    "<a class=\"btn btn-white btn-sm\" onclick='editProjectModal()' data-target=\"#editProjectModal\"><i class=\"fa fa-pencil\"></i> 编辑 </a>" +
                    "</td>" +
                    "</tr>"
            };
            tbody.innerHTML = str;
        },
        //调用执行后调用的函数
        complete: function(XMLHttpRequest, textStatus){
            // alert(XMLHttpRequest.responseText);
            // alert(textStatus);
            //HideLoading();
        },
        //调用出错执行的函数
        error: function(){
            alert("查询失败！");
        }
    })
}

//查看按钮
function viewProject() {
    var projectId = parseInt($(".proTd").data("projectid"));
    console.log(projectId);

    console.log("查看项目详情");
    $.ajax({
        type:"POST",
        url:"viewProject",
        data:{
            projectId:projectId
        },
        success: function (datas) {
            //请求成功调用的函数
            window.location.href="viewProject?projectId="+projectId;
        },
        //调用执行后调用的函数
        complete: function(XMLHttpRequest,textStatus){
            // alert(XMLHttpRequest.responseText);
            // alert("查询成功！！！");
        },
        //调用出错执行的函数
        error: function(){
            swal({
                title:"可惜了",
                text:"查看失败了",
                type:"failure"
            });
        }
    });
}
