$(document).ready(function(){
	var ac_add_prop_array={
		project:["projectcode","projectname","status"],
		client:["clientcode","clientname","user","phone","textno","bankno","status"],
		supplier:["suppliercode","suppliername","user","phone","textno","bankno","status"],
		department:["departno","departname","status"],
		employee:["employeecode","employeename","status"],
		product:["productcode","productname","unit","status"]
	};
	$('.subject-category>li>a').on('click',function(){
		var li_id = $(this).attr('id').substring(0,$(this).attr('id').indexOf('_A'));
		$('.subject-category>li').removeClass('active');
		$('#'+li_id).addClass('active');
	});
	
	$("#table_content_sub_div").scroll(function() {
		var id_tr = "";
		//alert($('.subject-category>li').length);
		$.each($('.subject-category>li'),function(index,li){
			var id_li = $(this).attr("id");
			if($('#'+id_li+'_tr').offset() != undefined && $('#'+id_li+'_tr').offset() != null && $('#'+id_li+'_tr').offset() != 'undefined'){
			var top1 = parseInt($('#'+id_li+'_tr').offset().top);
			var top2 = parseInt($('#table_content_sub_div').offset().top) + parseInt($('#table_content_sub_div').height())/2;
				if(top1 <top2){
					$('.subject-category>li').removeClass("active");
					$('#'+id_li).addClass("active");
					return;
				}
			}
		});
		//alert()+"------------"+);
	});
	var subject_no ="";
	$('#subject-menu').hide();
	$('.setting_icon_showmenu').on('click',function(){
		subject_no = $(this).attr("data-subjec-no");
		//alert($(this).offset().top + "-----------"+$(this).offset().left);
		$('#subject-menu').css({'top':$(this).offset().top-56  , 'left':$(this).offset().left-164}).show();
		
	});
	
	$('li:has(span[class*="setting_icon_edit"])').on('click',function(){
		$('#edit-subject').modal({
			keyboard: true
		});
		$('.modal-dialog').css({'z-index':9999});
	});
	$('li:has(span[class*="setting_icon_addAllNext"])').on('click',function(){
		$('#addAll-subject').modal();
		$('.modal-dialog').css({'z-index':9999});

	});
	$('li:has(span[class*="setting_icon_addnext"])').on('click',function(){
		$('#add-subject').modal();
		$('.modal-dialog').css({'z-index':9999});
	});	
	$('li:has(span[class*="setting_icon_acvalue"])').on('click',function(){
		$('#begin-balance').modal();
		$('.modal-dialog').css({'z-index':9999});
	});
	
	
	$(document).click(function(oEvent){
		var mouse = new MouseEvent(oEvent);
		
		if(!$('#subject-menu').is(':hidden')){
			var min_x=	$('#subject-menu').offset().left;
			var max_x=	$('#subject-menu').offset().left+$('#subject-menu').width();
			var min_y= 	$('#subject-menu').offset().top;
			var max_y= 	$('#subject-menu').offset().top+	$('#subject-menu').height();
			//alert("left:"+$('#subject-menu').offset().left +"--- top:"+$('#subject-menu').offset().top);
			if(mouse.x < min_x || mouse.x > max_x || mouse.y < min_y || mouse.y > max_y){
				//$('#subject-menu').hide(500);
			}
		}
		
		//if(mouse.y < )
	});
	        //计算坐标函数
    var Mouse = function(e){
        mouse = new MouseEvent(e);
        leftpos = mouse.x + divoffset;
        toppos = mouse.y + divoffset;
    }
    //获取鼠标坐标函数
    var MouseEvent = function(e) {
        this.x = e.pageX
        this.y = e.pageY
    }
    
    $('#subject_currency').autocomplete({
		minLength: 0,  
	   	source: function( request, response ) {  
	   		var currency = $('#subject_currency').val();
			$.ajax({  
	            url : dataServiceLocation+'/ACC_Currency?strType=GetList',  
	            type : "post",  
	            dataType : "json",  
	            data : {CurrencyName:currency},  
	           	success: function( data ) {  
				console.log(data);  
				response( $.map( data.dataInfo.ds, function( item ) {  
					return {  
						label: item.CurrencyName,  
						value: item.CurrencyStrId  
					}
				 }));  
	           }
	      	});  
	  	 },
	   	select: function( event, ui ) {  
			$("#subject_currency").val( ui.item.label ); 
			$('#subject_currency_id').val(ui.item.value);
			return false;  
	  	}
    });
    $('#btn-subj-edit-save').on('click',function(){
    	var subject = new Object();
    	subject.SubjectId = "";
    	subject.SubjectCode = "";
    	subject.SubjectName="";
    	subject.MeasurementUnits="";
    	subject.CurrencyCode = "";
    	subject.SubjectState = "";
    	subject.FlagCustomer="";
    	subject.FlagStaff = "";
    	subject.FlagProvider="";
    	subject.FlagInventory = "";
    	subject.FlagUnit = "";
    	subject.FlagProject = "";
	/*	$.ajax({
			url:"",
			data:subject_edit,
			success:function(){},
			type : "post",  
	        dataType : "json" 
		});*/
    });
    $('#btn-subj-addAll-save').on('click',function(){
    	var subjectnames = $('#txta-subject-names').val().split("\n");
    	$.each(subjectnames,function(index,subjectname){
    		var subject = new Object();
	    	subject.SubjectId = "";
	    	subject.SubjectCode = "";
	    	subject.SubjectName="";
	    	subject.MeasurementUnits="";
	    	subject.CurrencyCode = "";
	    	subject.SubjectState = "";
	    	subject.FlagCustomer="";
	    	subject.FlagStaff = "";
	    	subject.FlagProvider="";
	    	subject.FlagInventory = "";
	    	subject.FlagUnit = "";
	    	subject.FlagProject = "";
    	});
    });
    $('.ac-td-balance').on('click',function(oEvent){
    	var ac_id = $(this).attr("data-ac-balance-id");
    	$('#add-ac-balance').modal({backdrop:false,keyboard:false});
    });
    $('#btn-count').on('click',function(){
    	//alert('12');
    	$('#unit-currency').modal();
    });
    $('.subject-balance-td').on('dblclick',function(){
    	var td_id = $(this).attr('id');
    	var type = $(this).attr('data-type-info');
    	$('#'+td_id+'-lbl-'+type).hide();
    	$('#'+td_id+'-txt-'+type).val($('#'+td_id+'-lbl-'+type).text()).show().focus();
    });
    $('input[name^="subject-balance-td"]').on('blur',function(){
    	var subj_id = $(this).attr('data-subject-id');
    	var valnew = $(this).val();
    	var type = $(this).attr('data-type-info');
    	$(this).hide();
    	$('#subject-balance-td-'+subj_id+'-lbl-'+type).text(valnew).show();
    });
    $('#lastRow').on('mouseover',function(){$('.addnewrow').show();}).on('mouseout',function(){$('.addnewrow').hide();});
    $('.addnewrow').on('click',function(){
    	var addType = $(this).attr("data-add-type");
    	var addTrStr = '<tr><td style="border: none;width: 5px;"><span class="icon icon-remove-sign "></span></td>';
    	var tdArry ;
    	switch(addType){
    		case 'project':
    			tdArry = ac_add_prop_array.project;
    			break;
    		case 'client':
    			tdArry = ac_add_prop_array.client;
    			break;
    		case 'supplier':
    			tdArry = ac_add_prop_array.supplier;
    			break;
    		case 'department':
    			tdArry= ac_add_prop_array.department;
    			break;
			case 'employee':
				tdArry = ac_add_prop_array.employee;
				break;
			case 'product':
				tdArry = ac_add_prop_array.product;
				break;
    	}
    	$.each(tdArry,function(index,td){
    		var tempID = getNowFormatDateStr();
    		addTrStr+='<td><input id="'+td+'-'+tempID+'" name="'+td+'-'+tempID+'" type="text"/> </td>';
    	});
    	addTrStr+='<td style="border: none;width: 5px;"></td></tr>';
    	$('#project_tables>.table>tbody>#lastRow').before(addTrStr);
    });
});
function getNowFormatDateStr() {
    var date = new Date();
//    var seperator1 = "-";
//    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
//    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
//            + " " + date.getHours() + seperator2 + date.getMinutes()
//            + seperator2 + date.getSeconds();
    var currentdate = date.getFullYear()+month+strDate+date.getHours()+date.getMinutes()+date.getSeconds()+date.getMilliseconds();
    return currentdate;
}