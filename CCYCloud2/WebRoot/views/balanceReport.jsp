<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String account_id = session.getAttribute("current_account_id")==null?"5418499593745603652":session.getAttribute("current_account_id").toString()==""?"5418499593745603652":session.getAttribute("current_account_id").toString();
String CompanyId = session.getAttribute("current_company_id")==null?"5509512639679240644":session.getAttribute("current_company_id").toString()==""?"5509512639679240644":session.getAttribute("current_company_id").toString();
String account_date= session.getAttribute("current_account_date")==null?"190001":session.getAttribute("current_account_date").toString();
%>

    <link href="<%=basePath %>jquery-treegrid-master/css/jquery.treegrid.css" rel="stylesheet" />
	<link href="<%=basePath %>bootstrap/css/balanceReport.css" rel="stylesheet" />
	<script type="text/javascript">
		var account_id = "<%= account_id%>";
		var account_date = "<%= account_date%>";
 		var CompanyId = "<%=CompanyId%>";
<%-- 		var user_id = "<%=user_id%>";
		var user_name= "<%=user_name%>"; --%>

		<!--
		
		//-->
		</script>
  
  <div class="balance-Report-financial">
  
  	<div class="viewHeader">
        <div style="left: 0px;" data-dojo-attach-point="toggleSubBtn" class="toggle-btn open">
            <span data-dojo-attach-point="toggleSubBtnText">全部收起</span>
            <span class="icon arrow-down" style="left:78px;"></span>
        </div>
        <div data-dojo-attach-point="resultSearch" class="result-square">
            <span data-dojo-attach-point="resultSearchText"></span>
            <span data-dojo-attach-point="closeSearch" class="square-close"></span>
        </div>
        <h3 data-dojo-attach-point="dropDownList" class="viewTitle hasDropDown">
            <span data-dojo-attach-point="dropDownBut" class="textCenter">余额表</span>
        </h3>
        <!--<div class="greenBtn" style="right: 212px; display: none" data-dojo-attach-point="moreBtn">数量金额</div>-->
        <div style="right: 142px;top:0;" data-dojo-attach-point="toggleSelectType" class="toggle-btn" id="toggleSelectType">
            <span data-dojo-attach-point="toggleSelectTypeText">选择显示方式</span>
            <span class="icon arrow-down"></span>
        </div>
        <div class="dijitPopup chanjetWidgetPopup" style="visibility: visible; left: 876.117px;display :none; right: auto; z-index: 1000; height: auto; overflow: visible;" role="region" aria-label="common_form_HeaderMenu_1" id="dijitPopupDiv" dijitpopupparent="">
			<div tabindex="-1" role="alertdialog" class="chanjetWidget chanjetCommandMenu chanjetformPopover dijitTooltipBelow" id="common_form_HeaderMenu_1" style="width: 120px; top: 0px; visibility: visible;" widgetid="common_form_HeaderMenu_1">
				<ul>
					<li li_id="1">
						<a href="javascript:void(0)">
							<input type="checkbox" class="selectCheck" value="banlance-year">显示本年累计
						</a>
					</li>
					<li li_id="2" class="lastNode">
						<a href="javascript:void(0)">
							<input type="checkbox" class="selectCheck" value="ax-account">显示辅助核算
						</a>
					</li>
				</ul>
				<div data-dojo-attach-point="connectorNode" role="presentation" class="dijitTooltipConnector chanjetTooltipConnector" style="left: 52px;"></div>
			</div>
		</div>
        <div class="fnBtns">
            <ul>
                <li data-dojo-attach-point="downloadBtn" class="greenBtn">下载</li>
                <li data-dojo-attach-point="printBtn" class="greenBtn">打印</li>
            </ul>
        </div>
    </div>
    <div class="div-balanceReport-container">
	    <div data-dojo-attach-point="timeline">  
	    	<div data-dojo-attach-point="monthList" class="monthLine" id="app/vm/MonthLine_2" >
		    	<ul data-dojo-attach-point="monthListBox" class="monthList" id="monthListULBalanceReport" >
		    		<li class=""><span class="month-name-top hide">1月</span><a data-month="201701" href="javascript:;" class="monthItem prev_disabled_btn "></a></li>
		    		<li class=""><a data-month="201702" href="javascript:;" class="monthItem disable ">2月</a></li>
		    		<li class=""><a data-month="201703" href="javascript:;" class="monthItem disable ">3月</a></li>
		    		<li class=""><a data-month="201704" href="javascript:;" class="monthItem disable ">4月</a></li>
		    		<li class=""><a data-month="201705" href="javascript:;" class="monthItem disable ">5月</a></li>
		    		<li class=""><a data-month="201706" href="javascript:;" class="monthItem disable ">6月</a></li>
		    		<li class=""><a data-month="201707" href="javascript:;" class="monthItem disable ">7月</a></li>
		    		<li class=""><a data-month="201708" href="javascript:;" class="monthItem disable ">8月</a></li>
		    		<li class=""><a data-month="201709" href="javascript:;" class="monthItem disable ">9月</a></li>
		    		<li class=""><a data-month="201710" href="javascript:;" class="monthItem active ">10月</a></li>
		    		<li class=""><a data-month="201711" href="javascript:;" class="monthItem disable ">11月</a></li>
		    		<li class=""><a data-month="201712" href="javascript:;" class="monthItem disable ">12月</a></li>
		    		
		    	</ul>
			    <div class="monthDateBox" data-dojo-attach-point="monthDateBox">
			        <div style="display: block;" data-dojo-attach-point="dropStart" class="monthPick">
			            <span data-dojo-attach-point="dropStartTxt">2017-07</span><span class="select-down"></span>
			        </div>
			        <div data-dojo-attach-point="dropEnd" class="monthPick">
			            <span data-dojo-attach-point="dropEndTxt">2017-07</span><span class="select-down"></span>
			        </div>
			        <div data-dojo-attach-point="yearPanel" class="yearPanel">
			            <div class="year br">
			                <!--active select-->
			                <div class="yearHeader">
			                    <a class="btn left start" href="javascript:"></a>
			                    <span data-dojo-attach-point="yearSpan">2016年</span>
			                    <a class="btn right start" href="javascript:"></a>
			                </div>
			                <ul data-dojo-attach-point="yearBox" class="yearBody">
			                	<li class="monthItem" data-month="01"><span>01</span></li>
			                	<li class="monthItem" data-month="02"><span>02</span></li>
			                	<li class="monthItem" data-month="03"><span>03</span></li>
			                	<li class="monthItem" data-month="04"><span>04</span></li>
			                	<li class="monthItem" data-month="05"><span>05</span></li>
			                	<li class="monthItem" data-month="06"><span>06</span></li>
			                	<li class="monthItem" data-month="07"><span>07</span></li>
			                	<li class="monthItem" data-month="08"><span>08</span></li>
			                	<li class="monthItem" data-month="09"><span>09</span></li>
			                	<li class="monthItem" data-month="10"><span>10</span></li>
			                	<li class="monthItem" data-month="11"><span>11</span></li>
			                	<li class="monthItem" data-month="12"><span>12</span></li>
		                	</ul>
			            </div>
			            <!--  -->
			        </div>
			    </div>
			</div>
		</div>
		<div class="grid-panel balanceGrid">
				<table id="balanceReport-grid"></table>
		</div>
    </div>
</div>
    <script src="<%=basePath %>js/config.js"></script>
    <script src="<%=basePath %>bootstrap/js/jquery.js"></script>
    <script src="<%=basePath %>bootstrap/js/bootstrap.js"></script>
    <script src="<%=basePath%>js/numeral.js"></script>
    <script src="<%=basePath %>jquery-treegrid-master/js/jquery.treegrid.min.js"></script>
    <script src="<%=basePath %>jquery-treegrid-master/js/jquery.treegrid.bootstrap3.js"></script>
    <script src="<%=basePath %>jquery-treegrid-master/extension/jquery.treegrid.extension.js"></script>
   
    <script src="<%=basePath %>js/balanceReport.js"></script>

