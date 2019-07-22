//获取当前时间，格式YYYY-MM-DD
function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = year + seperator1 + month + seperator1 + strDate;
    return currentdate;
}

/**
 JavaScript 获取当前时间戳：

 第一种方法：

 var timestamp = Date.parse(new Date());

 结果：1280977330000
 第二种方法：

 var timestamp = (new Date()).valueOf();

 结果：1280977330748

 第三种方法：

 var timestamp=new Date().getTime()；
 结果：1280977330748

 第一种：获取的时间戳是把毫秒改成000显示，
 第二种和第三种是获取了当前毫秒的时间戳。
 */

// 这里采用获取两个日期的时间戳进行计算
// 时间戳是指格林威治时间1970年01月01日00时00分00秒(北京时间1970年01月01日08时00分00秒)起至现在的总秒数。
// 所以要求两个时间的间隔只需要将两个时间戳相减  就能得到两个时间相差的毫秒数  通过除以3600*1000得到小时数 以此类推
function time_span(faultDate,completeTime) {
    var stime = Date.parse(new Date(faultDate));
    var etime = Date.parse(new Date(completeTime));
    var usedTime = etime - stime;  //两个时间戳相差的毫秒数
    var days = Math.floor(usedTime / (24 * 3600 * 1000));
    //计算出小时数
    var leave1 = usedTime % (24 * 3600 * 1000);    //计算天数后剩余的毫秒数
    var hours = Math.floor(leave1 / (3600 * 1000));
    //计算相差分钟数
    var leave2 = leave1 % (3600 * 1000);        //计算小时数后剩余的毫秒数
    var minutes = Math.floor(leave2 / (60 * 1000));
    var time = days + "天" + hours + "时" + minutes + "分";
    return time;
}

//将时间戳换成 年-月-日
Date.prototype.Format = function (fmt) {
    var o = {
        "M+": this.getMonth() + 1, // 月份
        "d+": this.getDate(), // 日
        "h+": this.getHours(), // 小时
        "m+": this.getMinutes(), // 分
        "s+": this.getSeconds(), // 秒
        "q+": Math.floor((this.getMonth() + 3) / 3), // 季度
        "S": this.getMilliseconds() // 毫秒
    };
    if (/(y+)/.test(fmt))
        fmt = fmt.replace(RegExp.$1, (this.getFullYear() + ""));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}
new Date(1542274800000).Format('yy-MM-dd hh:mm:ss'); //"2018-11-15 17:40:00"

