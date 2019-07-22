//==================以下是绩效======================
//创建绩效奖
$("#createPrize").click(function () {
    var type = $("#prizeType").val();//字符串
    var prizeCate = $("#prizeCate").val();//int
    var amount = $("#amount").val();//int
    var terms = $("#terms").val();//int
    var time = year + month + day;
    $.ajax({
        url: "addPrize",
        type: "post",
        contentType: "application/json",
        data: JSON.stringify({
            type: type,
            prizeClass: prizeCate,
            terms: terms,
            amount: amount,
            publishTime: time
        }),
        success: function (data) {
            document.location.reload();
        },
        error: function (data) {

        }
    });
});

//增加获得绩效奖名单
$("#createList").click(function () {
    var userId = $("#userId").val();
    var prizeId = $("#prizeId option:selected").val();
    // alert("user:"+userId+"\n"+"prize"+ prizeId);
    $.ajax({
        url: "addPrizeWinner",
        type: "post",
        contentType: "application/json",
        data: JSON.stringify({
            userId: userId,
            prizeId: prizeId
        }),
        success: function () {
            // alert("响应成功！");
            window.location.reload();
        },
        error: function () {
            alert("添加失败，请检查员工工号是否正确");
        }
    });
});

//绩效期数改变时，刷新数据
$("#terms").blur(function () {
    var termNum = $("#terms").val();
    var classPrize = null
    if($("h5").text()=="绩效奖")
        classPrize=1;
    else if($("h5").text()=="补贴")
        classPrize=2;
    window.location.href = "changePrizeAndWage?classPrize="+classPrize+"&terms=" + termNum;
});

//删除Prize选中的内容
function deletePrizeData() {
    deleteData("prizeClass");
}

//删除名单上的选中的内容
function deleteWageData() {
    deleteData("excellent_staff");
}

//删除表里选中的内容，需传递表的id
function deleteData(tableId) {
    var list = $("#" + tableId + " tbody .selected");
    var ids = "";
    for (var i = 0; i < list.length; i += 1) {
        ids += list.eq(i).data("id") + ",";
    }
    if (ids != "") {
        ids = ids.substr(0, ids.length - 1);
        var flag = confirm("您确定删除这些数据吗？");
        if (flag == true) {
            $.ajax({
                url: "delete_" + tableId,
                type: "post",
                data: {ids: ids},
                success: function () {
                    // alert("响应成功！");
                    window.location.reload();
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

//==================以下是福利======================
