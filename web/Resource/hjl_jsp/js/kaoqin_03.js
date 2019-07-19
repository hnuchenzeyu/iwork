
$(function () {


	//1.初始化Table
	var oTable = new TableInit();
	var s = new newTableInit();
	
	
	oTable.Init();
	s.Init();
	
	$table = $("table");
    $('#ab_statistic').bootstrapTable('hideColumn','operate');
	//2.初始化Button的点击事件
	/* var oButtonInit = new ButtonInit();
	oButtonInit.Init(); */
 
  });
		 
$("#toolbar_statistic button")[2].click(function(){

});
var TableInit = function () {
var oTableInit = new Object();

//初始化Table
oTableInit.Init = function () {
	
	$("#tradeList").bootstrapTable({
	url: '/VenderManager/TradeList',     //请求后台的URL（*）
	method: 'get',           //请求方式（*）
	toolbar: '#toolbar_now',        //工具按钮用哪个容器
	striped: true,           //是否显示行间隔色
	cache: false,            //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
	pagination: true,          //是否显示分页（*）
	sortable: false,           //是否启用排序
	sortOrder: "asc",          //排序方式
	queryParams: oTableInit.queryParams,//传递参数（*）
	sidePagination: "server",      //分页方式：client客户端分页，server服务端分页（*）
	pageNumber:1,            //初始化加载第一页，默认第一页
	pageSize: 50,            //每页的记录行数（*）
	pageList: [10, 25, 50, 100],    //可供选择的每页的行数（*）
	search: true, 
	showRefresh: true, 
	clickToSelect: true,
	strictSearch: true,
	clickToSelect: true,        //是否启用点击选中行
	uniqueId: "id",           //每一行的唯一标识，一般为主键列
	cardView: false,          //是否显示详细视图
	detailView: false,          //是否显示父子表
	columns: [{
	  field: 'id',
	  title: '工号'
	}, {
	  field: 'name',
	  title: '姓名'
	}, {
	  field: 'time_m_a',
	  title: '9:00'
	}, {
	  field: 'time_n_l',
	  title: '12:00'
	}, {
	  field: 'time_n_a',
	  title: '14:00'
	}, {
	  field: 'time_a_l',
	  title: '17:00'
	}, {
	  field: 'time_night_a',
	  title: '19:00'
	}, {
	  field: 'time_night_l',
	  title: '21:00'
	},]
	});
	};

	//得到查询的参数
	oTableInit.queryParams = function (params) {
	var temp = {  //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
	limit: params.limit,  //页面大小
	offset: params.offset, //页码
	sdate: $("#stratTime").val(),
	edate: $("#endTime").val(),
	sellerid: $("#sellerid").val(),
	orderid: $("#orderid").val(),
	CardNumber: $("#CardNumber").val(),
	maxrows: params.limit,
	pageindex:params.pageNumber,
	portid: $("#portid").val(),
	CardNumber: $("#CardNumber").val(),
	tradetype:$('input:radio[name="tradetype"]:checked').val(),
	success:$('input:radio[name="success"]:checked').val(),
	};
	return temp;
	};
	return oTableInit;
};

var newTableInit = function () {
var oTableInit = new Object();
var data =[{"uid":"hjl1","uname":"special","normal__signin":"1","late_signin":"2","vocation_signin":"3","absence_signin":"4"},{"uid":"hjl1","uname":"hjl","normal__signin":"1","late_signin":"2","vocation_signin":"3","absence_signin":"4"},{"uid":"hjl1","uname":"hjl","normal__signin":"1","late_signin":"2","vocation_signin":"3","absence_signin":"4"},{"uid":"hjl1","uname":"hjl","normal__signin":"1","late_signin":"2","vocation_signin":"3","absence_signin":"4"}];
//初始化Table
function operateFormatter(value, row, index) {
            return [
                '<a type="button" class="btn  btn-sm" ><i class="glyphicon glyphicon-remove"></i></a>'
            ].join('');
        }
oTableInit.Init = function () {
	$('#ab_statistic').bootstrapTable({
	data:data,//请求方式（*）
	toolbar: '#toolbar_statistic',        //工具按钮用哪个容器
	striped: true,           //是否显示行间隔色
	cache: false,            //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
	pagination: true,          //是否显示分页（*）
	sortable: false,           //是否启用排序
	sortOrder: "asc",          //排序方式
	queryParams: oTableInit.queryParams,//传递参数（*）
	sidePagination: "server",      //分页方式：client客户端分页，server服务端分页（*）
	pageNumber:1,            //初始化加载第一页，默认第一页
	pageSize: 50,            //每页的记录行数（*）
	pageList: [10, 25, 50, 100],    //可供选择的每页的行数（*）
	strictSearch: true,
	clickToSelect: true,        //是否启用点击选中行
			//行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
	uniqueId: "uid",           //每一行的唯一标识，一般为主键列
	cardView: false,          //是否显示详细视图
	detailView: false,          //是否显示父子表
	columns: [ {
                field: 'uid',
                title: '工号'
            }, {
                field: 'uname',
                title: '姓名'
            }, {
                field: 'normal__signin',
                title: '正常打卡'
            },{
                field: 'late_signin',
                title: '迟到'
            }, {
                field: 'vocation_signin',
                title: '请假'
            }, {
                field: 'absence_signin',
                title: '旷工'
            },{
				       field: 'operate',
				       title: '操作',
				       align: 'center',			       
				       formatter: operateFormatter
        }],
			onLoadSuccess: function(){
			$('#ab_statistic').bootstrapTable('hideColumn','operate');
		}
	});
	
	};

	//得到查询的参数
	oTableInit.queryParams = function (params) {
	var temp = {  //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
	limit: params.limit,  //页面大小
	offset: params.offset, //页码
	sdate: $("#stratTime").val(),
	edate: $("#endTime").val(),
	sellerid: $("#sellerid").val(),
	orderid: $("#orderid").val(),
	CardNumber: $("#CardNumber").val(),
	maxrows: params.limit,
	pageindex:params.pageNumber,
	portid: $("#portid").val(),
	CardNumber: $("#CardNumber").val(),
	tradetype:$('input:radio[name="tradetype"]:checked').val(),
	success:$('input:radio[name="success"]:checked').val(),
	};
	return temp;
	};
	return oTableInit;
};

