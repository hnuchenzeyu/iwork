$(function () {
		$('#starttime').datetimepicker({
			format : 'yyyy-mm-dd hh:ii',
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,//日期时间选择器打开之后首先显示的视图。 可接受的值：//0 分钟视图；1小时
			minView : 0, //日期时间选择器所能够提供的最精确的时间选择视图
			minuteStep:1,//分钟
			formatViewType : 'time'
		}).on('hide', function(event) {
			event.preventDefault();
			event.stopPropagation();
			var startTime = event.date;
			$("#expirationDate").datetimepicker('setStartDate',startTime);
			$("#expirationDate").val("");
		});
		$('#expirationDate').datetimepicker({
			format : 'yyyy-mm-dd hh:ii',
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,//日期时间选择器打开之后首先显示的视图。 可接受的值：//0 分钟视图；1小时
			minView : 0, //日期时间选择器所能够提供的最精确的时间选择视图
			minuteStep:1,//分钟
			formatViewType : 'time'
		}).on('hide', function(event) {
			event.preventDefault();
			event.stopPropagation();
			var endTime = event.date;
			$("#startDate").datetimepicker('setEndDate',endTime);
		});
		
		
		formatter: function(value,row,index) {
        	//通过判断单元格的值，来格式化单元格，返回的值即为格式化后包含的元素
        	var a = "";
	        	if(value == "1") {//已签
	        		var a = '<span style="color:#00ff00">'+value+'</span>';
	        	}else if(value == "0"){//未签
	        		var a = '<span style="color:#0000ff">'+value+'</span>';
	        	}else if(value == "2") {//迟到
	        		var a = '<span style="color:#FF0000">'+value+'</span>';
	        	}}else if(value == "3") {//早退
	        		var a = '<span style="color:#FFF000">'+value+'</span>';
	        	}else{
	        		var a = '<span>'+value+'</span>';
	        	}
				return a;
        }

}
