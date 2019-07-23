//================以下是绩效奖和福利======================
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
    if ($("h5").text() == "绩效奖")
        classPrize = 1;
    else if ($("h5").text() == "补贴")
        classPrize = 2;
    window.location.href = "changePrizeAndWage?classPrize=" + classPrize + "&terms=" + termNum;
});

//删除Prize选中的内容
function deletePrizeData() {
    deleteData("prizeClass");
}

//删除名单上的选中的内容
function deleteWageData() {
    deleteData("excellent_staff");
}

/**
 * 删除表里选中的内容，需传递表的id
 * @param tableId 页面中显示数据的<table>标签的ID
 */
function deleteData(tableId) {
    var list = $("#" + tableId + " tbody .selected");//找到<table>里选中的行
    var ids = "";
    for (var i = 0; i < list.length; i += 1) {
        ids += list.eq(i).data("id") + ",";//获取每行data-id属性的值，并拼接起来
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

//==================以下是项目流水========================
function addProjectCost() {
    // alert("进来！");
    var id = $("#finance_id").val();
    var userId = $("#finance_creater").val();
    var time = $("#create_time").val();
    var cost = $("#finance_cost").val();
    var context = $("#finance_type").val();
    // alert(id+" "+userId+" "+time+" "+cost+" "+context);
    $.ajax({
        url: "addProjectCost",
        type: "post",
        contentType: "application/json",
        data: JSON.stringify({
            projectAccountId: id,
            projectCostTime: time,
            projectCostUser: userId,
            projectCostAmount: cost,
            projectCostContext: context
        }),
        success: function () {
            window.location.reload();
        },
        error: function () {
            alert("请注意输入的格式");
        }
    });
}

function deleteProjectCost() {
    deleteData("project_cost");
}

// function modifyRowData(obj) {
//     layer.open({
//         type: 1,
//         maxmin: true,
//         title: '项目流水',
//         fix: false,
//         shadeClose: true,
//         closeBtn: 0,
//         area: ['600px', '300px'],
//         content: $('#create_finance'),//这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
//         success: function () {
//             $("#create_time").val(year + month + day);
//         }
//     });
// }

//=====================以下是财务============================
function addFinance() {
    var financeId = $("#financeId").val();
    var createUserId = $("#createUserId").val();
    var createTime = $("#create_time").val();
    var expense = $("#expense").val();
    var expenseType = $("#expenseType option:selected").val();
    // alert(financeId+" "+createUserId+" "+createTime+" "+expense+" "+expenseType);
    $.ajax({
        url: "addFinance",
        type: "post",
        contentType: "application/json",
        data: JSON.stringify({
            financeId: financeId,
            createUserId: createUserId,
            createTime: createTime,
            expense: expense,
            expenseType: expenseType
        }),
        success: function () {
            window.location.reload();
        },
        error: function () {
            alert("添加失败...");
        }
    });
}

//删除一条Finance记录
function deleteFinance() {
    deleteData("finance");
}

//获取指定年份的饼图数据
function changeFinanceDataByYear(year) {
    var paymentOfYear = 1;
    var incomeOfYear = 1;
    var paymentOfMonths = [
        [1, 0], [2, 0], [3, 0], [4, 0],
        [5, 0], [6, 0], [7, 0], [8, 0],
        [9, 0], [10, 0], [11, 0], [12, 0]];
    var incomeOfMonths = [
        [1, 0], [2, 0], [3, 0], [4, 0],
        [5, 0], [6, 0], [7, 0], [8, 0],
        [9, 0], [10, 0], [11, 0], [12, 0]];
    // 获取数据并数据处理
    $.ajax({
        url: "getFinanceData",
        type: "get",
        data: {year: year},
        dataType: "json",
        success: function (data) {
            console.log(data);
            $.each(data, function (i, val) {//对每一条数据计算收入支出
                var month = parseInt(val.createTime.substr(4, 2));//获取月份
                if (val.expenseType == "5") {// 收入
                    incomeOfYear = incomeOfYear + parseFloat(val.expense);
                    incomeOfMonths[month - 1][1] = incomeOfMonths[month - 1][1] + parseFloat(val.expense);
                } else {// 支出
                    paymentOfYear = paymentOfYear + parseFloat(val.expense);
                    paymentOfMonths[month - 1][1] = paymentOfMonths[month - 1][1] + parseFloat(val.expense);
                }
            });
            // 将数据显示在饼图
            var gotData = [
                {label: "支出", data: paymentOfYear},
                {label: "收入", data: incomeOfYear}
            ];
            $.plot($("#flot-pie-chart"), gotData, {
                series: {
                    pie: {
                        show: true //显示饼图
                    }
                },
                legend: {
                    show: false //不显示图例
                }
            });
            // 将数据显示在折现图
            $.plot($("#flot-line-chart-multi"), [
                    {label: "支出", data: paymentOfMonths},
                    {label: "收入", data: incomeOfMonths},
                    {label: "单位：元", data: [1, 0]}
                ],
                {
                    xaxis: {
                        ticks: [[1, "一月"], [2, "二月"], [3, "三月"], [4, "四月"], [5, "五月"], [6, "六月"],
                            [7, "一月"], [8, "八月"], [9, "九月"], [10, "十月"], [11, "十一月"], [12, "十二月"], [13, " "]],
                        min: 1,
                        max: 13
                    }
                });
        },
        error: function (data) {
            console.log("读取数据错误");
        }
    });
}

function changeFinanceData(obj) {
    var year = $(obj).text().substr(0, 4); // 获取年份
    changeFinanceDataByYear(year);
}

//页面加载时获取最新一年的数据
$(document).ready(function () {
    var year = $("#latestYear").text().substr(0, 4);//获取年份
    changeFinanceDataByYear(year);
});