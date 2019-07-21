//创建绩效奖
$("#createPrize").click(function () {
    var type = $("#prizeType").val();//字符串
    var prizeCate = $("#prizeCate").val();//int
    var amount = $("#amount").val();//int
    var terms = $("#terms").val();//int
    $.ajax({
        url: "addPrize",
        type: "post",
        contentType: "application/json",
        data:JSON.stringify({
            type:type,
            prizeClass:prizeCate,
            terms:terms,
            amount:amount
        }),
        success:function (data) {
            alert("相应成功");
        },
        error:function (data) {

        }
    });
});