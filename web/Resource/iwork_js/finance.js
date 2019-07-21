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