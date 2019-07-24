// =====================优秀员工=======================
function addHonor() {
    // 将选项列表中的option显示到“荣耀”下，并移除选中添加了的option
    if ($("#praises").children().length > 0) {
        var praise = $("#praises option:selected").val();
        $("#honor").append("<label>" + praise + "</label><br>");
        $("#praises option:selected").remove();
    }
};

function saveHonor() {
    //保存选中的项到数据库
    var workerId = $("#workerId").val();
    var praises = "";
    for (var i = 0; i < $("#honor").children().length; i += 2) {
        praises += $("#honor").children().eq(i).text() + ",";
    }
    praises = praises.substr(0, praises.length - 1);
    $.ajax({
        url: "addExcellence",
        type: "post",
        contentType: "application/json",
        data: JSON.stringify({
            excellentUserId: workerId,
            excellrntReason: praises
        }),
        success: function () {
            window.location.reload();
        },
        error: function () {
            alert("插入失败");
        }
    });
}

//删除一条元素
function deleteThisRow(obj) {
    if (confirm("是否删除这条数据吗？") == true) {
        var row = $(obj).parent().parent().parent().parent();
        var excellentID = $(obj).data("id");
        $.ajax({
            url: "deleteExcellentStaff",
            type: "post",
            data: {excellentStaffId: excellentID},
            success: function () {
                row.remove();
            },
            error: function () {
                alert("删除失败。。");
            }
        });
    }
}

//====================考勤名单=================================
function createAbsence() {
    var absenceUserId = $("#userId").val();
    var absenceType = $("#absenceType option:selected").text()
    var absenceTimeQuantum = $("#absenceTimeQuantum option:selected").text();
    var lateTime = $("#lateTime").val();
    $.ajax({
        url: "addAbsence",
        type: "post",
        contentType:"application/json",
        data:JSON.stringify({
            absenceUserId:absenceUserId,
            absenceTimeQuantum:absenceTimeQuantum,//!!!
            lateTime:lateTime,
            absenceType:absenceType
        }),
        success:function () {
            window.location.reload();
        },
        error:function () {
            alert("添加失败，请检查员工工号是否正确。");
        }
    });
};
function deleteData(tableId) {
    var list = $("#" + tableId + " tbody .selected");//找到<table>里选中的行
    var ids = "";
    for (var i = 0; i < list.length; i += 1) {
        ids += list.eq(i).children().eq(1).text() + ",";//获取每行data-id属性的值，并拼接起来
    }
    if (ids != "") {//数据不为空
        ids = ids.substr(0, ids.length - 1);
        var flag = confirm("您确定删除这些数据吗？");
        if (flag == true) {
            $.ajax({
                url: "delete_" + tableId,
                type: "post",
                data: {ids: ids},
                success: function () {
                    for (var i = 0; i < list.length; i += 1) {
                        list.eq(i).remove();//获取每行data-id属性的值，并拼接起来
                    }
                },
                error: function () {
                    alert("删除失败，可能名单上存有该记录的信息");
                }
            });
        }
    } else {
        alert("请选择要删除的项");
    }
};
function deleteAbsence() {
    deleteData("listTable");
}