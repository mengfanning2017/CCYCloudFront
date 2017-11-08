<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
String UserId = session.getAttribute("userid")==null?"":session.getAttribute("userid").toString();
 %>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


<!-- Bootstrap core CSS -->
<link href="<%=basePath%>bootstrap/css/bootstrap.css" rel="stylesheet">


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="<%=basePath%>bootstrap/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<script src="<%=basePath%>js/config.js"></script>
<link href="<%=basePath%>bootstrap/css/dashboard.css" rel="stylesheet"> 
<link href="<%=basePath%>bootstrap/css/header.css" rel="stylesheet"> 
<link href="<%=basePath%>bootstrap/css/cus-icons.css" rel="stylesheet">
<link href="<%=basePath%>bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="<%=basePath%>bootstrap/js/ie-emulation-modes-warning.js"></script>
<!-- font-awesome -->

<link rel="stylesheet"
	href="<%=basePath%>Font-Awesome-3.2.1/css/font-awesome.min.css">
<!--[if IE 7]>
	<link rel="stylesheet" href="<%=basePath%>Font-Awesome-3.2.1/css/font-awesome-ie7.min.css">
	<![endif]-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<link rel="stylesheet"
	href="<%=basePath%>jquery-ui-1.12.1.custom/jquery-ui.css">    
</head>

<body >
<input type="hidden"  id="UserId"  value="<%=UserId %>"/>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid container-fluid-header">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">
				<span class="logo logo-ccylogo-text"></span></a>
			</div>
			
			<div id="userInfo" class="userInfo">
				<span style="background-image: url('<%=basePath%>img/logo.png');" class="userImage"></span>
				<!--
				<img style="border-radius: 50%;width: 25px;height: 25px;" src="<%=basePath%>img/logo.png">
				 <ul class="nav navbar-nav navbar-right">
					<li><a href="#">Dashboard</a></li>
					<li><a href="#">Settings</a></li>
					<li><a href="#">Profile</a></li>
					<li><a href="#">Help</a></li>
				</ul>
				<form class="navbar-form navbar-right">
					<input class="form-control" placeholder="Search..." type="text">
				</form> -->
			</div>
			
		</div>
	</nav>

	<div class="container-fluid container-main">
		<div class="row" >
			<div class="col-sm-12">
			<ul id="myTab" class="nav nav-tabs space-btn-group">
				<li class="nav nav-tabs"><a class="tabA" href="#book-create" data-toggle="tab">创建账套</a></li>
				<li class="nav nav-tabs"><a class="tabA" href="#user-management" data-toggle="tab">用户管理</a></li>
				<li class="nav nav-tabs"><a class="tabA" href="#book-management" data-toggle="tab">账套管理</a></li>
				<li class="nav nav-tabs returnWorkSpace" id="returnWorkSpace" style="display: none;"><a href="#book-list" data-toggle="tab" >返回工作台</a></li>
			</ul>
			</div>
		
		</div>
		<div id="myTabContent" class="tab-content">
		<!-- begin 账套列表 -->
		<div id="book-list" class="row book-list tab-pane fade in active"   >
			<div class="content-header">
				<span class="header-text">账套列表</span>
			</div>
			
			<div class="list-Content ">
				<div class="book">
					<div class="book-header">
						<div class='bookname'><a href="<%=basePath%>">北京创财云网络科技有限公司账套1</a></div>
						<div class="config"><span class="icon icon-pencil"></span><span class="icon icon-lock"></span></div>
					</div>
					<div class="book-content">
						<ul class="bookcontent">
							<li class="company-name">企业名称: <span>北京创财云网络科技有限公司</span></li>
							<li class="create-month">建账期间: <span>2017年8月</span></li>
							<li class="account-rule">会计准则: <span>2007企业会计准则</span></li>
							<li>纳税人资格: <span>一般纳税人</span></li>
							<li class="manager">负责人: <span>张三</span></li>
							<li class="manager">审核人: <span>李四</span></li>
							<li class="user">操作用户: <span>王一,王二, 王三,王四,王五</span></li>
						</ul>
					</div>
				</div>
				<div class="book">
					<div class="book-header">
						<div class='bookname'><a href="<%=basePath%>">北京创财云网络科技有限公司账套1</a></div>
						<div class="config"><span class="icon icon-pencil"></span><span class="icon icon-lock"></span></div>
					</div>
					<div class="book-content">
						<ul class="bookcontent">
							<li class="company-name">企业名称: <span>北京创财云网络科技有限公司</span></li>
							<li class="create-month">建账期间: <span>2017年8月</span></li>
							<li class="account-rule">会计准则: <span>2007企业会计准则</span></li>
							<li>纳税人资格: <span>一般纳税人</span></li>
							<li class="manager">负责人: <span>张三</span></li>
							<li class="manager">审核人: <span>李四</span></li>
							<li class="user">操作用户: <span>王一,王二, 王三,王四,王五</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- end 账套列表 -->
		
		
		<!-- begin 创建账套 -->
		<div id="book-create" class="row book-create tab-pane fade"  >
			<div class="book-info shadow">
				<div class="content-header">
					<span class="header-text">账套企业信息</span>
				</div>
				<div class="book-info-content">
					<div class="row">
						<div class="col-md-1 book-info-title"><span class="icon icon-asterisk needs-icon"></span>账套名称</div><div class="col-md-3">:<input type="text" value="" id="book-name" class="book-name"/> </div>
						<div class="col-md-1 book-info-title"><span class="icon icon-asterisk needs-icon"></span>建账期间</div><div class="col-md-3">:<input type="text" value="" id="book-create-month" class="book-create-month" readonly="readonly" /> </div>
						<div class="col-md-1 book-info-title"><span class="icon icon-asterisk needs-icon"></span>会计准则</div><div class="col-md-3">:
							<select  id="book-account-rule" class="input-large book-account-rule">
								<option value="1" >2007企业会计准则</option>
							</select> 
						</div>
					</div>
					<div class="row">
						<div class="col-md-1 book-info-title"><span class="icon icon-asterisk needs-icon"></span>负责人</div><div class="col-md-3">:<input type="text" value=""  id="book-manager" class="book-manager"><input type="hidden" value="" id="book-manager-id" >
						</div>
						<div class="col-md-1 book-info-title"><span class="icon icon-asterisk needs-icon"></span>审核人</div><div class="col-md-3">:<input type="text" value="" id="book-checkUser" class="book-checkUser"/><input type="hidden" value="" id="book-checkUser-id" > </div>
						<div class="col-md-4"><span class="icon icon-asterisk needs-icon"></span>
							<label class="radio-inline"> <input type="radio" name="book-taxpayer" id="book-taxpayer-small" checked="checked" value="1" >小规模纳税人</label>
							<label class="radio-inline"> <input type="radio" name="book-taxpayer" id="book-taxpayer-normal" value="2" >一般纳税人</label>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-md-1 book-info-title">企业名称</div><div class="col-md-3">:<input type="text" value="" id="book-companyname" class="book-companyname"/> </div>
						<div class="col-md-1 book-info-title">纳税人识别号</div><div class="col-md-3">:<input type="text" value="" id="book-taxpayerNo" class="book-taxpayerNo"/> </div>
						<div class="col-md-1 book-info-title">所属行业</div><div class="col-md-3">:<input type="text" value="" id="book-industry" class="book-industry"/>  <input type="hidden" value="" id="book-industry-id" /></div>
					</div>
					<div class="row">
						<div class="col-md-1 book-info-title" >单位所在地</div><div class="col-md-3">:<input type="text" value="" id="book-companyAddress" class="book-companyAddress" name="book-companyAddress" readonly="readonly"/> </div>
						<div class="col-md-8"></div>
					</div>
					<div class="row button-row save-book" >
						<div class="col-md-10"></div>
						<div class="col-md-2"><button type="button" class="btn  save-book shadow" id="btn-save-book" disabled="disabled">保存</button>
						</div>
					</div>
				</div>
			</div>
			<div class="book-info users shadow">
				<div class="content-header">
					<span class="header-text">分配用户</span>
				</div>
				<div class="book-info-user">
					<div class="row">
						<div class="col-md-2"><label class="lbl-manager"><span class="icon icon-user"></span>负责人:张三</label></div>
						<div class="col-md-10">
							<div class="row">
								<div class="col-md-2"><label class="lbl-user"><span class="icon icon-user"></span>操作用户:</label></div>
								<div class="col-md-10">
									<ul class="ul-bookmanager" id="ul-bookmanager">
										<li id="1">张1<span class="icon icon-arrow-down"></span></li>
										<li id="2">张2<span class="icon icon-arrow-down"></span></li>
										<li id="3">张3<span class="icon icon-arrow-down"></span></li>
										<li id="4">张4<span class="icon icon-arrow-down"></span></li>
										<li id="5">张5<span class="icon icon-arrow-down"></span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-10">
							<ul class="ul-bookuser" id="ul-bookuser">
								<li id="7">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="8">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="9">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="10">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="11">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="12">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="13">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="14">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="15">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="16">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="17">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="18">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="19">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="20">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="21">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="22">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="23">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="24">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="25">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="26">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="27">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="28">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="29">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="30">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="31">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="32">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="33">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="34">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="35">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="36">张10<span class="icon icon-arrow-up" ></span></li>
								<li id="37">张10<span class="icon icon-arrow-up" ></span></li>

							</ul>
						</div>
					</div>
					<div class="row button-row save-book-user" >
						<div class="col-md-9"></div>
						<div class="col-md-3">
							<button type="button" class="btn shadow">保存</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--end 创建账套 -->
		
		
		<!-- begin 用户管理 -->
		<div id="user-management" class="row shadow user-management tab-pane fade"  >
			<div class="content-header">
				<span class="header-text">用户管理</span>
			</div>
			<div class="user-management-table" id="user-management-table">
				<table class="table"> 
					<thead>
						<tr>
							<th><input type="checkbox" class="checkbox" style="display:inline-block; margin-right: 10px;"><span>全选</span></th>
							<th>姓名</th>
							<th>注册邮箱</th>
							<th>手机号码</th>
							<th>系统身份</th>
							<th>验证状态</th>
						</tr>
					</thead>
					<tbody>
						<tr id="user1" data-user-id="user1">
							<td><input type="checkbox"  ></td>
							<td>张三</td>
							<td>123542@124.com</td>
							<td>1235423455</td>
							<td>系统管理员</td>
							<td>未验证</td>
						</tr>
						<tr id="user2" data-user-id="user2">
							<td><input type="checkbox"  ></td>
							<td>张三</td>
							<td>123542@124.com</td>
							<td>1235423455</td>
							<td>系统管理员</td>
							<td>未验证</td>
						</tr>
						<tr id="user3" data-user-id="user3">
							<td><input type="checkbox"  ></td>
							<td>张三</td>
							<td>123542@124.com</td>
							<td>1235423455</td>
							<td>系统管理员</td>
							<td>未验证</td>
						</tr>
						<tr id="user4" data-user-id="user4">
							<td><input type="checkbox"  ></td>
							<td>张三</td>
							<td>123542@124.com</td>
							<td>1235423455</td>
							<td>系统管理员</td>
							<td>未验证</td>
						</tr>
						<tr id="user5" data-user-id="user5">
							<td><input type="checkbox"  ></td>
							<td>张三</td>
							<td>123542@124.com</td>
							<td>1235423455</td>
							<td>系统管理员</td>
							<td>未验证</td>
						</tr>
						<tr id="user6" data-user-id="user6">
							<td><input type="checkbox"  ></td>
							<td>张三</td>
							<td>123542@124.com</td>
							<td>1235423455</td>
							<td>系统管理员</td>
							<td>未验证</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="row">
				<button type="button" class="btn shadow sendMessage">发送验证</button>
			</div>
		</div>
		<!-- end 用户管理 -->
		
		<!-- begin 账套管理 -->
		<div id="book-management" class="row shadow book-management management tab-pane fade" >
			<div class="content-header">
				<span class="header-text">账套管理</span>
			</div>
			<div class="book-management-table" id="book-management-table">
				<table class="table">
					<thead>
						<tr>
							<th>账套名称</th>
							<th>角色</th>
							<th>权限移交</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>账套1</td>
							<td>系统管理员</td>
							<td><a class="changeAuth_A" data-user-id="1" href="javascript:void(0);">权限移交</a></td>
						</tr>
						<tr>
							<td>账套1</td>
							<td>系统管理员</td>
							<td><a class="changeAuth_A" data-user-id="1" href="javascript:void(0);">权限移交</a></td>
						</tr>
						<tr>
							<td>账套1</td>
							<td>系统管理员</td>
							<td><a class="changeAuth_A" data-user-id="1" href="javascript:void(0);">权限移交</a></td>
						</tr>
						<tr>
							<td>账套1</td>
							<td>系统管理员</td>
							<td><a class="changeAuth_A" data-user-id="1" href="javascript:void(0);">权限移交</a></td>
						</tr>
						<tr>
							<td>账套1</td>
							<td>系统管理员</td>
							<td><a class="changeAuth_A" data-user-id="1" href="javascript:void(0);">权限移交</a></td>
						</tr>						
					</tbody>
				</table>
			</div>
		</div>

		
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		    <div class="modal-dialog changeAuth-model shadow">
		        <div class="modal-content">
		            <div class="modal-header modal-header-changeAuth shadow">
		                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		                <h4 class="modal-title" id="myModalLabel">权限移交</h4>
		            </div>
		            <div class="modal-body">
						<div class="user-info-changeAuth row">
							<div class="col-sm-2" >
								<span style="background-image: url('<%=basePath%>img/logo.png');" class="userImage-userinfo"></span>
							</div>
							<div class="col-sm-10" >
								<ul class="userinfo-list-ul">
									<li class="title-li">姓名:</li>
									<li class="detail-li">马天宇</li>
									<li class="title-li">注册邮箱:</li>
									<li class="detail-li">12314@123.com</li>
									<li class="title-li">手机号:</li>
									<li class="detail-li">1113344433</li>
								</ul>
							</div>
						</div>
						<div class="changeAuth-ico row">
							<span style="background-image: url('<%=basePath%>img/change-auth-user.png');" class="changeAuth-ico-span" ></span>
						</div>
						<div class="user-list-changeAuth row">
							<ul class="user-list-ul">
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
								<li><input type="radio" name="user-chose-id">张三 </li>
							</ul>
						</div>
					</div>
		            <div class="modal-footer">
		            	<button type="button" class="btn  change-auth-save">保存</button>
		                <button type="button" class="btn  change-auth-cancel" data-dismiss="modal">取消</button>
		            </div>
		        </div><!-- /.modal-content -->
		    </div><!-- /.modal-dialog -->
		</div>
		</div>
		<!-- /.modal -->
		<!-- end 账套管理 -->
	</div>
	<div id="addUserBtn" class="addUserBtn shadow" style="display: none;" data-user-id="">+</div>
	<div id="delUserBtn" class="delUserBtn shadow" style="display: none;" data-user-id="">-</div>
	
			<!-- 模态框（Modal） -->
	<div class="modal fade" id="modal-chose-company" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog chose-company-model shadow">
			<div class="modal-content">
				<div class="modal-header select-company-header shadow">
	               
	                <h4 class="modal-title" id="myModalLabel">选取公司</h4>
		        </div>
		        <div class="modal-body select-company-body">
			        <select id="select-company-panel" name="select-company-panel" class="select select-company-panel">

	              	</select>
		        </div>
		        <div class="modal-footer">
	            	<button type="button" class="btn btn-sm btn-warning chose-company-save" id="chose-company-save" data-dismiss="modal">确定</button>
		       </div>
			</div>
		</div>
	</div>
	<div class="address panel panel-success company-address-div" id="company-address-div" style="position: absolute;display:none;">
		<div class="panel-heading shadow">
			<h3 class="panel-title">省市区</h3>
		</div>
		<div class="pcc-tbl panel-body">
			<table class="table"> 
				<tbody>
					<tr>
						<td>    
							<select id="province" name="province" class="select" onchange="doProvAndCityRelation();">
		  　　　　　　　　		<option id="choosePro"value="-1">请选择您所在省份</option>
		  　　　　　　		</select>省
	  					</td>
	  					<td>
	  						<select id="citys" name="city" class="select" onchange="doCityAndCountyRelation();">
				 　　　　　　　　<option id='chooseCity' value='-1'>请选择您所在城市</option>
				 　　　　　　</select>市/县
	  					</td>
	  					<td>
	  						<select id="county" class="select" name="county">
	 　　　　　　　　			<option id='chooseCounty' value='-1'>请选择您所在区/县</option>
	　　　　　　				</select>区
	  					</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="panel-body panel-foot pcc-foot">
			<button type="button" class="btn btn-sm btn-success btn-ppc-ok shadow" id="btn-ppc-ok">確定</button>
		</div>
	</div>
<!-- 	<div id="chose-company" class="chose-company" >
		<div class="panel panel-default">
            <div class="panel-heading">
              	<h3 class="panel-title">选择公司</h3>
            </div>
            <div class="panel-body">
              	
            </div>
            <div class="panel-body panel-foot">
            	<button type="button" class="btn btn-sm btn-success btn-chose-company">確定</button>
            </div>
		</div>
	</div> -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<%=basePath%>bootstrap/js/jquery.js"></script>
	<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="<%=basePath%>bootstrap/js/bootstrap.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="<%=basePath%>bootstrap/js/holder.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="<%=basePath%>bootstrap/js/ie10-viewport-bug-workaround.js"></script>
	<script type="text/javascript" src="<%=basePath%>bootstrap/js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="<%=basePath%>bootstrap/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <script type="text/javascript" src="<%=basePath%>bootstrap/js/bootstrap-combobox.js"></script>
    <script type="text/javascript" src="<%=basePath%>jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/SHQ.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/userWorkSpace.js"></script>
</body>
</html>
