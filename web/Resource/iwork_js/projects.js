$(document).ready(function () {

    showProjects();

});

//获取所有项目数据
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
            alert(XMLHttpRequest.responseText);
            alert(textStatus);
            //HideLoading();
        },
        //调用出错执行的函数
        error: function(){
            alert("查询失败！");
        }
    })
};

//创建新的项目
$("#create_new_project").click(function () {

});

//创建新分类
$("#save_btn").click(function () {
    var projectType = $("#create_new_project").val();

    // $.ajax({
    //     type:"POST",
    //     url:"",
    // })
})
