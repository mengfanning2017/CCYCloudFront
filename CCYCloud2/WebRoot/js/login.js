$(document).ready(function() {
	
//			$.ajax({
//				url:webServiceLocation+"/FrontPro/checkLogin",
//				dataType: "json",
//				async:false,
//				success:function(result){
//					debugger;
//					if(result.Login){
//						if(result.account){
//							window.location.href=webServiceLocation+"/FrontPro/index";
//						}else{
//							window.location.href=webServiceLocation+"/FrontPro/userWorkSpace";
//						}
//					}
//				}
//			});
	
			$("#btnLogin").bind('click', function() {
						var userid = $('#userID').val();
						var password = $('#inputPassword').val();
						//window,location.href="http://localhost:8080/FrontPro/userWorkSpace.jsp";
//						var dataurl = dataServiceLocation+"/SYS_Login?acount=administrator&password=1";
						var dataurl = webServiceLocation+"/FrontPro/doLogin?account=administrator&password=1";
						//{"result":true,"dataInfo":{"UserId":4715849012607900190,"UserStrId":"4715849012607900190","UserName":"administrator","Account":"administrator","Password":"1","UserStatus":0,"StartDate":"2017-08-22T10:02:35","EndDate":"2020-12-31T10:02:51","WechatNo":"3099768","QQNo":"309976878","MobilNo":"15010364756","Emails":"administrator@tzcpa.com","UserSort":1,"Remarks":"","Status":null,"CreatePerson":"administrator","CreateDate":null,"OperationPerson":"administrator","OperationDate":"2017-08-09T15:23:37"}}
						$.ajax({
							/*172.16.5.9*/
									url : dataurl,//'http://localhost:9991/api/SYS_Login?acount='+userid+'&password='+password,
									success : function(result) {
										if(result['result']){
											window.location.href=webServiceLocation+"/FrontPro/userWorkSpace";
											//window.location.href="http://localhost:8080/FrontPro/userWorkSpace.jsp?UserId="+result.dataInfo.UserStrId;
											
										}
									},
									dataType : 'json',
									async : true
								});
						
					});
		});