<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <link rel="stylesheet" href="<%=basePath%>bootstrap/css/setting.css">
<link rel="stylesheet" href="<%=basePath%>bootstrap/css/subject_setting.css">
  <link rel="stylesheet" href="<%=basePath%>jquery-ui-1.12.1.custom/jquery-ui.css">    
    <div id="setting-main" class="setting-main">
    	<ul id="setting-tab" class="nav nav-setting-tabs">
    		<li class="nav nav-setting-tabs active">
    			<a href="#subject" id="subject_A" data-toggle="tab"> 科目及期初 </a>
    		</li>
   		    <li class="nav nav-setting-tabs">
    			<a href="#auxiliary" id="auxiliary_A" data-toggle="tab"> 辅助核算 </a>
    		</li>
    		<li class="nav nav-setting-tabs">
    			<a href="#authority" id="authority_A" data-toggle="tab"> 权限管理 </a>
    		</li>
        	<li class="nav nav-setting-tabs rightFloat-tabs">
    			<button class="btn btn-defalut btn-balance" id="btn-balance">试算平衡</button>
    		</li>		
    		<li class="nav nav-setting-tabs rightFloat-tabs">
    			<button class="btn btn-defalut btn-count" id="btn-count">数量外币期初</button>
    		</li>
    	</ul>
    	<div id="settingTabContent" class="tab-content">
    		<div id="subject"	class="tab-pane fade in active" >
    			<div id="subjectContent" class="subjectContent">
   					<div id="subject-table" class="subject-table tab-pane fade in active" >
						<table class="table">
							<thead>
								<tr class="shadow">
									<th class="firstTh">科目编码</th>
									<th class="secTh">科目名称</th>
									<th class="dirTh">方向</th>
									<th class="defaultTh">期初余额</th>
									<th class="defaultTh">本年累计借方</th>
									<th class="defaultTh">本年累计贷方</th>
									<th class="defaultTh">年初余额</th>
									<th class="lastTh defaultTh">对应报表项</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="8" >
										<div style="height: 380px;	overflow: auto;" id="table_content_sub_div">
										<table class="table table-contant" id="table-contant">
											<tbody>
												<tr id="assets_sub_tr">
														<td class="firstTd">
															<lable class="setting-subject-no">10010101010101</lable>
															<span class="setting_icon setting_icon_showmenu"></span>
															<span class="setting_icon setting_icon_locked"></span>
															<span class="setting_icon setting_icon_auxiliary"></span>
															<span class="setting_icon setting_icon_currency"></span>
															<span class="setting_icon setting_icon_unit"></span>
														</td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               	<td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
														<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               	<td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>	
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr id="balance_sub_tr">
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目balance_sub</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr id="">
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr id="common_sub_tr">
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目common_sub</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr id="rights_sub_tr">
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
									              <tr>
																											<td class="firstTd"><lable class="setting-subject-no">10010101010101</lable><span class="setting_icon setting_icon_showmenu"></span><span class="setting_icon setting_icon_locked"></span><span class="setting_icon setting_icon_auxiliary"></span><span class="setting_icon setting_icon_currency"></span><span class="setting_icon setting_icon_unit"></span></td>
									                	<td class="borderTd secTD">测试科目测试科目测试科目</td>
										                <td class="borderTd dicTD">借</td>
										               <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="defalutTd" >11111111111</td>
										                <td class="lastTd" >11111111111</td>
									              </tr>
								            </tbody>
						          		</table>
						          		</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
    				<ul class="nav nav-tabs subject-category">
    					<li id="assets_sub"		class="nav nav-tabs active">	<a id="assets_sub_A" 	href="#assets_sub_tr"	>资产</a></li>
    					<li id="balance_sub" 	class="nav nav-tabs">			<a id="balance_sub_A" 	href="#balance_sub_tr"	>负债</a></li>
    					<li id="common_sub"		class="nav nav-tabs">			<a id="common_sub_A" 	href="#common_sub_tr"	>共同</a></li>
    					<li id="rights_sub"		class="nav nav-tabs">			<a id="rights_sub_A" 	href="#rights_sub_tr"	>权益</a></li>
    					<li id="cost_sub"		class="nav nav-tabs">			<a id="cost_sub_A" 		href="#cost_sub_tr"		>成本</a></li>
    					<li id="income_sub"		class="nav nav-tabs">			<a id="income_sub_A" 	href="#income_sub_tr"	>损益</a></li>
    				</ul>
    			</div>
    		</div>
    		<div id="auxiliary"	class="tab-pane fade" >
    			<div id="auxiliaryContent" class="auxiliaryContent tab-content" >
   					<div id="project_tables" class="auxiliary-table tab-pane fade in active" >
						<table class="table">
							<thead id="ac-project-head" class="floatThead-project">
								<tr class="shadow">
									<th colspan="2">项目编码</th>
									<th class="secTh">项目名称</th>
									<th colspan="2">状态</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td style="border: none;width: 5px; height: 50px;"></td>
									<td colspan="3"></td>
									<td style="border: none;width: 5px;"></td>
								</tr>
								<tr>
									<td style="border: none;width: 5px;"></td>
									<td >OOOOXXXX</td>
									<td >项目AAAAAAAAAA</td>
									<td >有效</td>
									<td style="border: none;width: 5px;"></td>
								</tr>
								<tr>
									<td style="border: none;width: 5px;"></td>
									<td >OOOOXXXX</td>
									<td >项目AAAAAAAAAA</td>
									<td >有效</td>
									<td style="border: none;width: 5px;"></td>
								</tr>
								<tr>
									<td style="border: none;width: 5px;"></td> 
									<td >OOOOXXXX</td>
									<td >项目AAAAAAAAAA</td>
									<td >有效</td>
									<td style="border: none;width: 5px;"></td>
								</tr>
								<tr>
									<td style="border: none;width: 5px;"></td>
									<td >OOOOXXXX</td>
									<td >项目AAAAAAAAAA</td>
									<td >有效</td>
									<td style="border: none;width: 5px;"></td>
								</tr>
								<tr>
									<td style="border: none;width: 5px;"></td>
									<td >OOOOXXXX</td>
									<td >项目AAAAAAAAAA</td>
									<td >有效</td>
									<td style="border: none;width: 5px;"></td>
								</tr>
								<tr id="lastRow">
									<td style="border: none;width: 5px;"></td>
									<td colspan="3"><span class="icon icon-plus-sign addnewrow" id="addnewrow" data-add-type="project" ></span></td>
									<td style="border: none;width: 5px;"></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div id="client_tables" class="auxiliary-table  tab-pane fade" >
						<table class="table">
							<thead>
								<tr class="shadow">
									<th >客户编码</th>
									<th >客户名称</th>
									<th >联系人</th>
									<th>联系方式</th>
									<th>客户税号</th>
									<th>银行账号</th>
									<th>状态</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="7" >
									</td>
								</tr>
								<tr>
									<td >0019</td>
									<td >张三</td>
									<td >李四</td>
									<td >13011001100</td>
									<td >3992217</td>
									<td >1234352</td>
									<td >启用</td>
								</tr>
								<tr>
									<td >0019</td>
									<td >张三</td>
									<td >李四</td>
									<td >13011001100</td>
									<td >3992217</td>
									<td >1234352</td>
									<td >启用</td>
								</tr>
								<tr>
									<td >0019</td>
									<td >张三</td>
									<td >李四</td>
									<td >13011001100</td>
									<td >3992217</td>
									<td >1234352</td>
									<td >启用</td>
								</tr>
								<tr>
									<td >0019</td>
									<td >张三</td>
									<td >李四</td>
									<td >13011001100</td>
									<td >3992217</td>
									<td >1234352</td>
									<td >启用</td>
								</tr>
								<tr>
									<td >0019</td>
									<td >张三</td>
									<td >李四</td>
									<td >13011001100</td>
									<td >3992217</td>
									<td >1234352</td>
									<td >启用</td>
								</tr>
								<tr>
									<td colspan="7" >
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div id="supplier_tables" class="auxiliary-table tab-pane fade" >
						<table class="table">
							<thead>
								<tr class="shadow">
									<th >供应商编码</th>
									<th >供应商名称</th>
									<th >联系人</th>
									<th>联系电话</th>
									<th>客户税号</th>
									<th>银行账号</th>
									<th>状态</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="7" >
									</td>
								</tr>
								<tr>
									<td >0019</td>
									<td >张三</td>
									<td >李四</td>
									<td >13011001100</td>
									<td >3992217</td>
									<td >1234352</td>
									<td >启用</td>
								</tr>
								<tr>
									<td >0019</td>
									<td >张三</td>
									<td >李四</td>
									<td >13011001100</td>
									<td >3992217</td>
									<td >1234352</td>
									<td >启用</td>
								</tr>
								<tr>
									<td >0019</td>
									<td >张三</td>
									<td >李四</td>
									<td >13011001100</td>
									<td >3992217</td>
									<td >1234352</td>
									<td >启用</td>
								</tr>
								<tr>
									<td >0019</td>
									<td >张三</td>
									<td >李四</td>
									<td >13011001100</td>
									<td >3992217</td>
									<td >1234352</td>
									<td >启用</td>
								</tr>
								<tr>
									<td colspan="7" >
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div id="depart_tables" class="auxiliary-table tab-pane fade" >
						<table class="table">
							<thead>
								<tr class="shadow">
									<th class="firstTh">部门编码</th>
									<th class="secTh">部门名称</th>
									<th class="lastTh defaultTh">状态</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="3" >
									</td>
								</tr>
								<tr>
									<td >XXOO</td>
									<td >部门A</td>
									<td >启用</td>
								</tr>
								<tr>
									<td >XXOO</td>
									<td >部门A</td>
									<td >启用</td>
								</tr>
								<tr>
									<td >XXOO</td>
									<td >部门A</td>
									<td >启用</td>
								</tr>
								<tr>
									<td >XXOO</td>
									<td >部门A</td>
									<td >启用</td>
								</tr>
								<tr>
									<td colspan="3" >
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div id="employee_tables" class="auxiliary-table tab-pane fade" >
						<table class="table">
							<thead>
								<tr class="shadow">
									<th class="firstTh">员工编码</th>
									<th class="secTh">员工名称</th>
									<th class="lastTh defaultTh">状态</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="3" >
									</td>
								</tr>
								<tr>
									<td >123456789</td>
									<td >张三</td>
									<td >启用</td>
								</tr>
								<tr>
									<td >123456789</td>
									<td >张三</td>
									<td >启用</td>
								</tr>
								<tr>
									<td >123456789</td>
									<td >张三</td>
									<td >启用</td>
								</tr>
								<tr>
									<td >123456789</td>
									<td >张三</td>
									<td >启用</td>
								</tr>
								<tr>
									<td colspan="3" >
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div id="product_tables" class="auxiliary-table tab-pane fade" >
						<table class="table">
							<thead>
								<tr class="shadow">
									<th >存货编码</th>
									<th >存货名称</th>
									<th >计量单位</th>
									<th >状态</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="4" >
									</td>
								</tr>
								<tr>
									<td >100010010</td>
									<td >货品A</td>
									<td >KG</td>
									<td>启用</td>
								</tr>
								<tr>
									<td colspan="4"></td>
								</tr>
							</tbody>
						</table>
					</div>
    				<ul class="nav nav-tabs ac-details">
    					<li id="project_ac"		class="nav nav-tabs active">	<a id="project_ac_A" 	href="#project_tables"	data-toggle="tab">项目</a></li>
    					<li id="client_ac" 		class="nav nav-tabs">			<a id="client_ac_A" 	href="#client_tables"	data-toggle="tab">客户</a></li>
    					<li id="supplier_ac"	class="nav nav-tabs">			<a id="supplier_ac_A" 	href="#supplier_tables"	data-toggle="tab">供应商</a></li>
    					<li id="depart_ac"		class="nav nav-tabs">			<a id="depart_ac_A" 	href="#depart_tables"	data-toggle="tab">部门</a></li>
    					<li id="employee_ac"	class="nav nav-tabs">			<a id="employee_ac_A" 	href="#employee_tables"	data-toggle="tab">员工</a></li>
    					<li id="product_ac"		class="nav nav-tabs">			<a id="product_ac_A" 	href="#product_tables"	data-toggle="tab">存货</a></li>
    				</ul>
    			</div>
    		
    		</div>
    		<div id="authority"	class="tab-pane fade" >
    			<div id="authorityContant" class="authorityContant">
    				<div id="authority-table" class="authority-table tab-pane" >
    					<div id="moreAuth" class="moreAuth"><input type="checkbox">启用多角色控制</div>
	    				<div id="authorityContiner"  class="authorityContiner">
	    					<table class="table table-striped">
					            <thead>
					              <tr>
					                <th class="fistTh">#</th>
					                <th>First Name</th>
					                <th>Last Name</th>
					                <th class="lastTh">Username</th>
					              </tr>
					            </thead>
					            <tbody>
					              <tr>
						              <td colspan="4">
										<table class="table table-striped table-contant" >
											<tbody>
												<tr>
						                <td>1</td>
						                <td>Mark</td>
						                <td>Otto</td>
						                <td>@mdo</td>
						              </tr>
						              <tr>
						                <td>2</td>
						                <td>Jacob</td>
						                <td>Thornton</td>
						                <td>@fat</td>
						              </tr>
						              <tr>
						                <td>3</td>
						                <td>Larry</td>
						                <td>the Bird</td>
						                <td>@twitter</td>
						                 	</tr>
								            </tbody>
						          		</table>
									</td>
					              </tr>
					            </tbody>
					          </table>
	    				</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
    <div class="subject-menu" id="subject-menu">
    	<ul class="subject-menu-ul">
    		<li> <span class="setting_icon setting_icon_acvalue"></span><label>辅助核算期初</label> </li>
    		<li><span class="setting_icon setting_icon_addnext"></span> <label>添加下级科目</label> </li>
    		<li><span class="setting_icon setting_icon_addAllNext"></span><label>批量添加下级科目</label></li>
    		<li><span class="setting_icon setting_icon_edit"></span><label>编辑科目</label></li>
    		<li><span class="setting_icon setting_icon_locked" style="float: left;"></span><label>禁用科目</label></li>
    	</ul>
    </div>
    <div class="edit-subject modal fade" id="edit-subject" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    	<div class="modal-dialog edit-subject-dialog">
    		<div class="modal-content">
	            <div class="modal-header">
	              <h3 class="panel-title">编辑科目</h3>
	            </div>
	            <div class="modal-body">
					<table class="edit-subject-table"	>
					 	<tr><td class="subj-prop">类别:</td><td class="subj-prop-val">资产</td></tr>
					 	<tr><td class="subj-prop">上级科目编码:</td><td class="subj-prop-val">10000001110011</td></tr>
					 	<tr><td class="subj-prop">上级科目名称:</td><td class="subj-prop-val">测测测测测测测测</td></tr>
					 	<tr><td class="subj-prop"></td><td class="subj-prop-val">科目级次:4-2-2-2-2</td></tr>
					 	<tr><td class="subj-prop">科目编码:</td><td class="subj-prop-val">100000</td></tr>
					 	<tr><td class="subj-prop">科目名称:</td><td class="subj-prop-val"><input type="text" value="OOXXOOXXOOXX" name="subject_name" id="subject_name" class="text-subject text-subject-name"></td></tr>
					 	<tr><td class="subj-prop">计量单位:</td><td class="subj-prop-val"><input type="text" value="" name="subject_unit" id="subject_unit" class="text-subject text-subject-unit"></td></tr>
					 	<tr><td class="subj-prop">外币符号:</td><td class="subj-prop-val">
					 		<input type="text" value="" name="subject_currency" id="subject_currency" class="text-subject text-subject-currency">
					 		<input value="" type="hidden" name="subject_currency_id" id="subject_currency_id">
					 		</td>
				 		</tr>
					 	<tr><td class="subj-prop">辅助核算:</td>
					 		<td class="subj-prop-val">
					 			<ul class="subj-ac-ul">
					 				<li><input type="checkbox" id="chk-project" value="project">项目</li>
					 				<li><input type="checkbox" id="chk-client" value="client">客户</li>
					 				<li><input type="checkbox" id="chk-supplier" value="supplier">供应商</li>
					 				<li><input type="checkbox" id="chk-depart" value="depart">部门</li>
					 				<li><input type="checkbox" id="chk-employee" value="employee">员工</li>
					 				<li><input type="checkbox" id="chk-product" value="product">存货</li>
					 			</ul>
					 		</td>
						</tr>
						<tr><td></td><td></td></tr>
					</table>
	         	</div>
         		<div class="modal-footer subject-dialog-footer">
	                <button type="button" class="btn btn-subj-cancel" data-dismiss="modal">取消</button>
	                <button type="button" class="btn btn-subj-save">保存</button>
           		 </div>
         	 </div>
          </div>
    </div>
    
    <div class="addAll-subject modal fade" id="addAll-subject" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    	<div class="modal-dialog addAll-subject-dialog">
    		<div class="modal-content">
	            <div class="modal-header">
	              <h3 class="panel-title">批量添加下级科目(可从Excel复制科目名称)</h3>
	            </div>
	            <div class="modal-body">
					<table class="addAll-subject-table"	>
					 	<tr><td class=""><textarea rows="50" cols="50"  id="txta-subject-names" class="txta-subject-names" ></textarea></td></tr>
					</table>
	         	</div>
         		<div class="modal-footer subject-dialog-footer">
	                <button type="button" class="btn btn-subj-cancel" data-dismiss="modal">取消</button>
	                <button type="button" class="btn btn-subj-save" id="btn-subj-addAll-save">保存</button>
           		 </div>
         	 </div>
          </div>
    </div>
    
	<div class="add-subject modal fade" id="add-subject" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    	<div class="modal-dialog add-subject-dialog">
    		<div class="modal-content">
	            <div class="modal-header">
	              <h3 class="panel-title">添加下级科目</h3>
	            </div>
	            <div class="modal-body">
					<table class="add-subject-table"	>
					 	<tr><td class="subj-prop">类别:</td><td class="subj-prop-val">资产</td></tr>
					 	<tr><td class="subj-prop">上级科目编码:</td><td class="subj-prop-val">10000001110011</td></tr>
					 	<tr><td class="subj-prop">上级科目名称:</td><td class="subj-prop-val">测测测测测测测测</td></tr>
					 	<tr><td class="subj-prop"></td><td class="subj-prop-val">科目级次:4-2-2-2-2</td></tr>
					 	<tr><td class="subj-prop">科目编码:</td><td class="subj-prop-val">100000</td></tr>
					 	<tr><td class="subj-prop">科目名称:</td><td class="subj-prop-val"><input type="text" value="OOXXOOXXOOXX" name="subject_name" id="subject_name" class="text-subject text-subject-name"></td></tr>
					 	<tr><td class="subj-prop">计量单位:</td><td class="subj-prop-val"><input type="text" value="" name="subject_unit" id="subject_unit" class="text-subject text-subject-unit"></td></tr>
					 	<tr><td class="subj-prop">外币符号:</td><td class="subj-prop-val">
					 		<input type="text" value="" name="subject_currency" id="subject_currency" class="text-subject text-subject-currency">
					 		<input value="" type="hidden" name="subject_currency_id" id="subject_currency_id">
					 		</td>
				 		</tr>
					 	<tr><td class="subj-prop">辅助核算:</td>
					 		<td class="subj-prop-val">
					 			<ul class="subj-ac-ul">
					 				<li><input type="checkbox" id="chk-project" value="project">项目</li>
					 				<li><input type="checkbox" id="chk-client" value="client">客户</li>
					 				<li><input type="checkbox" id="chk-supplier" value="supplier">供应商</li>
					 				<li><input type="checkbox" id="chk-depart" value="depart">部门</li>
					 				<li><input type="checkbox" id="chk-employee" value="employee">员工</li>
					 				<li><input type="checkbox" id="chk-product" value="product">存货</li>
					 			</ul>
					 		</td>
						</tr>
						<tr><td></td><td></td></tr>
					</table>
	         	</div>
         		<div class="modal-footer subject-dialog-footer">
	                <button type="button" class="btn btn-subj-cancel" data-dismiss="modal">取消</button>
	                <button type="button" class="btn btn-addsubj-save">保存</button>
           		 </div>
         	 </div>
          </div>
    </div>
    
   	<div class="begin-balance modal fade" id="begin-balance" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    	<div class="modal-dialog begin-balance-dialog">
    		<div class="modal-content">
	            <div class="modal-header">
	              <h3 class="panel-title">  <span style="font-size: 13px; float: left; margin-right: 110px;"> < <span style="margin-left: 10px;margin-right: 10px;">科目三四五六七八九</span> >  <span style="margin-left: 10px;">币种：SAR</span></span> 辅助合算期初</h3>
	            </div>
	            <div class="modal-body">
					<table class="begin-balance-table" 	>
						<thead>
							<tr>
								<th rowspan="2" style="border-radius: 2px 0 0 3px;">辅助合算项</th><th rowspan="2">单位</th><th colspan="3" style="text-align: center;">期初余额</th><th colspan="3" style="text-align: center;">本年累计借方</th><th colspan="3" style="text-align: center;border-radius: 0 2px 0 0;">本年累计贷方</th>
							</tr>
							<tr>
								<th>数量</th><th >原币</th><th >本位币</th><th>数量</th><th>原币</th><th >本位币</th><th>数量</th><th >原币</th><th style="border-radius: 0 0 3px 0;">本位币</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="ac-td-balance" data-ac-balance-id="11111">
									<ul class="ac-begin-balance-ul">
										<li>项目:<span id="ac-span-project">AAAAAA</span></li>
										<li>客户:<span id="ac-span-client">BBBBBB</span></li>
										<li>供应商:<span id="ac-span-supplier">CCCCCC</span></li>
										<li>部门:<span id="ac-span-depart">DDDDDD</span></li>
										<li>员工:<span id="ac-span-employee">EEEEEE</span></li>
										<li>存货:<span id="ac-span-product">FFFFFF</span></li>
									</ul>
								</td>
								<td>1111</td><td>111111</td><td>11111</td><td>11111</td><td>1111</td><td>11111</td><td>11111</td><td>1111</td><td>11111</td><td>11111</td>
							</tr>
							<tr>
								<td class="ac-td-balance" data-ac-balance-id="222222">
									<ul class="ac-begin-balance-ul">
										<li>项目:<span>AAAAAA</span></li>
										<li>客户:<span>BBBBBB</span></li>
										<li>供应商:<span>CCCCCC</span></li>
										<li>部门:<span>DDDDDD</span></li>
										<li>员工:<span>EEEEEE</span></li>
										<li>存货:<span>FFFFFF</span></li>
									</ul>
								</td>
								<td>1111</td><td>111111</td><td>11111</td><td>11111</td><td>1111</td><td>11111</td><td>11111</td><td>1111</td><td>11111</td><td>11111</td>
							</tr>
							<tr>
								<td class="ac-td-balance" data-ac-balance-id="333333">
									<ul class="ac-begin-balance-ul">
										<li>项目:<span>AAAAAA</span></li>
										<li>客户:<span>BBBBBB</span></li>
										<li>供应商:<span>CCCCCC</span></li>
										<li>部门:<span>DDDDDD</span></li>
										<li>员工:<span>EEEEEE</span></li>
										<li>存货:<span>FFFFFF</span></li>
									</ul>
								</td>
								<td>1111</td><td>111111</td><td>11111</td><td>11111</td><td>1111</td><td>11111</td><td>11111</td><td>1111</td><td>11111</td><td>11111</td>
							</tr>
							<tr>
								<td class="ac-td-balance" data-ac-balance-id="333333">
									<ul class="ac-begin-balance-ul">
										<li>项目:<span>AAAAAA</span></li>
										<li>客户:<span>BBBBBB</span></li>
										<li>供应商:<span>CCCCCC</span></li>
										<li>部门:<span>DDDDDD</span></li>
										<li>员工:<span>EEEEEE</span></li>
										<li>存货:<span>FFFFFF</span></li>
									</ul>
								</td>
								<td>1111</td><td>111111</td><td>11111</td><td>11111</td><td>1111</td><td>11111</td><td>11111</td><td>1111</td><td>11111</td><td>11111</td>
							</tr>	
							<tr>
								<td class="ac-td-balance" data-ac-balance-id="333333">
									<ul class="ac-begin-balance-ul">
										<li>项目:<span>AAAAAA</span></li>
										<li>客户:<span>BBBBBB</span></li>
										<li>供应商:<span>CCCCCC</span></li>
										<li>部门:<span>DDDDDD</span></li>
										<li>员工:<span>EEEEEE</span></li>
										<li>存货:<span>FFFFFF</span></li>
									</ul>
								</td>
								<td>1111</td><td>111111</td><td>11111</td><td>11111</td><td>1111</td><td>11111</td><td>11111</td><td>1111</td><td>11111</td><td>11111</td>
							</tr>
							<tr>
								<td class="ac-td-balance" data-ac-balance-id="333333">
									<ul class="ac-begin-balance-ul">
										<li>项目:<span>AAAAAA</span></li>
										<li>客户:<span>BBBBBB</span></li>
										<li>供应商:<span>CCCCCC</span></li>
										<li>部门:<span>DDDDDD</span></li>
										<li>员工:<span>EEEEEE</span></li>
										<li>存货:<span>FFFFFF</span></li>
									</ul>
								</td>
								<td>1111</td><td>111111</td><td>11111</td><td>11111</td><td>1111</td><td>11111</td><td>11111</td><td>1111</td><td>11111</td><td>11111</td>
							</tr>
							<tr>
								<td class="ac-td-balance" data-ac-balance-id="333333">
									<ul class="ac-begin-balance-ul">
										<li>项目:<span>AAAAAA</span></li>
										<li>客户:<span>BBBBBB</span></li>
										<li>供应商:<span>CCCCCC</span></li>
										<li>部门:<span>DDDDDD</span></li>
										<li>员工:<span>EEEEEE</span></li>
										<li>存货:<span>FFFFFF</span></li>
									</ul>
								</td>
								<td>1111</td><td>111111</td><td>11111</td><td>11111</td><td>1111</td><td>11111</td><td>11111</td><td>1111</td><td>11111</td><td>11111</td>
							</tr>
						</tbody>											
					</table>
	         	</div>
         		<div class="modal-footer subject-dialog-footer">
	                <button type="button" class="btn btn-subj-cancel" data-dismiss="modal">取消</button>
	                <button type="button" class="btn btn-addsubj-save">保存</button>
           		 </div>
         	 </div>
          </div>
    </div>

  		
  		
  		
  	<div class="add-ac-balance modal fade" id="add-ac-balance" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    	<div class="modal-dialog add-ac-balance-dialog">
    		<div class="modal-content">
	            <div class="modal-header">
	            	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	              <h3 class="panel-title"><span id="subject_code_balance">1001001001001</span>--<span id="subject_name_balance">科目AAAAAA</span></h3>
              </div>
				<div class="modal-body add-ac-balance-dialog-body">
					<table>
			    		<tbody>
			    			<tr id="tr-add-project-info">
			    				<th >项目</th><td><input type="text" name="project_name" id="project_name" value="" /><input id="project_id" name="project_id" value="" type="hidden"></td>
			    			</tr>
			    			<tr id="tr-add-client-info">
			    				<th >客户</th><td><input type="text" name="client_name" id="client_name" value=""><input id="client_id" name="client_id" value="" type="hidden"></td>
			    			</tr>
			    			<tr id="tr-add-supplier-info">
			    				<th >供应商</th><td><input type="text" name="supplier_name" id="supplier_name" value=""><input id="supplier_id" name="supplier_id" value="" type="hidden"></td>
			    			</tr>
			    			<tr id="tr-add-depart-info">
			    				<th >部门</th><td><input type="text" name="depart_name" id="depart_name" value=""><input id="depart_id" name="depart_id" value="" type="hidden"></td>
			    			</tr>
			    			<tr id="tr-add-employee-info">
			    				<th >员工</th><td><input type="text" name="employee_name" id="employee_name" value=""><input id="employee_id" name="employee_id" value="" type="hidden"></td>
			    			</tr>
			    			<tr id="tr-add-product-info">
			    				<th >存货</th><td><input type="text" name="product_name" id="product_name" value=""><input id="product_id" name="product_id" value="" type="hidden"></td>
			    			</tr>
			    		</tbody>
			    	</table>
               </div>
               <div class="modal-footer subject-dialog-footer">
	                <button type="button" class="btn btn-subj-cancel" data-dismiss="modal">取消</button>
	                <button type="button" class="btn btn-addsubjAC-save">保存</button>
           		 </div>
			</div>
		</div>
	</div>
		
   	
   	<div class="unit-currency modal fade" id="unit-currency" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    	<div class="modal-dialog unit-currency-dialog">
    		<div class="modal-content">
	            <div class="modal-header">
	              <h3 class="panel-title">  <span > 数量 </span> <span >外币</span>期初</h3>
	            </div>
	            <div class="modal-body">
					<table class="unit-currency-table" >
						<thead>
							<tr>
								<th rowspan="2" style="border-radius: 2px 0 0 3px;">科目编码</th>
								<th rowspan="2">科目名称</th>
								<th rowspan="2">单位</th>
								<th rowspan="2">币种</th>
								<th rowspan="2">方向</th>
								<th colspan="3" style="text-align: center;">期初余额</th>
								<th colspan="3" style="text-align: center;">本年累计借方</th>
								<th colspan="3" style="text-align: center;border-radius: 0 2px 0 0;">本年累计贷方</th>
							</tr>
							<tr>
								<th>数量</th><th >原币</th><th >本位币</th><th>数量</th><th>原币</th><th >本位币</th><th>数量</th><th >原币</th><th style="border-radius: 0 0 3px 0;">本位币</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="ac-td-balance" data-ac-balance-id="1111">
									1001010102
								</td>
								<td>科目1</td>
								<td>KG</td>
								<td>usd</td>
								<td>借</td>
								<!-- 期初余额 -->
								<td id="subject-balance-td-1111" class="subject-balance-td" data-type-info="count"><label id="subject-balance-td-1111-lbl-count" data-type-info="count">111111</label><input name="subject-balance-td-1111-txt-count" type="text" id="subject-balance-td-1111-txt-count" data-subject-id="1111" data-type-info="count" style="display: none;"></td>
								<td id="subject-balance-td-1111" class="subject-balance-td" data-type-info="oCurrency"><label id="subject-balance-td-1111-lbl-oCurrency" data-type-info="oCurrency">111111</label><input name="subject-balance-td-1111-txt-oCurrency" type="text" id="subject-balance-td-1111-txt-oCurrency" data-subject-id="1111" data-type-info="oCurrency" style="display: none;"></td>
								<td id="subject-balance-td-1111" class="subject-balance-td" data-type-info="sMoney"><label id="subject-balance-td-1111-lbl-sMoney" data-type-info="sMoney">111111</label><input name="subject-balance-td-1111-txt-sMoney" type="text" id="subject-balance-td-1111-txt-sMoney" data-subject-id="1111" data-type-info="sMoney" style="display: none;"></td>
								<!-- 本年累计借方 -->
								<td id="subject-balance-td-1111" class="subject-balance-td" data-type-info="debit-count"><label id="subject-balance-td-1111-lbl-debit-count" data-type-info="debit-count">111111</label><input name="subject-balance-td-1111-txt-debit-count" type="text" id="subject-balance-td-1111-txt-debit-count" data-subject-id="1111" data-type-info="debit-count" style="display: none;"></td>
								<td id="subject-balance-td-1111" class="subject-balance-td" data-type-info="debit-oCurrency"><label id="subject-balance-td-1111-lbl-debit-oCurrency" data-type-info="debit-oCurrency">111111</label><input name="subject-balance-td-1111-txt-debit-oCurrency" type="text" id="subject-balance-td-1111-txt-debit-oCurrency" data-subject-id="1111" data-type-info="debit-oCurrency" style="display: none;"></td>
								<td id="subject-balance-td-1111" class="subject-balance-td" data-type-info="debit-sMoney"><label id="subject-balance-td-1111-lbl-debit-sMoney" data-type-info="debit-sMoney">111111</label><input name="subject-balance-td-1111-txt-debit-sMoney" type="text" id="subject-balance-td-1111-txt-debit-sMoney" data-subject-id="1111" data-type-info="debit-sMoney" style="display: none;"></td>
								<!-- 本年累计贷方 -->
								<td id="subject-balance-td-1111" class="subject-balance-td" data-type-info="credit-count"><label id="subject-balance-td-1111-lbl-credit-count" data-type-info="credit-count">111111</label><input name="subject-balance-td-1111-txt-credit-count" type="text" id="subject-balance-td-1111-txt-credit-count" data-subject-id="1111" data-type-info="credit-count" style="display: none;"></td>
								<td id="subject-balance-td-1111" class="subject-balance-td" data-type-info="credit-oCurrency"><label id="subject-balance-td-1111-lbl-credit-oCurrency" data-type-info="credit-oCurrency">111111</label><input name="subject-balance-td-1111-txt-credit-oCurrency" type="text" id="subject-balance-td-1111-txt-credit-oCurrency" data-subject-id="1111" data-type-info="credit-oCurrency" style="display: none;"></td>
								<td id="subject-balance-td-1111" class="subject-balance-td" data-type-info="credit-sMoney"><label id="subject-balance-td-1111-lbl-credit-sMoney" data-type-info="credit-sMoney">111111</label><input name="subject-balance-td-1111-txt-credit-sMoney" type="text" id="subject-balance-td-1111-txt-credit-sMoney" data-subject-id="1111" data-type-info="credit-sMoney" style="display: none;"></td>
							</tr>
							<tr>
								<td class="ac-td-balance" data-ac-balance-id="2222">
									1001010102
								</td>
								<td>科目1</td>
								<td>KG</td>
								<td>usd</td>
								<td>借</td>
								<!-- 期初余额 -->
								<td id="subject-balance-td-2222" class="subject-balance-td" data-type-info="count"><label id="subject-balance-td-2222-lbl-count" data-type-info="count">222211</label><input name="subject-balance-td-2222-txt-count" type="text" id="subject-balance-td-2222-txt-count" data-subject-id="2222" data-type-info="count" style="display: none;"></td>
								<td id="subject-balance-td-2222" class="subject-balance-td" data-type-info="oCurrency"><label id="subject-balance-td-2222-lbl-oCurrency" data-type-info="oCurrency">222211</label><input name="subject-balance-td-2222-txt-oCurrency" type="text" id="subject-balance-td-2222-txt-oCurrency" data-subject-id="2222" data-type-info="oCurrency" style="display: none;"></td>
								<td id="subject-balance-td-2222" class="subject-balance-td" data-type-info="sMoney"><label id="subject-balance-td-2222-lbl-sMoney" data-type-info="sMoney">222211</label><input name="subject-balance-td-2222-txt-sMoney" type="text" id="subject-balance-td-2222-txt-sMoney" data-subject-id="2222" data-type-info="sMoney" style="display: none;"></td>
								<!-- 本年累计借方 -->
								<td id="subject-balance-td-2222" class="subject-balance-td" data-type-info="debit-count"><label id="subject-balance-td-2222-lbl-debit-count" data-type-info="debit-count">222211</label><input name="subject-balance-td-2222-txt-debit-count" type="text" id="subject-balance-td-2222-txt-debit-count" data-subject-id="2222" data-type-info="debit-count" style="display: none;"></td>
								<td id="subject-balance-td-2222" class="subject-balance-td" data-type-info="debit-oCurrency"><label id="subject-balance-td-2222-lbl-debit-oCurrency" data-type-info="debit-oCurrency">222211</label><input name="subject-balance-td-2222-txt-debit-oCurrency" type="text" id="subject-balance-td-2222-txt-debit-oCurrency" data-subject-id="2222" data-type-info="debit-oCurrency" style="display: none;"></td>
								<td id="subject-balance-td-2222" class="subject-balance-td" data-type-info="debit-sMoney"><label id="subject-balance-td-2222-lbl-debit-sMoney" data-type-info="debit-sMoney">222211</label><input name="subject-balance-td-2222-txt-debit-sMoney" type="text" id="subject-balance-td-2222-txt-debit-sMoney" data-subject-id="2222" data-type-info="debit-sMoney" style="display: none;"></td>
								<!-- 本年累计贷方 -->
								<td id="subject-balance-td-2222" class="subject-balance-td" data-type-info="credit-count"><label id="subject-balance-td-2222-lbl-credit-count" data-type-info="credit-count">222211</label><input name="subject-balance-td-2222-txt-credit-count" type="text" id="subject-balance-td-2222-txt-credit-count" data-subject-id="2222" data-type-info="credit-count" style="display: none;"></td>
								<td id="subject-balance-td-2222" class="subject-balance-td" data-type-info="credit-oCurrency"><label id="subject-balance-td-2222-lbl-credit-oCurrency" data-type-info="credit-oCurrency">222211</label><input name="subject-balance-td-2222-txt-credit-oCurrency" type="text" id="subject-balance-td-2222-txt-credit-oCurrency" data-subject-id="2222" data-type-info="credit-oCurrency" style="display: none;"></td>
								<td id="subject-balance-td-2222" class="subject-balance-td" data-type-info="credit-sMoney"><label id="subject-balance-td-2222-lbl-credit-sMoney" data-type-info="credit-sMoney">222211</label><input name="subject-balance-td-2222-txt-credit-sMoney" type="text" id="subject-balance-td-2222-txt-credit-sMoney" data-subject-id="2222" data-type-info="credit-sMoney" style="display: none;"></td>
							</tr>
							<tr>
								<td class="ac-td-balance" data-ac-balance-id="3333">
									1001010102
								</td>
								<td>科目1</td>
								<td>KG</td>
								<td>usd</td>
								<td>借</td>
								<!-- 期初余额 -->
								<td id="subject-balance-td-3333" class="subject-balance-td" data-type-info="count"><label id="subject-balance-td-3333-lbl-count" data-type-info="count">333311</label><input name="subject-balance-td-3333-txt-count" type="text" id="subject-balance-td-3333-txt-count" data-subject-id="3333" data-type-info="count" style="display: none;"></td>
								<td id="subject-balance-td-3333" class="subject-balance-td" data-type-info="oCurrency"><label id="subject-balance-td-3333-lbl-oCurrency" data-type-info="oCurrency">333311</label><input name="subject-balance-td-3333-txt-oCurrency" type="text" id="subject-balance-td-3333-txt-oCurrency" data-subject-id="3333" data-type-info="oCurrency" style="display: none;"></td>
								<td id="subject-balance-td-3333" class="subject-balance-td" data-type-info="sMoney"><label id="subject-balance-td-3333-lbl-sMoney" data-type-info="sMoney">333311</label><input name="subject-balance-td-3333-txt-sMoney" type="text" id="subject-balance-td-3333-txt-sMoney" data-subject-id="3333" data-type-info="sMoney" style="display: none;"></td>
								<!-- 本年累计借方 -->
								<td id="subject-balance-td-3333" class="subject-balance-td" data-type-info="debit-count"><label id="subject-balance-td-3333-lbl-debit-count" data-type-info="debit-count">333311</label><input name="subject-balance-td-3333-txt-debit-count" type="text" id="subject-balance-td-3333-txt-debit-count" data-subject-id="3333" data-type-info="debit-count" style="display: none;"></td>
								<td id="subject-balance-td-3333" class="subject-balance-td" data-type-info="debit-oCurrency"><label id="subject-balance-td-3333-lbl-debit-oCurrency" data-type-info="debit-oCurrency">333311</label><input name="subject-balance-td-3333-txt-debit-oCurrency" type="text" id="subject-balance-td-3333-txt-debit-oCurrency" data-subject-id="3333" data-type-info="debit-oCurrency" style="display: none;"></td>
								<td id="subject-balance-td-3333" class="subject-balance-td" data-type-info="debit-sMoney"><label id="subject-balance-td-3333-lbl-debit-sMoney" data-type-info="debit-sMoney">333311</label><input name="subject-balance-td-3333-txt-debit-sMoney" type="text" id="subject-balance-td-3333-txt-debit-sMoney" data-subject-id="3333" data-type-info="debit-sMoney" style="display: none;"></td>
								<!-- 本年累计贷方 -->
								<td id="subject-balance-td-3333" class="subject-balance-td" data-type-info="credit-count"><label id="subject-balance-td-3333-lbl-credit-count" data-type-info="credit-count">333311</label><input name="subject-balance-td-3333-txt-credit-count" type="text" id="subject-balance-td-3333-txt-credit-count" data-subject-id="3333" data-type-info="credit-count" style="display: none;"></td>
								<td id="subject-balance-td-3333" class="subject-balance-td" data-type-info="credit-oCurrency"><label id="subject-balance-td-3333-lbl-credit-oCurrency" data-type-info="credit-oCurrency">333311</label><input name="subject-balance-td-3333-txt-credit-oCurrency" type="text" id="subject-balance-td-3333-txt-credit-oCurrency" data-subject-id="3333" data-type-info="credit-oCurrency" style="display: none;"></td>
								<td id="subject-balance-td-3333" class="subject-balance-td" data-type-info="credit-sMoney"><label id="subject-balance-td-3333-lbl-credit-sMoney" data-type-info="credit-sMoney">333311</label><input name="subject-balance-td-3333-txt-credit-sMoney" type="text" id="subject-balance-td-3333-txt-credit-sMoney" data-subject-id="3333" data-type-info="credit-sMoney" style="display: none;"></td>
							</tr>
							
						</tbody>											
					</table>
	         	</div>
         		<div class="modal-footer subject-dialog-footer">
	                <button type="button" class="btn btn-subj-cancel" data-dismiss="modal">取消</button>
	                <button type="button" class="btn btn-addsubj-save">保存</button>
           		 </div>
         	 </div>
          </div>
    </div>

    


	<script type="text/javascript" src="<%=basePath%>jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script  type="text/javascript" src="<%=basePath%>js/setting.js"></script>
