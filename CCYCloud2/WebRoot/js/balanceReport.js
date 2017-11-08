$(document).ready(function(){
//	$.ajax({
//		url:webServiceLocation+'/FrontPro/resource.jsp',
//		success:function(data){
//			alert(data);
//		},
//		dataType: "string",
//		type: "get"
//	});
//	debugger;
	$('#monthListULBalanceReport').empty();
	var dateNow = new Date();
	var year = dateNow.getFullYear()-1;
	var monthList = [];
//	debugger;
	for(var i=1;i<=dateNow.getMonth()+1;i++){
		monthList.push(i);
	}
	for(var j=12;j>dateNow.getMonth()+1;j--){
		monthList.splice(0, 0, j); 
	}
	for(var index=0;index<monthList.length;index++){
		if(monthList[index]==1){
			year = dateNow.getFullYear();
		}
		var date_month = year+(monthList[index]<10?"0":"")+monthList[index] ;
		var monthli = $('<li class=""></li>');
		var monthA = $('<a data-month="'+date_month+'" href="javascript:;" class="monthItem ">'+monthList[index]+'月</a>');
		if(parseInt(date_month)<=parseInt(account_date)){
			$(monthA).addClass("disable");
		}
		$(monthli).append($(monthA));
		if(dateNow.Format("yyyyMM")==date_month){
			$(monthA).addClass("active");
		}
		$('#monthListULBalanceReport').append($(monthli));
	}
	

	$('#monthListULBalanceReport>li>a').on('click',function(){
		
		if(!$(this).hasClass('disable')){
			$('#monthListULBalanceReport>li>a').removeClass('active');
			$(this).addClass("active");
			var theMonth = $(this).attr('data-month');
			getBalanceReport(theMonth);
			
		}
	});
	getBalanceReport(dateNow.Format("yyyyMM"));
	function getBalanceReport(theMonth){
		$('#balanceReport-grid').empty().treegridData({
	        id: 'SubjectStrId',
	        parentColumn: 'ParentStrId',
	        type: "GET", //请求数据的ajax类型
	        url: webServiceLocation+'/FrontPro/balanceSource',   //请求数据的ajax的url
	        ajaxParams: {companyId:CompanyId,account_id:account_id,theMonth:theMonth,strType:'0'}, //请求数据的ajax的data属性
	        expandColumn: 'SubjectCode',//在哪一列上面显示展开按钮
	        striped: true,   //是否各行渐变色
	        bordered: true,  //是否显示边框
	        expandAll: true,  //是否全部展开
	        columns: [
	            {
	                title: '科目编码',
	                field: 'SubjectCode',
	                color:'',
	                display : true,
	                dataDesign:""
	            },
	            {
	                title: '科目名称',
	                field: 'SubjectName',
	                color:'',
	                display : true,
	                dataDesign:""
	            },
	            {
	                title: '期初借方余额',
	                field: 'BalanceDebit',
	                color:'#f8f8f8',
	                display : true,
	                dataDesign:"",
	                money:'0,0.00'
	            },
	            {
	                title: '期初贷方余额',
	                field: 'BalanceCebit',
	                color:'#f8f8f8',
	                display : true,
	                dataDesign:"",
	                money:'0,0.00'
	            },
	            {
	                title: '本期借方发生额',
	                field: 'PeriodDebit',
	                color:'',
	                display : true,
	                dataDesign:"",
	                money:'0,0.00'
	            },
	            {
	                title: '本期贷方发生额',
	                field: 'PeriodCebit',
	                color:'',
	                display : true,
	                dataDesign:"",
	                money:'0,0.00'
	            },
	            {
	                title: '期末借方余额',
	                field: 'EndtimeDebit',
	                color:'#f8f8f8',
	                display : true,
	                dataDesign:"",
	                money:'0,0.00'
	            },
	            {
	                title: '期末贷方余额',
	                field: 'EndtimeCebit',
	                color:'#f8f8f8',
	                display : true,
	                dataDesign:"",
	                money:'0,0.00'
	            },
	            {
	                title: '本年累计借方余额',
	                field: 'Total_Dr_Count',
	                color:'',
	                display : false,
	                dataDesign:"banlance-year",
	                money:'0,0.00'
	            },
	            {
	                title: '本年累计贷方余额',
	                field: 'Total_Cb_Count',
	                color:'',
	                display : false,
	                dataDesign:"banlance-year",
	                money:'0,0.00'
	            }
	        ]
	        //expandAll: false
	    });
	}
	
	
	$('#toggleSelectType').on('mouseover',function(){
		$('#dijitPopupDiv').show();
	});
	$('.chanjetCommandMenu ul').on('mouseleave',function(){
		$('#dijitPopupDiv').hide();
	});
	$('#common_form_HeaderMenu_1>ul>li').on('click',function(){
		$(this).children('a').children('input[type=checkbox]').click();
	});
	$('#common_form_HeaderMenu_1>ul>li>a>input[type=checkbox]').on('click',function(){
		var datavalue = $(this).val();
		if($(this).is(':checked')){
			$('th[data-design-value='+datavalue+']').show();
			$('td[data-design-value='+datavalue+']').show();
		}else{
			$('th[data-design-value='+datavalue+']').hide();
			$('td[data-design-value='+datavalue+']').hide();
		}
	});
		
});