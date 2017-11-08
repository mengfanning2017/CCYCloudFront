$(document).ready(function(){
	var newlineCount=1;
	var autoSummaryText_url = dataServiceLocation+"/VCH_VoucherAbstract?strType=GetList";
	$('.summaryTextarea').on('keyup',function(){
		var search_text = $(this).val();
		var thisTextarea = $(this);
		$('.summaryTextarea').autocomplete({
			source:function(request, response){
				$.ajax({
					url: autoSummaryText_url,
					dataType: "json",
					type: "post",
					data:{'AccountId':account_id,'AbstractContent':search_text},
					success: function(data){
						console.log(data);  
						response( $.map( data.dataInfo.ds, function( item ) {  
							return {  
						     label: item.abstract_content,  
						     value: item.AbstractStrId  
							}  
						 })); 
					},
					async: false
					
				});
			},
			minChars:0,
			max:10,
			select: function( event, ui ) { //移动键盘上下键，自动将下拉列表的数据放入到文本框，不过不写这个配置也是可以的，默认就行，具体这个还不知道是做什么  
			    $(thisTextarea).parent('.voucherInput').prevAll('.voucherText').text(ui.item.label);  
			    $(thisTextarea).parent('.voucherInput').prevAll('.voucherText').attr('data-AbstractId',ui.item.value)
			    $(thisTextarea).val(ui.item.label);
			    $(thisTextarea).text(ui.item.label);
			} 
		});
	}).on('blur',function(){
		$(this).parent('.voucherInput').prevAll('.voucherText').text($(this).val());
	});
	$('.voucherMoneyLendinput,.voucherMoneyLoaninput').on('blur',function(){
		var liArray = $(this).parent().prevAll('ul').children('li');
		var money = $(this).val();
		if( money==''||money==""||isNaN(money) || parseFloat(money)==0){
			$(this).parent().prevAll('ul').children('li').text('');
			if(money==''||money==""||isNaN(money)){
				$(this).val('');
			}
			calculateMoney('Loan');
			calculateMoney('Lend');
			return;
		}else if(parseFloat(money)<0){
			$(this).parent().prevAll('ul').children('li').css('color','#F56967');
			money = money.replace('-', '');
		}
		var pointIndex = money.indexOf('.');
		if(pointIndex==-1){
			money += '00';
		}else{
			if(money.substr(pointIndex+1).length==1){
				money = money.replace('.', '');
				money+='0';
			}else{
				money = money.replace('.', '');
				money = money.substring(0, pointIndex+2);
			}
		}
		
		var moneyArray = money.split("");
		var strIndex = moneyArray.length-1;
		for (var int = liArray.length-1; int >= 0; int--) {
			var array_element = liArray[int];
			$(array_element).text(moneyArray[strIndex]);
			strIndex --;
			if(strIndex<0){
				calculateMoney('Loan');
				calculateMoney('Lend');
				return false;
			}
		}
		
	}).on('keyup',function(){
		var money = $(this).val();
		var money_type = $(this).attr('data-money-type');
		var target_type = "loan";
		if(money_type == "loan"){
			target_type="lend";
		}
		if(money != ''){
			$(this).parent().parent().parent().children('li[type='+target_type+']').children('.voucherMoney').children('li').text('');
			$(this).parent().parent().parent().children('li[type='+target_type+']').children('.voucherInput').children('input').val('');
			if(isNaN(money)&&money!="-"){
				$(this).val('');
			}else if(money.indexOf('.')!=-1 && money.substr(money.indexOf('.')+2).length>1){
				money = money.substring(0, money.indexOf('.')+3);
				$(this).val(money);
			}
		}
	});
	function calculateMoney(moneyType){
		var sumMoney = 0;
		$('.voucherMoney'+moneyType+'input').each(function(index,inputText){
			var money=$(inputText).val();
			if(money!=""){
				var moneyNum = parseInt(parseFloat(money)*100);
				sumMoney= sumMoney + moneyNum;
			}
		});
		$('#voucherSum'+moneyType+'Txt').val(sumMoney/100);
		if(moneyType == 'Lend')$('#voucheChineseTotal').text(digitUppercase(sumMoney/100));
		if(sumMoney==0){
			$('#voucherSum'+moneyType+'Ul>li').text('').css('color','#464646');
		}else{
			var sumMoneyStr = sumMoney+"";
			
			sumMoneyStr = sumMoneyStr.replace('.', '');
		
			var liArray = $('#voucherSum'+moneyType+'Ul>li');
			if(sumMoney<0){
				$('#voucherSum'+moneyType+'Ul>li').css('color','#F56967');
				sumMoneyStr =sumMoneyStr.replace('-', '');
			}else{
				$('#voucherSum'+moneyType+'Ul>li').css('color','#464646');
			}
			var moneyArray = sumMoneyStr.split("");
			var strIndex = moneyArray.length-1;
			for (var int = liArray.length-1; int >= 0; int--) {
				var array_element = liArray[int];
				$(array_element).text(moneyArray[strIndex]);
				strIndex --;
				if(strIndex<0){
					return false;
				}
			}
		}
	}
	
	$('.voucherRow>li>ul.voucherMoney').on('click',function(){
		$('.voucherText').show();
		$('.voucherInput').hide();
		$('#chanjet_form_PopListBox_0').hide();
		$(this).hide();
		$(this).nextAll().show().children('input[type=text]').focus();
	});
	$('.voucherInput>input').on('blur',function(){
		$(this).parent().hide();
		$(this).parent().prev('.voucherMoney').show();
	});
	$('.voucherSummary').on('click',function(){
		$('.voucherText').show();
		$('.voucherInput').hide();
		$('#chanjet_form_PopListBox_0').hide();
		$(this).children('.voucherText').hide();
		$(this).children('.voucherInput').show().children('textarea').focus();
		
	});

	/****
	 *  新增科目
	 */
	$('.addSubjectInVoucher').on('click',function(){
		$('#chanjet_form_PopListBox_0').hide();
		$('#dialog_addNewSubject').dialog({
			title:'新增科目',
			width:350,
			modal:true,
			buttons: { 
				"确认": function() { $(this).dialog("close"); },
				"取消":function(){$(this).dialog("close");
				} 
			} 
		});
	});
	/***
	 * 科目点击
	 */
	$('.voucherSubject').on('click',function(){
		$('.voucherText').show();
		$('.voucherInput').hide();
		$(this).children('.voucherText').hide();
		var offset = $(this).children('.voucherInput').show().children('textarea').offset();
		//alert(offset.top+'-----'+offset.left);
		//$(this).append($('#chanjet_form_PopListBox_0'));
		$.ajax({
			url:dataServiceLocation+"/ACC_AccountSubject?strType==GetList",
			dataType: "json",
			type:"post",
			data:{ "AccountId": account_id,"CompanyId":CompanyId,"LastStage":1},
			success:function(data){
				$('#popListAreaUl').empty();
				var subjectArray = data.dataInfo;
				var liStr = "";
				for(var i=0;i<subjectArray.length;i++){
					liStr +='<li class="PopListBoxItem unselected" data-subject-code="'+subjectArray[i].SubjectCode+'" data-subject-id="'+subjectArray[i].SubjectStrId+'" data-subject-name="'+subjectArray[i].SubjectName+'">'+subjectArray[i].SubjectCode+' '+subjectArray[i].SubjectName+'</li>';
				}
				$('#popListAreaUl').html(liStr);
				$('#popListAreaUl').children('li').bind('click',function(){
					popListItemClick(this);
				});
			}
		});
		$('#chanjet_form_PopListBox_0').css({'top':offset.top-184}).show();
		$('#chanjet_form_PopListBox_0').attr('data-target-text',$(this).children('.voucherText').attr('id'));
		$('#chanjet_form_PopListBox_0').attr('data-target-input',$(this).children('.voucherInput').attr('id'));
		$('#chanjet_form_PopListBox_0').attr('data-target-money',$(this).children('.voucherSubjectMoney').attr('id'));
		$('#chanjet_form_PopListBox_0').attr('data-target-lend',$(this).nextAll('.voucherLend').attr('id'));
		$(this).children('.voucherInput').show().children('textarea').focus();
		$('.popListBox').show();
		
	});
	$('ul[id^=voucherInput_subject_]').children('textarea').on('keyup',function(){
		var inputStr = $(this).val().trim();
		$.ajax({
			url:dataServiceLocation+"/ACC_AccountSubject?strType==GetList",
			dataType: "json",
			type:"post",
			data:{ "AccountId": account_id,"CompanyId":CompanyId,"SubjectName":inputStr},
			success:function(data){
				$('#popListAreaUl').empty();
				var subjectArray = data.dataInfo;
				var liStr = "";
				for(var i=0;i<subjectArray.length;i++){
					liStr +='<li class="PopListBoxItem unselected" data-subject-code="'+subjectArray[i].SubjectCode+'" data-subject-id="'+subjectArray[i].SubjectStrId+'" data-subject-name="'+subjectArray[i].SubjectName+'">'+subjectArray[i].SubjectCode+' '+subjectArray[i].SubjectName+'</li>';
				}
				$('#popListAreaUl').html(liStr);
				$('#popListAreaUl').children('li').bind('click',function(){
					popListItemClick(this);
				});
			}
		});
	});
	
	$('.PopListBoxItem').bind('click',function(){
		popListItemClick(this);
	});
	
	
	function popListItemClick(boxitem){
		var data_target_text_id = $('#chanjet_form_PopListBox_0').attr('data-target-text');
		var data_target_input_id = $('#chanjet_form_PopListBox_0').attr('data-target-input');
		var data_target_money_id = $('#chanjet_form_PopListBox_0').attr('data-target-money');
		var data_target_lend_id = $('#chanjet_form_PopListBox_0').attr('data-target-lend');
		/*查询科目余额*/
//		$.ajax({
//			url:"",
//			data:{}
//		});
		var subject_id = $(boxitem).attr('data-subject-id');
		var subject_code=$(boxitem).attr('data-subject-code');
		var subject_name=$(boxitem).attr('data-subject-name');
		
		$('#'+data_target_text_id).text($(boxitem).text()).attr('data-subject-name',subject_name).attr('data-subject-id',subject_id).attr('data-subject-code',subject_code);
		$('#'+data_target_input_id).children('textarea').text($(boxitem).text());
		$('#'+data_target_input_id).children('textarea').val($(boxitem).text());
		$('#'+data_target_money_id).children('li').text('余额：0000');
		$('#'+data_target_input_id).hide();
		$('#'+data_target_text_id).show();
		$('#chanjet_form_PopListBox_0').hide();
		$('#'+data_target_lend_id).children('.voucherMoney').click();
	}
	
	
	/***
	 * 上级科目  自动补全
	 */
	$('#txt_parent_subject').on('keyup',function(){
		
		var url = "";
		//alert($(this).val());
		$(this).autocomplete({source: ["c++", "java", "php", "coldfusion", "javascript", "asp", "ruby" ]});
	});
	/***
	 * 科目名称校验
	 */
	$('#txt_subject_name').on('blur',function(){
		var subject_name = $('#txt_subject_name').val().trim();
		if(subject_name ==""){
			$(this).nextAll('.error-icon').show();
		}
	});
	
//	$('.voucherMoney').on('dblclick',function(){
//		
//		var str = $(this).attr('class');
//		//$(this).attr('colspan','11').empty().append('<input type="text" id="'+str+'" style="width:100%;height:100%;"/>');
//		$(this).nextAll('.'+str).hide();
//		$(this).prevAll('.'+str).hide();
//		$(this).hide();
//		$(this).after($('<td colspan="11"><input type="text" id="'+str+'" style="width:100%;height:100%;"/></td>'));
//		//$(this).appendTo('<td colspan="11"><input type="text" id="'+str+'"/></td>');
//	});

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
	var date = (new Date()).Format('yyyy-MM-dd');
	$('#voucher-month').val(date);
	$('#voucher-month').datetimepicker({
			format:'yyyy-mm-dd',
			language:'zh-CN',
			minView:2,
			startDate:account_date
	}).on('changeDate',function(){
//		debugger;
		$.ajax({ 
			url:dataServiceLocation+'/VCH_Voucher?companyId='+CompanyId+'&accountId='+account_id+'&voucherDate='+new Date($('#voucher-month').val()).Format('yyyyMM'),
		//	async: true,
			success: function(data){
				var voucherid=data.dataInfo;
				$('#voucherid').text(voucherid);
			},
			type: "get",
			dataType: "JSON"
		});
	});
	
	/* start 设置凭证编号 */
//	var voucherid = '9';
	var dateVoucherCode =new Date($('#voucher-month').val()).Format('yyyyMM');
	$.ajax({ 
		url:dataServiceLocation+'/VCH_Voucher?companyId='+CompanyId+'&accountId='+account_id+'&voucherDate='+(new Date($('#voucher-month').val())).Format('yyyyMM'),
	//	async: true,
		success: function(data){
			var voucherid=data.dataInfo;
			$('#voucherid').text(voucherid);
		},
		type: "get",
		dataType: "JSON"
	});
	
	/* end 设置凭证编号 */
	
	$('#voucherSheetNumber').on('keyup',function(){
		var sheetNum = $(this).val();
		if(isNaN(sheetNum)){
			$(this).val('0');
		}
	});
	$('.voucherItem').on('mouseover',function(){
		$(this).children('.voucherAdd').children('.addBtn').show();
		$(this).children('.voucherDel').children('.delBtn').show();
	}).on('mouseout',function(){
		$(this).children('ul').children('.addBtn').hide();
		$(this).children('ul').children('.delBtn').hide();
	});
	
	/**新增行  begin**/
	$('.addBtn').on('click',function(){
		var newLine = '<div  class="voucherItem" id="newline_0'+newlineCount+'">'+$('#displaynoneDiv').html()+'</div>';
		$('#voucherBody').append(newLine);
		$('#newline_0'+newlineCount+'>.voucherRow').on('mouseover',function(){
			$(this).children('.voucherAdd').children('.addBtn').show();
			$(this).children('.voucherDel').children('.delBtn').show();
		}).on('mouseout',function(){
			$(this).children('ul').children('.addBtn').hide();
			$(this).children('ul').children('.delBtn').hide();
		});
		$('#newline_0'+newlineCount+'>.voucherRow>.voucherSummary>.voucherInput').children('textarea').on('click',function(){
			var search_text = $(this).val();
			var thisTextarea = $(this);
			$('.summaryTextarea').autocomplete({
				source:function(request, response){
					$.ajax({
						url: autoSummaryText_url,
						dataType: "json",
						type: "post",
						data:{'AccountId':account_id,'AbstractContent':search_text},
						success: function(data){
							console.log(data);  
							response( $.map( data.dataInfo.ds, function( item ) {  
								return {  
							     label: item.abstract_content,  
							     value: item.AbstractStrId
								}  
							 })); 
						},
						async: false
					});
				},
				minChars:0,
				max:10,
				select: function( event, ui ) { //移动键盘上下键，自动将下拉列表的数据放入到文本框，不过不写这个配置也是可以的，默认就行，具体这个还不知道是做什么  
				    $(thisTextarea).parent('.voucherInput').prevAll('.voucherText').text(ui.item.label);  
				    $(thisTextarea).parent('.voucherInput').prevAll('.voucherText').attr('data-AbstractId',ui.item.value);
				    $(thisTextarea).val(ui.item.label);
				    $(thisTextarea).text(ui.item.label);
				}  
			});
		}).on('blur',function(){
			$(this).parent('.voucherInput').prevAll('.voucherText').text($(this).val());
		});;
		$('#newline_0'+newlineCount+'>.voucherRow>.voucherSummary').on('click',function(){
			$('.voucherText').show();
			$('.voucherInput').hide();
			$('#chanjet_form_PopListBox_0').hide();
			$(this).children('.voucherText').hide();
			$(this).children('.voucherInput').show().children('textarea').focus();
		});
		/*
		 * */
		$('#newline_0'+newlineCount+'>.voucherRow>.voucherLend>.voucherInput>.voucherMoneyLendinput,#newline_0'+newlineCount+'>.voucherRow>.voucherLoan>.voucherInput>.voucherMoneyLoaninput').on('blur',function(){
			var liArray = $(this).parent().prevAll('ul').children('li');
			var money = $(this).val();
			if( money==''||money==""||isNaN(money) || parseFloat(money)==0){
				$(this).parent().prevAll('ul').children('li').text('');
				if(money==''||money==""||isNaN(money)){
					$(this).val('');
				}
				calculateMoney('Loan');
				calculateMoney('Lend');
				return;
			}else if(parseFloat(money)<0){
				$(this).parent().prevAll('ul').children('li').css('color','#F56967');
				money = money.replace('-', '');
			}
			var pointIndex = money.indexOf('.');
			if(pointIndex==-1){
				money += '00';
			}else{
				if(money.substr(pointIndex+1).length==1){
					money = money.replace('.', '');
					money+='0';
				}else{
					money = money.replace('.', '');
					money = money.substring(0, pointIndex+2);
				}
			}
			
			var moneyArray = money.split("");
			var strIndex = moneyArray.length-1;
			for (var int = liArray.length-1; int >= 0; int--) {
				var array_element = liArray[int];
				$(array_element).text(moneyArray[strIndex]);
				strIndex --;
				if(strIndex<0){
					calculateMoney('Loan');
					calculateMoney('Lend');
					return false;
				}
			}
			
		}).on('keyup',function(){
			var money = $(this).val();
			var money_type = $(this).attr('data-money-type');
			var target_type = "loan";
			if(money_type == "loan"){
				target_type="lend";
			}
			if(money != ''){
				$(this).parent().parent().parent().children('li[type='+target_type+']').children('.voucherMoney').children('li').text('');
				$(this).parent().parent().parent().children('li[type='+target_type+']').children('.voucherInput').children('input').val('');
				if(isNaN(money)&&money!="-"){
					$(this).val('');
				}else if(money.indexOf('.')!=-1 && money.substr(money.indexOf('.')+2).length>1){
					money = money.substring(0, money.indexOf('.')+3);
					$(this).val(money);
				}
			}
		});
		
		

		$('#newline_0'+newlineCount+'>.voucherRow>li>.voucherMoney').on('click',function(){
			$('.voucherText').show();
			$('.voucherInput').hide();
			$('#chanjet_form_PopListBox_0').hide();
			$(this).hide();
			$(this).nextAll().show().children('input[type=text]').focus();
		});
		$('#newline_0'+newlineCount+'>.voucherRow>li>.voucherInput>input').on('blur',function(){
			$(this).parent().hide();
			$(this).parent().prev('.voucherMoney').show();
		});

		$('#newline_0'+newlineCount+'>.voucherRow>.voucherSubject').on('click',function(){
			$('.voucherText').show();
			$('.voucherInput').hide();
			$(this).children('.voucherText').hide();
			var offset = $(this).children('.voucherInput').show().children('textarea').offset();
			//alert(offset.top+'-----'+offset.left);
			//$(this).append($('#chanjet_form_PopListBox_0'));
			$.ajax({
				url:dataServiceLocation+"/ACC_AccountSubject?strType==GetList",
				dataType: "json",
				type:"post",
				data:{ "AccountId": account_id,"CompanyId":CompanyId},
				success:function(data){
					$('#popListAreaUl').empty();
					var subjectArray = data.dataInfo;
					var liStr = "";
					for(var i=0;i<subjectArray.length;i++){
						liStr +='<li class="PopListBoxItem unselected" data-subject-code="'+subjectArray[i].SubjectCode+'" data-subject-id="'+subjectArray[i].SubjectStrId+'" data-subject-name="'+subjectArray[i].SubjectName+'">'+subjectArray[i].SubjectCode+' '+subjectArray[i].SubjectName+'</li>';
					}
					$('#popListAreaUl').html(liStr);
					$('#popListAreaUl').children('li').bind('click',function(){
						popListItemClick(this);
					});
				}
			});
			$('#chanjet_form_PopListBox_0').css({'top':offset.top-184}).show();
			$('#chanjet_form_PopListBox_0').attr('data-target-text',$(this).children('.voucherText').attr('id'));
			$('#chanjet_form_PopListBox_0').attr('data-target-input',$(this).children('.voucherInput').attr('id'));
			$('#chanjet_form_PopListBox_0').attr('data-target-money',$(this).children('.voucherSubjectMoney').attr('id'));
			$('#chanjet_form_PopListBox_0').attr('data-target-lend',$(this).nextAll('.voucherLend').attr('id'));
			$(this).children('.voucherInput').show().children('textarea').focus();
			$('.popListBox').show();
			
		});
		$('#newline_0'+newlineCount+'>.voucherRow>.voucherSubject>.voucherInput').attr('id','newline_voucherInput_subject_'+newlineCount);
		$('#newline_0'+newlineCount+'>.voucherRow>.voucherSubject>.voucherText').attr('id','newline_voucherText_subject_'+newlineCount);
		$('#newline_0'+newlineCount+'>.voucherRow>.voucherSubject>.voucherSubjectMoney').attr('id','newline_voucherSubjectMoney_'+newlineCount);
		$('#newline_0'+newlineCount+'>.voucherRow>.voucherLend').attr('id','newline_voucherLend_'+newlineCount);
		
		$('#newline_0'+newlineCount+'>.voucherRow>.voucherSubject>.voucherInput').children('textarea').on('keyup',function(){
			var inputStr = $(this).val().trim();
			$.ajax({
				url:dataServiceLocation+"/ACC_AccountSubject?strType==GetList",
				dataType: "json",
				type:"post",
				data:{ "AccountId": account_id,"CompanyId":CompanyId,"SubjectName":inputStr},
				success:function(data){
					$('#popListAreaUl').empty();
					var subjectArray = data.dataInfo;
					var liStr = "";
					for(var i=0;i<subjectArray.length;i++){
						liStr +='<li class="PopListBoxItem unselected" data-subject-code="'+subjectArray[i].SubjectCode+'" data-subject-id="'+subjectArray[i].SubjectStrId+'" data-subject-name="'+subjectArray[i].SubjectName+'">'+subjectArray[i].SubjectCode+' '+subjectArray[i].SubjectName+'</li>';
					}
					$('#popListAreaUl').html(liStr);
					$('#popListAreaUl').children('li').bind('click',function(){
						popListItemClick(this);
					});
				}
			});
		});
		
		newlineCount+=1;
		
	});
	/**新增行  end**/
	
	function checkLendAndLoan(){
		var lend = $('#voucherSumLendTxt').val().trim();
		var loan = $('#voucherSumLoanTxt').val().trim();
		if(lend != "" && loan!=""&&lend==loan){
			return true;
		}else{
			alert("借贷不可为空，并借贷必相等。");
			return false;
		}
	}
	
	function saveVoucher(withNewAdd){
		if(checkLendAndLoan()){
			var flag = true;
			if(!withNewAdd){
				$('#btn-voucher-save').attr('disabled','disabled');
				$('#btn-save-and-addNew').hide();
				$('#btn-addNew').show();
			}
			var voucher = new Object();
			var itemArray = new Array();
			voucher.CompanyId = CompanyId;
			voucher.AccountId = account_id;
			voucher.TouchingId = user_id;
			voucher.TouchingName = user_name;
			voucher.AuditionId = user_id;
			voucher.AuditingName = user_name;
			voucher.AccountingId = user_id;
			voucher.AccountingName = user_name;
			voucher.SheetNumber = $('#voucherSheetNumber').val();
			voucher.TouchingTime =  (new Date()).Format('yyyy-MM-dd hh:mm:ss');
			voucher.SaveTime = (new Date()).Format('yyyy-MM-dd hh:mm:ss');
			voucher.VoucherDate = $('#voucher-month').val()+' 00:00:00';
			
			$('.voucherRow').each(function(index,item){
				
				var abstract = $(item).children('.voucherSummary').children('.voucherText').text();
				var abstract_id = $(item).children('.voucherSummary').children('.voucherText').attr('data-AbstractId');
				var subject_name = $(item).children('.voucherSubject').children('.voucherText').attr('data-subject-name');
				var subject_id=$(item).children('.voucherSubject').children('.voucherText').attr('data-subject-id');
				var subject_code=$(item).children('.voucherSubject').children('.voucherText').attr('data-subject-code');
				var moneyLend = $(item).children('.voucherLend').children('.voucherInput').children('.voucherMoneyLendinput').val();
				var moneyLoan = $(item).children('.voucherLoan').children('.voucherInput').children('.voucherMoneyLoaninput').val();
				if(abstract!=""&&subject_name!=""&&subject_id!=""&&(moneyLend!=""||moneyLoan!="")&&flag){
					var voucherItem = new Object();
					voucherItem.CompanyId = CompanyId;
					voucherItem.AccountId=account_id;
					voucherItem.SubjectId = subject_id;
					voucherItem.SubjectName = subject_name;
					voucherItem.Moneys = moneyLend ==""?"0.0":moneyLend;
					voucherItem.LendingDirection = moneyLoan ==""?"0.0":moneyLoan;
					voucherItem.AbstractId = abstract_id;
					voucherItem.AbstractContent = abstract;
					voucherItem.ReportingPeriod = $('#voucher-month').val().substring(0, 7).replace('-', '');
					voucherItem.SubjectCode = subject_code;
					itemArray.push(voucherItem);
					flag = true;
				}else if(abstract =="" &&(moneyLend!=""||moneyLoan!="")&&flag){
					alert("凭证摘要不能为空");
					flag = false;
					$('#btn-voucher-save').attr('disabled',false);
					//debugger;
					return true;
				}else if((subject_name=="" || subject_id=="")&&(moneyLend!=""||moneyLoan!="")&&flag){
					alert("请选择科目");
					flag = false;
					$('#btn-voucher-save').attr('disabled',false);
					//debugger;
					return true;
				}
			});
			if(flag){
				$.ajax({
					url:dataServiceLocation+'/VCH_VoucherDetail?strType=Add',
					data:{"_VoucherModel": voucher,"DetailList":itemArray},
					dataType:'json',
					type: "post",
					success:function(data){
						if(data.result){
							alert('保存成功');
							if(withNewAdd){
								$.ajax({ 
									url:dataServiceLocation+'/VCH_Voucher?companyId='+CompanyId+'&accountId='+account_id+'&voucherDate='+new Date($('#voucher-month').val()).Format('yyyyMM'),
								//	async: true,
									success: function(data){
										var voucherid=data.dataInfo;
										$('#voucherid').text(voucherid);
									},
									type: "get",
									dataType: "JSON"
								});
								$('#newVoucher-content').parent().empty().load(webServiceLocation+'/FrontPro/newVoucher');
							}else{
								
							}
						}else{
							alert('保存失败');
							if(!withNewAdd){
								$('#btn-voucher-save').attr('disabled',false);
								$('#btn-save-and-addNew').show();
								$('#btn-addNew').hide();
							}
						}
						
					}
				});
			}else{
				$('#btn-voucher-save').attr('disabled',false);
				$('#btn-save-and-addNew').show();
				$('#btn-addNew').hide();
			}
		}
	}
	
	$('#btn-addNew').on('click',function(){
		$.ajax({ 
			url:dataServiceLocation+'/VCH_Voucher?companyId='+CompanyId+'&accountId='+account_id+'&voucherDate='+new Date($('#voucher-month').val()).Format('yyyyMM'),
		//	async: true,
			success: function(data){
				var voucherid=data.dataInfo;
				$('#voucherid').text(voucherid);
			},
			type: "get",
			dataType: "JSON"
		});
		$('#newVoucher-content').parent().empty().load(webServiceLocation+'/FrontPro/newVoucher');
	});
	$('#btn-voucher-save').on('click',function(){
		saveVoucher(false);
	});
	
	$('#btn-save-and-addNew').on('click',function(){
		saveVoucher(true);
	});
	
	$('#voucherSumLendTxt').on("change",function(){
		var sumLend = $(this).val();
		if(sumLend!=null&&sumLend!=""&&!isNaN(sumLend)){
			$('#voucheChineseTotal').text(digitUppercase(parseFloat(sumLend)));
		}
	});
	
	 var digitUppercase = function(n) {  
	        var fraction = ['角', '分'];  
	        var digit = [  
	            '零', '壹', '贰', '叁', '肆',  
	            '伍', '陆', '柒', '捌', '玖'  
	        ];  
	        var unit = [  
	            ['元', '万', '亿'],  
	            ['', '拾', '佰', '仟']  
	        ];  
	        var head = n < 0 ? '欠' : '';  
	        n = Math.abs(n);  
	        var s = '';  
	        for (var i = 0; i < fraction.length; i++) {  
	            s += (digit[Math.floor(n * 10 * Math.pow(10, i)) % 10] + fraction[i]).replace(/零./, '');  
	        }  
	        s = s || '整';  
	        n = Math.floor(n);  
	        for (var i = 0; i < unit[0].length && n > 0; i++) {  
	            var p = '';  
	            for (var j = 0; j < unit[1].length && n > 0; j++) {  
	                p = digit[n % 10] + unit[1][j] + p;  
	                n = Math.floor(n / 10);  
	            }  
	            s = p.replace(/(零.)*零$/, '').replace(/^$/, '零') + unit[0][i] + s;  
	        }  
	        return head + s.replace(/(零.)*零元/, '元')  
	            .replace(/(零.)+/g, '零')  
	            .replace(/^整$/, '零元整');  
	    };  
});
	