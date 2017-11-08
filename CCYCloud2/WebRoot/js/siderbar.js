  	$(document).ready(function(){

  		$('#siderbar_ul>li').on('click',function(){
  			$('#siderbar_ul>li').removeClass('active');
  			$('#siderbar_ul>li>ul ').hide();
  			$(this).attr('class','active');
  			var is_root = $(this).attr("data-isRoot");
  			var li_id = $(this).attr("id");
  			if(is_root == "1"){
  				$('#'+li_id+'>ul').show();
  			}else{
  				tabTagole(li_id);
  			}
  			
  			return false;
  		}) .on("mouseover",function(){
  			$('#siderbar_ul>li>ul ').hide();
  			var li_id = $(this).attr("id");
  			var isroot = $(this).attr("data-isRoot");
  			if(isroot=="1"){
  				$('#'+li_id+'>ul').show();
  			}
  		});
  		$('#home_A').on('click',function(){
  			$('#siderbar_ul li').removeClass('active');
  			$('#home_LI').attr('class','active');
  		});
  		var isclick = false;
  		var clickbtnId = "";
  		$('.leftmenu-sec-ul').on('mouseout',function(){
  			$(this).hide();
  		});
  		//按钮点击
  		$('#home >.button-row>.col-md-3>button ').on('click',function(){	
  			if(clickbtnId != ""){
	  			$('.cus-'+clickbtnId+'-tst').attr('class','cus cus-'+clickbtnId);
	  			$('#btn-'+clickbtnId).removeClass('btn-'+clickbtnId+'-active').addClass('btn-'+clickbtnId);
  			}
  			var s = $(this).attr('id').substring(4);
  			clickbtnId = s;
  			$('.cus-'+s).attr('class','cus cus-'+s+'-tst');
  			isclick = true;
  			$(this).removeClass($(this).attr('id')+'-active').addClass($(this).attr('id')+'-active');
  			$(this).removeClass($(this).attr('id'));
  		});
  		$('#home >.button-row>.col-md-3>button ').on('mouseover',function(){
  			var s = $(this).attr('id').substring(4);
  			$('.cus-'+s).attr('class','cus cus-'+s+'-tst');
  		}).on('mouseleave',function(){
  			var s = $(this).attr('id').substring(4);
  			if(s!=clickbtnId){
	  			$('.cus-'+s+'-tst').attr('class','cus cus-'+s);
  			}
  		});
  		
  		$('.leftmenu-sec-ul>li').on('click',function(){
  			var tabID = $(this).attr('data-target-tab');
  			var text =  $(this).text();
//  			debugger;
  			var length = $('#'+tabID+'_A').length;
  			if(!length>0){
  				var strLi = '<li > <a href="#'+tabID+'" id="'+tabID+'_A" data-toggle="tab"><span class="glyphicon glyphicon-remove" id="'+tabID+'_remove" style="display:none;"></span>'+text+'</a> </li>';
  				$('#myTab').append(strLi);
  				var url = webServiceLocation+'/FrontPro/'+tabID;
  				$('#'+tabID).load(url);
  				
				$('#'+tabID+'_A').on('click',function(){
  					$('#siderbar_ul li').removeClass('active');
  					$('#'+tabID+'_LI').attr('class','active');
  				}).on('mouseover',function(){
  					$('#'+tabID+'_remove').show();
  				}).on('mouseleave',function(){
  					$('#'+tabID+'_remove').hide();
  				});
  				$('#'+tabID+'_remove').on('click',function(){
  					$('#home_A').tab('show');
  					$('#'+tabID+'_A').remove();
  					$('#siderbar_ul li').removeClass('active');
  					$('#home_LI').attr('class','active');
  					return false;
				});
  				$('#'+tabID+'_A').tab('show');	
  			}else{
  				$('#'+tabID+'_A').tab('show');
  			}
  		});
  		
  		function tabTagole( li_id){
  			var id = li_id.substring(0,li_id.indexOf('_LI'));;
  			var text = $('#'+li_id+'>a').text();
				//alert(id);
  		
  			var length = $('#'+id+'_A').length;
  			if(!length >0){
  				var strLi = '<li > <a href="#'+id+'" id="'+id+'_A" data-toggle="tab"><span class="glyphicon glyphicon-remove" id="'+id+'_remove" style="display:none;"></span>'+text+'</a> </li>';
  				$('#myTab').append(strLi);
  				$('#'+id+'_A').tab('show');
  				if(id != 'home'){
  					var url = webServiceLocation+"/FrontPro/"+id;
  					$('#'+id).load(url);
  				}
  				$('#'+id+'_A').on('click',function(){
  					$('#siderbar_ul li').removeClass('active');
  					$('#'+id+'_LI').attr('class','active');
  				}).on('mouseover',function(){
  					$('#'+id+'_remove').show();
  				}).on('mouseleave',function(){
  					$('#'+id+'_remove').hide();
  				});
  				$('#'+id+'_remove').on('click',function(){
  					$('#home_A').tab('show');
  					$('#'+id+'_A').remove();
  					$('#siderbar_ul li').removeClass('active');
  					$('#home_LI').attr('class','active');
  					return false;
  				});
  			}else{
  				$('#'+id+'_A').tab('show');
  			}
  		}
  		
  	});
  	
  	
  	