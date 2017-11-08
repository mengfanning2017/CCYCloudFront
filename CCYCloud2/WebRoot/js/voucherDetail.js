$(document).ready(function(){
	var voucherMonth = "";
	$('.voucherCard').on('click',function(){
		//alert($(this).children(':input[type=checkbox]').html());
		
	});
	
	
	
	
	
	$('#search-btn').on('click',function(){
		var searchKeyWord = $('#search_input').val();
		var theMonth = $('.monthList>li>.active').attr('data-month');
		getVoucherList(theMonth,searchKeyWord);
	});
	
	
	
	
	$('#monthListULVoucherDetail').empty();
	var dateNow = new Date();
	var year = dateNow.getFullYear()-1;
	var monthList = [];
	debugger;
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
		;
		var monthSpan = $('<span class="month-name-top">'+monthList[index]+'月</span>');
		var monthA = $('<a data-month="'+date_month+'" href="javascript:;" class="monthItem"></a>');
		if(monthList[index]==1){
			$(monthA).append('<span class="year">'+year+'</span>');
		}
		if(parseInt(date_month)<=parseInt(account_date)){
			$(monthA).addClass("disable");
		}
		$(monthli).append($(monthSpan)).append($(monthA));
		if(dateNow.Format("yyyyMM")==date_month){
			$(monthA).addClass("active");
		}
		$('#monthListULVoucherDetail').append($(monthli));
	}
	
	
	
	
	
	
	debugger;
	
	$('#monthListULVoucherDetail>li>a').on('click',function(){
		var searchKeyWord = $('#search_input').val();
		if(!$(this).hasClass('disable')){
			$('#monthListULVoucherDetail>li>a').removeClass('active');
			$(this).addClass('active');
			getVoucherList($(this).attr('data-month'),searchKeyWord);
		}
		
	});
	
	
	function getVoucherList(theMonth,keyWord){
		if(theMonth==""||theMonth=="undefined"||theMonth == undefined){
			var dateNow = new Date();
			theMonth=dateNow.Format('yyyyMM');
		}
		$('#voucherGridContainer').empty();
		$.ajax({
			url:dataServiceLocation+"/VCH_Voucher?strType=GetList&pageNumber=1&pageSize=30&voucherDate="+theMonth+"&strValues="+keyWord,
			dataType:'json',
			type:'post',
			sync:true,
			data:{'AccountId':account_id},
			success:function(data){
				
				for(var index =0;index<data.dataInfo.length;index++){
					var totalLend = 0;
					var totalLoan = 0;
					var voucher = data.dataInfo[index];
					var voucherDetails = data.dataInfo[index].DetailList;
					var strVoucherList = '<div data-dojo-attach-point="oucherCard" class="voucherCard clearfix" id="voucherList_'+voucher.VoucherStrId+'" widgetid="voucherList_'+voucher.VoucherStrId+'">';
					var strCheckBox = '<div data-dojo-attach-point="radioContainer" class="fl select"><input type="checkbox" data-dojo-attach-event="onclick:onChecked" data-dojo-attach-point="radio"></div>';
					strVoucherList+=strCheckBox;
					
					var strContent = '<div class="content"><div class="cardHeader">'
					+'<li class="dateLabel">日期：<span data-dojo-attach-point="createdDate">'+new Date(voucher.VoucherDate).Format('yyyy-MM-dd hh:mm:ss')+'</span></li>'
					+'<li class="voucherNoLabel">凭证字号：<span data-dojo-attach-point="voucherNo">记-'+voucher.VoucherCode+'</span></li>'
					+'<li class="accessoryNoLabel">附单据&nbsp;<span data-dojo-attach-point="accessoryNo">'+voucher.SheetNumber+'</span>&nbsp;张</li>'
					+'<li data-dojo-attach-point="auditStatusTag" class="audit-status-tag" style="display: none;"><i></i></li>'
					+'<div class="rowBtns" data-dojo-attach-point="rowBtns" style="display: none;">'
					+'<span data-dojo-attach-point="annotateBtn" class="annotateBtn" style="display: none;">批注</span> '
					+'<span data-dojo-attach-point="printBtn" class="printBtn">打印</span>'
					+'<span data-dojo-attach-point="insertBtn" class="insertBtn">插入</span>'
					+'<span data-dojo-attach-point="delBtn" class="delBtn" data-voucher-id="'+voucher.VoucherStrId+'">删除</span>'
					+'<span data-dojo-attach-point="auditBtn" style="display: none;" class="auditVoucherBtn">审核</span> '
					+'<span data-dojo-attach-point="editBtn" class="editVoucherBtn">修改</span>'
					+'</div>'
					+'<div class="annotateImg" data-dojo-attach-point="annotateImgBtn" style="display: none;"></div>'
					+'</div>';
					strVoucherList+=strContent;
					
					var detailTable = '<table data-dojo-attach-point="voucherContainer">';
					for(var detailIndex = 0 ; detailIndex<voucherDetails.length;detailIndex++){
						var vocherMonth = voucherDetails[detailIndex].ReportingPeriod;
						var creditMoney = voucherDetails[detailIndex].Moneys=='0'?'':numeral(voucherDetails[detailIndex].Moneys).format('0,0.00');
						var debitMoney = voucherDetails[detailIndex].LendingDirection =='0'?'':numeral(voucherDetails[detailIndex].LendingDirection).format('0,0.00');
						var detailTr = 
							'<tr data-voucher-detailid="'+voucherDetails[detailIndex].VoucherItemStrId+'" data-voucher-id="'+voucher.VoucherStrId+'" data-voucher-month="'+vocherMonth+'">'
							+'<td class="field_summary"><li class="textPadding">'+voucherDetails[detailIndex].AbstractContent+'</li></td>'
							+'<td class="field_subjectLongtext"><li class="textPadding">'+voucherDetails[detailIndex].SubjectCode+'&nbsp;&nbsp;'+voucherDetails[detailIndex].SubjectName+'</li></td>'
							+'<td class="field_jfmoney"><span class="textPadding field-jfBalance">'+creditMoney+'</span></td>'
							+'<td class="field_dfmoney"><span class="textPadding field-dfBalance">'+debitMoney+'</span></td>'
							+'</tr>';
						detailTable+=detailTr;
						totalLend +=parseInt(parseFloat(voucherDetails[detailIndex].Moneys) * 100);
						totalLoan +=parseInt(parseFloat(voucherDetails[detailIndex].LendingDirection) * 100);
					}
					detailTable+='</table>';
					strVoucherList+=detailTable;
					
					var strTotal = '<div class="total"><table><tbody><tr>'
						+'<td class="headline"><li class="textPadding"><span>总计</span></li></td>'
						+'<td class="field_jfmoney"><li data-dojo-attach-point="total_jfmoney" class="textPadding"><b>'+numeral(totalLend/100).format('0,0.00')+'</b></li></td>'
						+'<td class="field_dfmoney"><li data-dojo-attach-point="total_dfmoney" class="textPadding"><b>'+numeral(totalLoan/100).format('0,0.00')+'</b></li></td>'
						+'</tr></tbody></table></div>';
					strVoucherList+=strTotal;
					strVoucherList+="</div></div>";
					$('#voucherGridContainer').append(strVoucherList);
					$('div[class="voucherCard clearfix"]').on('mouseover',function(){
						//debugger;
						$(this).children('.content').children('.cardHeader').children('.rowBtns').show();
					}).on('mouseleave',function(){
						//debugger;
						$(this).children('.content').children('.cardHeader').children('.rowBtns').hide();
					});
				}
				$('.delBtn').on('click',function(){
					if(confirm("是否要删除本凭证？")){
						var delete_voucher_id = $(this).attr('data-voucher-id');
	//					debugger;
						var details_ids = '';
						var voucherMonth = "";
						$.each( $('tr[data-voucher-id='+delete_voucher_id+']'),function(index,item){
							details_ids +=$(item).attr('data-voucher-detailid')+',';
							voucherMonth =$(item).attr('data-voucher-month');
						});
						details_ids=details_ids.substring(0,details_ids.length-1);
						$.ajax({
							url:dataServiceLocation+"/VCH_VoucherOrListDetail?voucherId="+delete_voucher_id+"&voucherIdList="+details_ids+"&voucherDate="+voucherMonth,
							type:'delete',
							dataType: "json",
							success:function(result){
								if(result.result){
									alert('删除成功');
									getVoucherList(voucherMonth,'');
								}
							}
						});
					}
					return false;
				});
			}
		});
	}
	$('#dijitInputContainer').on('click',function(){
		var searhText = $('#search_input').val();
		$('#dijitPlaceHolder').hide();
		
	});

	
	// 对Date的扩展，将 Date 转化为指定格式的String
	// 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符， 
	// 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字) 
	// 例子： 
	// (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423 
	// (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18 
	Date.prototype.Format = function (fmt) { //author: meizz 
	    var o = {
	        "M+": this.getMonth() + 1, //月份 
	        "d+": this.getDate(), //日 
	        "h+": this.getHours(), //小时 
	        "m+": this.getMinutes(), //分 
	        "s+": this.getSeconds(), //秒 
	        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
	        "S": this.getMilliseconds() //毫秒 
	    };
	    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
	    for (var k in o)
	    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
	    return fmt;
	};
	getVoucherList((new Date()).Format('yyyyMM'),'');
	
});

