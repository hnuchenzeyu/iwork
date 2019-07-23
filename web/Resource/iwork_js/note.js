$(document).ready(function () {
    showNotes();
});

//提示框
function createSuccess(){
    swal({
        title:"太帅了",
        text:"笔记创建成功",
        type:"success"
    })
};

function createFail(){
    swal({
        title:"可惜了",
        text:"笔记创建失败",
        type:"failure"
    })
}

//获取所有记事本记录
function showNotes() {
    var divs = window.document.getElementById("allNotes");
    // console.log("bye!bye!");

    $.ajax({
        type:"GET",
        url:"http://localhost:8080/iWork/showAllNotes",
        data:"",
        dataType:"json",
        success:function (datas) {
            //请求成功调用的函数
            // console.log("请求成功")
            // console.log(datas);
            // console.log(datas[0].noteCreateUser);
            // console.log(datas[0].noteCreateTime);
            var i;
            var noteStr = "";
            for (i in datas){
                var timeSpan = time_span(datas[i].noteCreateTime,new Date().getTime());
                var timeCurrent = new Date(datas[i].noteCreateTime).Format('yy-MM-dd');
                var noteId = datas[i].noteId;
                console.log(noteId);
                noteStr += "<div class=\"timeline-item\">" +
                        "<div name=\"noteDiv\" class=\"row delDiv\" value=\" "+ noteId +" \">" +
                            "<div class=\"col-md-2 date\" style='width: 130px'>" +
                                "创建时间：" +
                                "<br>" +
                                // "<i class=\"fa fa-file-text\"></i>"
                                timeCurrent +
                                "<br>" +
                                "<small class=\"text-navy\"> " + timeSpan + "前" + "</small>" +
                            "</div>" +
                            "<div class=\"col-md-8 content\" style=\"display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 3;overflow: hidden;\">" +
                                "<p class=\"m-b-xs\">" +
                                    "<strong>" + datas[i].noteTitle + "</strong>"+
                                "</p>" +
                                "<p style=\"display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 3;overflow: hidden;\">"+ datas[i].noteContext +"</p> " +
                            "</div>" +
                            "<div class=\"col-md-2\">" +
                                "<button class=\"btn btn-circle\" onclick='del()'>" +
                                    "<i class=\"glyphicon glyphicon-remove\"></i>" +
                                "</button>" +
                            "</div>" +
                        "</div>" +
                    "</div>"
            }
            divs.innerHTML = noteStr;
        },
        //调用执行后调用的函数
        complete: function(XMLHttpRequest, textStatus){
            // alert(XMLHttpRequest.responseText);
            // alert("查询成功！！！");
        },
        //调用出错执行的函数
        error: function(){
            alert("查询失败！");
        }
    })
};

//新建笔记
$("#createNote").click(function () {
    var noteTitle = $("#title_note").val();
    var noteContext = $("#detail_note").val();

    // console.log("创建笔记");
    $.ajax({
        type:"POST",
        url:"http://localhost:8080/iWork/createNote",
        dataType:"json",
        data:JSON.stringify({
            noteTitle:noteTitle,
            noteContext:noteContext
        }),
        contentType: "application/json",
        success:function (datas) {
            //请求成功调用的函数
            console.log("请求成功")
            createSuccess();
        },
        //调用执行后调用的函数
        complete: function(XMLHttpRequest, textStatus){
            // alert(XMLHttpRequest.responseText);
            // alert("查询成功！！！");
        },
        //调用出错执行的函数
        error: function(){
            createFail();
            alert("请求失败！");
        }
    })
});

//SweetAlert警告框
function del(){
    swal({
        title:"您确定要删除这条信息吗",
        text:"删除后将无法恢复，请谨慎操作！",
        type:"warning",
        showCancelButton:true,
        confirmButtonColor:"#DD6B55",
        confirmButtonText:"删除",
        closeOnConfirm:false
    },function(){
        delNote();
    })
};

//删除笔记
function delNote(){
    var noteId = document.getElementsByName("noteDiv").getAttribute('value');

    console.log("删除笔记");
    $.ajax({
        type:"POST",
        url:"http://localhost:8080/iWork/deleteNote",
        dataType:"json",
        data:{
            noteId:noteId
        },
        contentType: "application/json",
        success:function (datas) {
            //请求成功调用的函数
            console.log("请求成功")
            swal("删除成功！","您已经永久删除了这条信息。","success");
        },
        //调用执行后调用的函数
        complete: function(XMLHttpRequest, textStatus){
            // alert(XMLHttpRequest.responseText);
            // alert("查询成功！！！");
        },
        //调用出错执行的函数
        error: function(){
            alert("请求失败！");
            swal("删除失败！","对不起，数据删除失败。","failure");
        }
    })
};
