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