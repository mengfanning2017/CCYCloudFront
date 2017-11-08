<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String account_id = session.getAttribute("current_account_id").toString();
	String company_id = session.getAttribute("current_company_id").toString();
/* 	session.setAttribute("current_account_id", account_id);
	session.setAttribute("current_company_id", company_id); */
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CCYCloud-财务系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="CCYCloud-财务系统">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script src="<%=basePath%>js/config.js"></script>
<!-- Bootstrap core CSS -->
<link href="<%=basePath%>bootstrap/css/bootstrap.css" rel="stylesheet">


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="<%=basePath%>bootstrap/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=basePath%>bootstrap/css/dashboard.css" rel="stylesheet">

<link href="<%=basePath%>bootstrap/css/sidebar.css" rel="stylesheet">

<link href="<%=basePath%>bootstrap/css/cus-icons.css" rel="stylesheet">

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<%=basePath%>bootstrap/js/jquery.js"></script>
	<script src="<%=basePath%>bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/siderbar.js"></script>
<script src="<%=basePath%>bootstrap/js/ie-emulation-modes-warning.js"></script>
<script type="text/javascript" src="<%=basePath%>js/common.js"></script>

</head>


<body >

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid container-fluid-header">
			<div class="navbar-header">
				<!-- 
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button> 
				-->
				<a class="navbar-brand" href="#">
				<span class="logo logo-ccylogo-text"></span></a>
				<div class="dropdown dropdownBooks">
				    <button type="button" class="btn dropdown-toggle" id="books" data-toggle="dropdown">账套
				        <span class="caret"></span>
				    </button>
				    <ul class="dropdown-menu pull-left" role="menu" aria-labelledby="books">
				        <li role="presentation">
				            <a role="menuitem" tabindex="-1" href="#">账套1</a>
				        </li>
				        <li role="presentation">
				            <a role="menuitem" tabindex="-1" href="#">账套2</a>
				        </li>
				        <li role="presentation">
				            <a role="menuitem" tabindex="-1" href="#">账套3</a>
				        </li>
				       <!--  
				       	<li role="presentation" class="divider"></li>
				        <li role="presentation">
				            <a role="menuitem" tabindex="-1" href="#">分离的链接</a>
				        </li>
				         -->
				    </ul>
				</div>
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

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar siderbar_nav_color">
				<ul class="nav nav-sidebar" id="siderbar_ul">
					<li class="active" id="home_LI"><a href="javascript:void(0);">
							<span class="cusleft cusleft-left-home"></span>首页
					</a></li>
					<li id="voucher_LI" data-isRoot="1">
						<a href="javascript:void(0);" ><span class="cusleft cusleft-left-voucher"></span>凭证</a>
						<ul class="leftmenu-sec-ul leftmenu-sec-ul-voucher" id="leftmenu-sec-ul-voucher">
							<li id="menu-li-newVoucher" data-target-tab="newVoucher">新增凭证</li> <li id="menu-li-voucherDetail" data-target-tab="voucherDetail">查看凭证</li> <li>凭证列表</li> 
						</ul>
					</li>
					<li id="accounts_LI" data-isRoot="1">
						<a href="javascript:void(0);"><span class="cusleft cusleft-left-accounts"></span>账簿</a>
						<ul class="leftmenu-sec-ul leftmenu-sec-ul-accounts" id="leftmenu-sec-ul-accounts">
							<li id="menu-li-balanceReport" data-target-tab="balanceReport">账簿-余额表</li> <li>账簿-总账</li> <li>账簿-明细账</li> 
						</ul>
					</li>
					<li id="reports_LI" data-isRoot="0"><a href="javascript:void(0);"><span class="cusleft cusleft-left-reports"></span>报表</a></li>
					<li id="invoice_LI" data-isRoot="0"><a href="javascript:void(0);"><span class="cusleft cusleft-left-invoice"></span>发票</a></li>
					<li id="assets_LI" data-isRoot="0"><a href="javascript:void(0);"><span class="cusleft cusleft-left-assets"></span>资产</a></li>
					<li id="funds_LI" data-isRoot="0"><a href="javascript:void(0);"><span class="cusleft cusleft-left-funds"></span>资金</a></li>
					<li id="salary_LI" data-isRoot="0"><a href="javascript:void(0);"><span class="cusleft cusleft-left-salary"></span>薪酬</a></li>
					<li id="settle_LI" data-isRoot="0"><a href="javascript:void(0);"><span class="cusleft cusleft-left-settle"></span>结账</a></li>
					<li id="setting_LI" data-isRoot="0"><a href="javascript:void(0);"><span class="cusleft-config cusleft-config-setting"></span>设置</a></li>
				</ul>
			</div>
			<div class="main col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 ">
				<ul id="myTab" class="nav nav-tabs">
					<li class="nav nav-tabs active">
					<a href="#home" id="home_A"
						data-toggle="tab"><span class="icon icon-remove" id="home_remove" style="display:none;"></span>首页 </a></li>
				</ul>
				<div id="myTabContent" class="tab-content main-tabcontent" style="padding-right: 5px;">
					<div class="tab-pane fade in active" id="home">
						<div class="row button-row">
							<div class="col-md-3">
								<button type="button" id="btn-voucher" class="btn btn-lg btn-block btn-voucher"><span class="cus cus-voucher"></span><span class="text-posion">凭证</span></button>
							</div>
							<div class="col-md-3">
								<button type="button" id="btn-accounts" class="btn btn-lg btn-block btn-accounts"><span class="cus cus-accounts"></span><span class="text-posion">账簿</span></button>
							</div>
							<div class="col-md-3">
								<button type="button" id="btn-reports" class="btn btn-lg btn-block btn-reports"><span class="cus cus-reports"></span><span class="text-posion">报表</span></button>
							</div>
							<div class="col-md-3">
								<button type="button" id="btn-invoice" class="btn btn-lg btn-block btn-invoice"><span class="cus cus-invoice"></span><span class="text-posion">发票</span></button>
							</div>
						</div>

						<div class="row button-row">
							<div class="col-md-3">
								<button type="button" id="btn-assets" class="btn btn-lg btn-block btn-assets"><span class="cus cus-assets"></span><span class="text-posion">资产</span></button>
							</div>
							<div class="col-md-3">
								<button type="button" id="btn-funds" class="btn btn-lg btn-block btn-funds"><span class="cus cus-funds"></span><span class="text-posion">资金</span></button>
							</div>
							<div class="col-md-3">
								<button type="button" id="btn-salary" class="btn btn-lg btn-block btn-salary"><span class="cus cus-salary"></span><span class="text-posion">薪酬</span></button>
							</div>
							<div class="col-md-3">
								<button type="button" id="btn-settle" class="btn btn-lg btn-block btn-settle"><span class="cus cus-settle"></span><span class="text-posion">结账</span></button>
							</div>
						</div>

						<div class="row">
							<div class="col-md-6">
								<div class="panel panel-default" style="border-radius: 5px; ">
									<div class="panel-heading" style="border-radius: 5px; ">
										<ul id="myTab2" class="nav nav-tabs" style="border-radius: 5px; ">
											<li class="nav nav-tabs active">
												<a href="#voucherLast" id="voucherLast_A" data-toggle="tab">最近的凭证 </a>
											</li>
											<li class="nav nav-tabs">
												<a href="#invoiceLast" id="invoiceLast_A" data-toggle="tab">最近的发票 </a>
											</li>
										</ul>
									</div>
									<div id="myTabContent2" class="tab-content">
										<div class="tab-pane fade in active panel-body"
											id="voucherLast">
											<button type="button" class="btn btn-lg " id="btnAddVoucher">
											<span class='cusaddVoucher cusaddVoucher-addVoucher'></span>
											</button>
											<div>121231231321323</div>
										</div>
										<div class="tab-pane fade panel-body" id="invoiceLast">发票</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="row">
									<div class="col-md-12" style="height: 100%;">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h3 class="panel-title">常用功能</h3>
											</div>
											<div class="panel-body usual">
												<div class="row row-green">
													<div class="col-md-6" style="text-align: center;">
														<button type="button" class="btn  btn-primary">录凭证</button>
													</div>
													<div class="col-md-6" style="text-align: center;">
														<button type="button" class="btn  btn-primary">收款单</button>
													</div>
												</div>
												<div class="row row-blue">
													<div class="col-md-6" style="text-align: center;">
														<button type="button" class="btn  btn-primary">录发票</button>
													</div>
													<div class="col-md-6" style="text-align: center;">
														<button type="button" class="btn  btn-primary">付款单</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12" style="height: 100px;">
										<div class="panel panel-default">
											<div class="panel-body text-content">
												<p>Panel contentPanel
												contentPanel contentPanel contentPanel contentPanel
												contentPanel contentPanel contentPanel contentPanel</p>
												<p>
												contentPanel contentPanel contentPanel contentPanel content
												Panel contentPanel contentPanel contentPanel contentPanel
												contentPanel contentPanel content
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
					<div class="tab-pane fade" id="voucher">凭证列表</div>
					<div class="tab-pane fade" id="accounts">账簿</div>
					<div class="tab-pane fade" id="reports">报表</div>
					<div class="tab-pane fade" id="invoice">发票</div>
					<div class="tab-pane fade" id="assets">资产</div>
					<div class="tab-pane fade" id="funds">资金</div>
					<div class="tab-pane fade" id="salary">薪酬</div>
					<div class="tab-pane fade" id="settle">结账</div>
					<div class="tab-pane fade" id="setting">设置</div>
					<div class="tab-pane fade" id="newVoucher" style="margin-top: 0px;">新增凭证</div>
					<div class="tab-pane fade" id="voucherDetail">展示凭证</div>
					<div class="tab-pane fade" id="balanceReport">余额表</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>
