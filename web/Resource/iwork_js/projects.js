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
            console.log(datas);
            var i;
            var str = "";
            for (i in datas){
                var progress = datas[i].projectProgress;
                var projectType = datas[i].projectType;     //需要多表联合查询，先标记
                console.log(progress);
                console.log(datas[i].createTime);
                str += "<tr>" +
                    "<td class=\"project-status\"><span class=\"label label-primary\">" + datas[i].projectStatus + "</span></td>" +
                    "<td name=\"project-title\" value=\""+ datas[i].projectId + "\" class=\"project-title\"><a href=\"project_detail.html\">" + datas[i].projectTitle + "</a> <br /> <small>"+"创建于"+ datas[i].createTime +"</small> </td>" +
                    "<td class=\"project-type\"><a href=\"project_detail.html\">" + "项目类型" + "</a> <br /> <small>"+ projectType +"</small> </td>" +
                    "<td class=\"project-completion\"> <small>当前进度：" + progress + "%</small> <div class=\"progress progress-mini\"> <div style=\"width: " + progress + "%;\" class=\"progress-bar\"></div> </div> </td>" +
                    "<td class=\"project-people\"> <img alt=\"image\" class=\"img-circle\" src=\"img/a3.jpg\"> </td>" +
                    "<td class=\"project-actions\" style=\"clear:both\"> " +
                    "<a class=\"btn btn-white btn-sm\" ><i class=\"fa fa-folder\"></i> 查看 </a>" +
                    "<a class=\"btn btn-white btn-sm\" data-target=\"#editProjectModal\"><i class=\"fa fa-pencil\"></i> 编辑 </a>" +
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

//编辑按钮
$("edit_project").click(function () {
        var projectId = $(".project-title").val();
        console.log(projectId);

        var editProjectTitle = $(".project-title").val();
        var editProjectStatus = $(".project-status").val();
        var editProjectType = parseInt($(".project-type").val());
        var editProjectProgress = $(".project-completion").val();
        var editProjectContext = $("#editProjectContext").val();

        //将页面上的值写入编辑模拟窗口
        $("#editProjectTitle").val(editProjectTitle);
        $("#editProjectStatus").val(editProjectStatus);
        $("#editProjectType").val(editProjectType);
        $("#editProjectProgress").val(editProjectProgress);

        $.ajax({
            type:"POST",
            url:"http://localhost:8080/iWork/updateProject",
            data:JSON.stringify({
                projectId:projectId,
                projectTitle:editProjectTitle,
                projectStatus:editProjectStatus,
                projectType:editProjectType,
                projectContext:editProjectContext,
                projectProgress:editProjectProgress,
            }),
            dataType:"json",
            success:function (datas) {
                //请求成功调用的函数
                alert("更新成功")
            },
            //调用执行后调用的函数
            complete: function(XMLHttpRequest, textStatus){
                // alert(XMLHttpRequest.responseText);
                // alert(textStatus);
                //HideLoading();
            },
            //调用出错执行的函数
            error: function(){
                alert("更新成功！");
            }
        })
});

//创建新的项目
$("#create_new_project").click(function () {

    var newProjectTitle = $("#newProjectTitle").val();
    var newProjectStatus = $("#newProjectStatus").val();
    var newProjectType = parseInt($("#newProjectType").val());
    var newProjectContext = $("#newProjectContext").val();

    if (isNaN(newProjectType)){
        alert("是非数字值");
    } else{
        alert("是数字值");
    }


    if (newProjectTitle == null||newProjectStatus==null||newProjectType==null||newProjectContext==null){
        alert("输入不能为空");
    } else{
        console.log(newProjectType);
        $.ajax({
            type:"POST",
            url:"http://localhost:8080/iWork/addProjects",
            contentType: "application/json",
            data: JSON.stringify({
                projectTitle:newProjectTitle,
                projectStatus:newProjectStatus,
                projectType:newProjectType,
                projectContext:newProjectContext
            }),
            success:function (result) {
                $("#newProjectModal").modal("hide");
                window.location.reload();
            },
            error:function () {
                alert("创建失败!");
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
            },
            error:function () {
                alert("创建失败!");
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
        url:"http://localhost:8080/iWork/showProjects",
        data:"",
        dataType:"json",
        success:function (datas) {
            //请求成功调用的函数
            console.log(datas);
            var i;
            var str = "";
            for (i in datas){
                var progress = datas[i].projectProgress;
                console.log(progress);
                console.log(datas[i].createTime);
                str += "<tr>" +
                    "<td class=\"project-status\"><span class=\"label label-primary\">" + datas[i].projectStatus + "</span></td>" +
                    "<td class=\"project-title\"><a href=\"project_detail.html\">" + datas[i].projectTitle + "</a> <br /> <small>"+"创建于"+ datas[i].createTime +"</small> </td>" +
                    "<td class=\"project-completion\"> <small>当前进度：" + progress + "%</small> <div class=\"progress progress-mini\"> <div style=\"width: " + progress + "%;\" class=\"progress-bar\"></div> </div> </td>" +
                    "<td class=\"project-people\"> <img alt=\"image\" class=\"img-circle\" src=\"img/a3.jpg\"> </td>" +
                    "<td class=\"project-actions\" style=\"clear:both\"> " +
                    "<a href=\"projects.jsp#\" class=\"btn btn-white btn-sm\"><i class=\"fa fa-folder\"></i> 查看 </a>" +
                    "<a href=\"projects.jsp#\" class=\"btn btn-white btn-sm\"><i class=\"fa fa-pencil\"></i> 编辑 </a>" +
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
});

//点击不同的项目类别按钮，显示不同类别的所有项目
function showTypeProjects() {
    var pro = window.document.getElementsByName("projectType").val();
    $.ajax({
        type:"POST",
        url:"http://localhost:8080/iWork/showTypeProjects",
        data:{projectTypeId:pro},
        dataType:"json",
        success:function (datas) {
            //请求成功调用的函数
            console.log(datas);
            var i;
            var str = "";
            for (i in datas){
                var progress = datas[i].projectProgress;
                console.log(progress);
                console.log(datas[i].createTime);
                str += "<tr>" +
                    "<td class=\"project-status\"><span class=\"label label-primary\">" + datas[i].projectStatus + "</span></td>" +
                    "<td class=\"project-title\"><a href=\"project_detail.html\">" + datas[i].projectTitle + "</a> <br /> <small>"+"创建于"+ datas[i].createTime +"</small> </td>" +
                    "<td class=\"project-completion\"> <small>当前进度：" + progress + "%</small> <div class=\"progress progress-mini\"> <div style=\"width: " + progress + "%;\" class=\"progress-bar\"></div> </div> </td>" +
                    "<td class=\"project-people\"> <img alt=\"image\" class=\"img-circle\" src=\"img/a3.jpg\"> </td>" +
                    "<td class=\"project-actions\" style=\"clear:both\"> " +
                    "<a href=\"projects.jsp#\" class=\"btn btn-white btn-sm\"><i class=\"fa fa-folder\"></i> 查看 </a>" +
                    "<a href=\"projects.jsp#\" class=\"btn btn-white btn-sm\"><i class=\"fa fa-pencil\"></i> 编辑 </a>" +
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
}
