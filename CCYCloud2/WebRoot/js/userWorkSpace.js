function BOOK(){}

$(document).ready(function(){
				$('#book-create-month').datetimepicker({
					format:'yyyy-mm',
					language:'zh-CN',
					minView:2
				});
				
				
				
				function clickUser2Up(){
					var liId = $(this).removeClass("color-red").addClass("color-green").attr('id');
					var moveUser = $('#'+liId)[0].outerHTML.replace("icon-arrow-down", "icon-arrow-up");
					
					$('#'+liId).remove();
					//alert($('#1')[0].outerHTML);
					$('#ul-bookuser').append(moveUser);
					$('#'+liId).on('click',clickUser2Down);
				}
				function clickUser2Down(){
					var liId = $(this).removeClass("color-green").addClass("color-red").attr('id');
					var moveUser = $('#'+liId)[0].outerHTML.replace("icon-arrow-up", "icon-arrow-down");
					
					$('#'+liId).remove();
					//alert($('#1')[0].outerHTML);
					$('#ul-bookmanager').append(moveUser);
					$('#'+liId).on('click',clickUser2Up);
				}
				$('#ul-bookuser li').on('click',clickUser2Down);
				$('#ul-bookmanager li').on('click',clickUser2Up);
				
				$('#user-management-table>table>tbody>tr').on('mouseover',function(){
					var offiset = $(this).offset();
					$(this).width();
					$('#addUserBtn').css({'top':offiset.top+5  , 'left':offiset.left-28}).show();
					$('#delUserBtn').css({'top':offiset.top+5  , 'left':offiset.left+$(this).width()+5}).show();
					$('#delUserBtn').attr('data-user-id',$(this).attr('data-user-id'));
					
				});
				$('#delUserBtn').on('click',function(){
					alert($(this).attr('data-user-id'));
				});
				
				$('.changeAuth_A').on('click',function(){
					$('#myModal').modal({
	       				 keyboard: true
	   				 });
				});
				$('#returnWorkSpace').on('click',function(){
					$(this).hide();
					$('#addUserBtn').hide();
					$('#delUserBtn').hide();
				});
				$('.tabA').on('click',function(){
					$('#returnWorkSpace').show();
					$('#addUserBtn').hide();
					$('#delUserBtn').hide();
				});
				
				$('#modal-chose-company').on('show.bs.modal',function(){
					$.ajax({
					//url:'http://172.16.5.9/api/SYS_Account?UserId=1',
						url:webServiceLocation+'/FrontPro/companys',
						//url:'http://localhost:9991/api/SYS_Company?UserId='+UserId,
						dataType:'json',
						async : true,
						success :function(result){
//							debugger;
							 if(result.result){
								var optionsStr = "";
								$.each(result.dataInfo,function(index,company){
									var str = '<option value="'+company.CompanyStrId+'" >'+company.CompanyName+'</option>';
									optionsStr +=str;
								});
								$('#select-company-panel').empty().append(optionsStr);
							}
						}
					});
				}).on('hide.bs.modal',function(){
					var select_companyid = $('#select-company-panel').val();
					$('#companyID').val(select_companyid);
					var userid = $('#UserId').val();
//					debugger;
					$.ajax({
						url:webServiceLocation+'/FrontPro/useraccounts?select_companyid='+select_companyid,
						dataType:'json',
						async:true,
						success:function(result){
							if(result.result){
							/* 
							{"result":true,
							"dataInfo":{"ds":
							[{"AccountId": 4750202947243050000,
					            "AccountStrId": "4750202947243049486",
					            "AccountName": "汉和防务军工科技网",
					            "LeadOfficial": 1,
					            "LeadOfficialName": "吴连成",
					            "Auditor": 1,
					            "AuditorName": "赵敏",
					            "AccountStandard": 1,
					            "AccountType": 1,
					            "StartDate": null,
					            "CreatePerson": "sample string 6",
					            "CreateDate": null,
					            "OperationPerson": "sample string 7",
					            "OperationDate": null,
					            "Status": 1,
					            "CompanyId": 5509512639679240000,
					            "CompanyNo": "sample string 8",
					            "CompanyName": "sample string 9",
					            "Remarks": "sample string 10",
					            "Industryid": 4977400512471506000,
					            "Address": "sample string 11"
							}]
							}} */
								var strDivBook = "";
								$.each(result.dataInfo,function(index,bookinfo){
									//debugger;
									var book = 	'<div class="book"><div class="book-header"><div class="bookname"><a href="javascript:void(0);" data-account-id="'
												+bookinfo.AccountStrId+'" data-company-id="'
												+select_companyid+'" data-account-date="'
												+new Date(bookinfo.StartDate).Format('yyyy-MM-dd')+'" class="bookinfo-desc-a">'
												+bookinfo.AccountName+'</a></div>'+
												'<div class="config"><span class="icon icon-pencil"></span><span class="icon icon-lock"></span></div>'+
												'</div><div class="book-content"><ul class="bookcontent">'+
												'<li class="company-name">企业名称: <span>'+bookinfo.CompanyName+ '</span></li>'+
												'<li class="create-month">建账期间: <span>'+new Date(bookinfo.StartDate).Format('yyyy-MM-dd')+'</span></li>'+
												'<li class="account-rule">会计准则: <span>2007企业会计准则</span></li>'+
												'<li>纳税人资格: <span>一般纳税人</span></li>'+
												'<li class="manager">负责人: <span>张三</span></li>'+
												'<li class="manager">审核人: <span>李四</span></li>'+
												'<li class="user">操作用户: <span>王一,王二, 王三,王四,王五</span></li></ul></div></div>';
									strDivBook +=book;
								});
								$('.list-Content').empty().append(strDivBook);
								$('.bookinfo-desc-a').on('click',function(){
									var company_id = $(this).attr('data-company-id');
									var account_id =$(this).attr('data-account-id');
									var account_date = $(this).attr('data-account-date');
									$.ajax({
										url:webServiceLocation+'/FrontPro/indexController',
										data:{"account_id":account_id,"company_id":company_id,"account_date":account_date},
										type:"post",
										dataType:"json",
										success:function(result){
//											debugger;
											if(result.result){
												window.location.href=webServiceLocation+"/FrontPro/index";
											}
										}
									});
								});
							}
						}
					});
				});
				var UserId = $('#UserId').val();
				$('#modal-chose-company').modal({
					keyboard: false,
					backdrop: false
				});
				
				$('#btn-save-book').on("click",function(){
//					var 				
				});
				$('#book-manager').autocomplete({
					minLength: 0,  
				   	source: function( request, response ) {  
				       $.ajax({  
				            url : dataServiceLocation+'/SYS_CompanyOrUser',  
				            type : "get",  
				            dataType : "json",  
				            data : {"detailId":$('#companyID').val()},  
				           	success: function( data ) {  
							console.log(data);  
							response( $.map( data.dataInfo.ds, function( item ) {  
								return {  
							     label: item.UserName,  
							     value: item.UserId  
								}  
							 }));  
				           }  
				      });  
				  	 },  
				   
				   	select: function( event, ui ) {  
							$("#book-manager").val( ui.item.label );  
							$("#book-manager-id").val( ui.item.value );  
							return false;  
				  		} 
				});
				
				$('#book-checkUser').autocomplete({
					minLength: 0,  
				   	source: function( request, response ) {  
				       $.ajax({  
				            url : dataServiceLocation+'/SYS_CompanyOrUser',  
				            type : "get",  
				            dataType : "json",  
				            data : {"detailId":$('#companyID').val()},  
				           	success: function( data ) {  
							//console.log(data);  
							response( $.map( data.dataInfo.ds, function( checkuser ) {  
						
								return {  
							     label: checkuser.UserName,  
							     value: checkuser.UserId  
								}  
							 }));  
				           }  
				      });  
				  	 },  
				   	
				   	select: function( event, ui ) {  
							$("#book-checkUser").val( ui.item.label );  
							$("#book-checkUser-id").val( ui.item.value );  
							return false;  
				  		} 
				});
				
				$('#book-companyAddress').on("focus", function(){
					var offiset = $(this).offset();
					$('#company-address-div').css({'top':offiset.top+25  , 'left':offiset.left-30}).show();
				});
				$('#btn-ppc-ok').on('click',function(){
					var addres=$('#province').find("option:selected").text() + ' '+$('#citys').find("option:selected").text()+' '+$('#county').find("option:selected").text();
					$('#book-companyAddress').val(addres).attr('title',addres);
					$('#company-address-div').hide();
				});
				
				$('#book-industry').autocomplete({
						minLength: 0, 
						source: function( request, response ) {  
						       $.ajax({  
						    	   url : dataServiceLocation+'/SYS_Industry',  
						            type : "get",  
						            dataType : "json",  
						           	success: function( data ) {  
									console.log(data);  
									response( $.map( data.dataInfo, function( item ) {  
										return {  
									     label: item.IndustryName,  
									     value: item.IndustryId  
										}  
									 }));  
						           }  
						      });  
						  	 },  
						   	
				   	select: function( event, ui ) {  
							$("#book-industry").val( ui.item.label );  
							$("#book-industry-id").val( ui.item.value );  
							return false;  
				   		} 
				});
				
				
				
				$('#btn-save-book').on('click',function(){
					var book= new Object();
					book.AccountName= $('#book-name').val();//账套名称
					book.CompanyId=$('#companyID').val();//账套所属公司编号
					book.StartDate= $('#book-create-month').val()+'-01 00:00:00';//建账期间
					book.AccountStandard= $('#book-account-rule').val();//会计准则
					book.LeadOfficial= $('#book-manager-id').val();//负责人
					book.LeadOfficialName=$('#book-manager').val();//负责人名称
					book.Auditor= $('#book-checkUser-id').val();//审核人
					book.AuditorName=$('#book-checkUser').val();//审核人名称
					book.AccountType= $('input[name="book-taxpayer"]:checked').val();//账套类型
					book.CompanyName = $('#book-companyname').val();//公司名称
					book.CompanyNo = $('#book-taxpayerNo').val();//纳税人识别号
					book.Industryid = $('#book-industry').val();//所属行业
					book.Address = $('#book-companyAddress').val();//公司地址
					book.CreatePerson =$('#UserId').val();//创建人编号
					var mydate = new Date();
					book.CreateDate =mydate.getFullYear() + '-' +    (mydate.getMonth()<10 ? '0' : '') + mydate.getMonth() + '-' +    (mydate.getDate()<10 ? '0' : '') + mydate.getDate() + ' ' +  mydate.getHours() + ":" + mydate.getMinutes() + ":" + mydate.getSeconds();//创建时间
					var dataStr = JSON.stringify(book);
					$.ajax({
						url : dataServiceLocation+'/SYS_Account',  
			            type : "post",  
			            dataType :'json' ,  
			            data:book ,
			           	success: function( data ) {  
			           		if(data.result){
			           			alert(data.dataInfo);
			           			$('#btn-save-book').attr('disabled');
			           		}
			           	} 
					});
				});
				/*
				*/
				//{"result":true,"dataInfo":[{"CompanyId":4636531674720922551,"CompanyStrId":"4636531674720922551","CompanyName":"北京创财云信息技术有限公司","Status":0,"StartTime":"2017-08-28T00:00:00","EndTime":"2019-08-28T00:00:00"}]}
				/*$('#user-management').on('mouseleave',function(event){
					var deloffset = $('#delUserBtn').offset();
					var addoffset = $('#delUserBtn').offset();
					var eventx = event.clientX;
					var eventy = event.clientY;
					var divXdel = deloffset.left;
					var divydel = deloffset.top;
					var divXdel2 = deloffset.left+$('#delUserBtn').width;
					var divydel2 = deloffset.top+$('#delUserBtn').height;
					if(eventx<divXdel||eventx>divXdel2 || eventy<divydel || eventy > divydel2){
						alert("mouseout");
					}
					
				});*/
			});