<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
String account_id = session.getAttribute("current_account_id")==null?"5418499593745603652":session.getAttribute("current_account_id").toString()==""?"5418499593745603652":session.getAttribute("current_account_id").toString();
String account_date= session.getAttribute("current_account_date")==null?"190001":session.getAttribute("current_account_date").toString();
String CompanyId = session.getAttribute("current_company_id")==null?"5509512639679240644":session.getAttribute("current_company_id").toString()==""?"5509512639679240644":session.getAttribute("current_company_id").toString();
String user_id = session.getAttribute("userid")==null?"":session.getAttribute("userid").toString();
String user_name = session.getAttribute("username")==null?"":session.getAttribute("username").toString();
%>
<link href="<%=basePath%>bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
<link href="<%=basePath%>jquery-ui-1.12.1.custom/jquery-ui.css" rel="stylesheet" />
<link href="<%=basePath%>bootstrap/css/voucherDetail.css" rel="stylesheet"/>
	
<script type="text/javascript">
var account_id = "<%= account_id%>";
var account_date = "<%= account_date%>";
var CompanyId = "<%=CompanyId%>";
var user_id = "<%=user_id%>";
var user_name= "<%=user_name%>";

<!--

//-->
</script>
<script src="<%=basePath%>js/config.js"></script>
<div id="appContainer" class="w1280">
	<div class="view tableView voucherListView financial"
		id="nav_pingzhengs" widgetid="nav_pingzhengs">
		<div class="viewHeader">
			<!--<div data-dojo-attach-point="dialContainer" class="dialContainer leftContent"></div>-->
			<div class="viewTitle">
				<span data-dojo-attach-point="vouchersPeriod"></span>凭证列表
			</div>
			<div data-dojo-attach-point="searchContainer"
				class="search-container">
				<div data-dojo-attach-point="selectType"
					class="select-search-type fl">
					<span data-dojo-attach-point="selectTypeName" id="selectTypeBtn">模糊搜索</span> <span
						data-dojo-attach-point="selectTypeIcon"
						class="select-icon down-icon-w"> <!-- up-icon-w -->
					</span>
				</div>
				<div data-dojo-attach-point="tSearchInputWrap"
					class="search-input-wrap fl">
					<!--<div class="search-input" data-dojo-attach-point="tSubjectWrap">-->
					<!--<input data-dojo-attach-point="tSubject">-->
					<!--</div>-->
					<!--<div class="search-input" data-dojo-attach-point="tAssistantWrap">-->
					<!--<div class="select-assistant fl" data-dojo-attach-point="tSelectAssistant">-->
					<!--<span class="select-name">类型</span>-->
					<!--<span class="select-icon arrow-down">&lt;!&ndash; arrow-up &ndash;&gt;</span>-->
					<!--</div>-->

					<!--<input data-dojo-attach-point="tAssistant">-->
					<!--</div>-->
					<!--<div class="search-input" data-dojo-attach-point="tSummaryWrap">-->
					<!--<input data-dojo-attach-point="tSummary">-->
					<!--</div>-->
					<div data-dojo-attach-point="tBlurryWrap" class="search-input"
						style="display: block;">
						<table role="presentation" id="widget_chanjet_form_Text_12"
							class="dijit dijitReset dijitInline dijitLeft chanjetWidget dijitTextBox dijitValidationTextBox chanjetTextBox"
							style="width: 198px;" widgetid="chanjet_form_Text_12">
							<tbody>
								<tr>
									<td class="containerTd"><div
											class="dijitReset dijitValidationContainer">
											<input type="text" role="presentation" readonly="readonly"
												tabindex="-1" value="Χ "
												class="dijitReset dijitInputField dijitValidationIcon dijitValidationInner">
										</div>
										<div class="dijitReset dijitInputField dijitInputContainer" id="dijitInputContainer">
											<input type="text"  data-dojo-attach-point="textbox,focusNode" class="dijitReset dijitInputInner" tabindex="0" id="search_input" maxlength="50" value="">
											<span id="dijitPlaceHolder" class="dijitPlaceHolder dijitInputField">可输入凭证号/摘要/科目/金额...</span>
										</div></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!--<div class="search-input" data-dojo-attach-point="tAmountWrap">-->
					<!--<input data-dojo-attach-point="tStartAmount">-->
					<!--至-->
					<!--<input data-dojo-attach-point="tEndAmount">-->
					<!--</div>-->
					<div data-dojo-attach-point="searchMoreWrap" class="search-input"
						style="display: none;">
						<table role="presentation" id="widget_chanjet_form_Text_9"
							class="dijit dijitReset dijitInline dijitLeft chanjetWidget dijitTextBox dijitValidationTextBox chanjetTextBox"
							style="width: 198px;" widgetid="chanjet_form_Text_9">
							<tbody>
								<tr>
									<td class="containerTd"><div
											class="dijitReset dijitValidationContainer">
											<input type="text" role="presentation" readonly="readonly"
												tabindex="-1" value="Χ "
												class="dijitReset dijitInputField dijitValidationIcon dijitValidationInner">
										</div>
										<div class="dijitReset dijitInputField dijitInputContainer">
											<input type="text" autocomplete="off"
												data-dojo-attach-point="textbox,focusNode"
												class="dijitReset dijitInputInner" tabindex="0"
												id="chanjet_form_Text_9" maxlength="20" readonly="" value=""
												aria-invalid="false"><span
												class="dijitPlaceHolder dijitInputField">点击显示更多搜索条件</span>
										</div></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div data-dojo-attach-point="searchAuditWrap"
						class="search-input search-audit-wrap" style="display: none;">
						<div data-dojo-attach-point="mSelectAuditStatus"
							class="select-audit-status fl">
							<span class="select-name">全部</span><span
								class="select-icon arrow-down"></span>
						</div>
						<table role="presentation" id="widget_chanjet_form_Text_8"
							class="dijit dijitReset dijitInline dijitLeft chanjetTextBox dijitTextBox dijitValidationTextBox chanjetWidget"
							style="width: 120px;" widgetid="chanjet_form_Text_8">
							<tbody>
								<tr>
									<td class="containerTd"><div
											class="dijitReset dijitValidationContainer">
											<input type="text" role="presentation" readonly="readonly"
												tabindex="-1" value="Χ "
												class="dijitReset dijitInputField dijitValidationIcon dijitValidationInner">
										</div>
										<div class="dijitReset dijitInputField dijitInputContainer">
											<input type="text" autocomplete="off"
												data-dojo-attach-point="textbox,focusNode"
												class="dijitReset dijitInputInner" tabindex="0"
												id="chanjet_form_Text_8" maxlength="20" value=""><span
												class="dijitPlaceHolder dijitInputField">请输入编码或者名称</span>
										</div></td>
								</tr>
							</tbody>
						</table>
					</div>
					<span data-dojo-attach-point="searchBtn" class="search-btn" id="search-btn"></span>
				</div>
				<div data-dojo-attach-point="searchMorePanel"
					class="search-more-panel" style="display: none;">
					<table class="search-more-table">
						<tbody>
							<tr>
								<td class="title">科目</td>
								<td>
									<table role="presentation" id="widget_chanjet_form_Text_10"
										class="dijit dijitReset dijitInline dijitLeft chanjetWidget dijitTextBox dijitValidationTextBox chanjetTextBox"
										style="width: 248px; margin-right: 5px;"
										widgetid="chanjet_form_Text_10">
										<tbody>
											<tr>
												<td class="containerTd"><div
														class="dijitReset dijitValidationContainer">
														<input type="text" role="presentation" readonly="readonly"
															tabindex="-1" value="Χ "
															class="dijitReset dijitInputField dijitValidationIcon dijitValidationInner">
													</div>
													<div class="dijitReset dijitInputField dijitInputContainer">
														<input type="text" autocomplete="off"
															data-dojo-attach-point="textbox,focusNode"
															class="dijitReset dijitInputInner" tabindex="0"
															id="chanjet_form_Text_10" maxlength="20" value=""
															aria-invalid="false"><span
															class="dijitPlaceHolder dijitInputField">请输入科目编码或者名称</span>
													</div></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr data-dojo-attach-point="assistantTrDom">
								<td class="title">辅助核算</td>
								<td>
									<div class="search-more-input-wrap">
										<div data-dojo-attach-point="mSelectAssistant"
											class="select-assistant fl">
											<span class="select-name">类型</span> <span
												class="select-icon arrow-down"> <!-- arrow-up -->
											</span>
										</div>
										<table role="presentation" id="widget_chanjet_form_Text_11"
											class="dijit dijitReset dijitInline dijitLeft chanjetWidget dijitTextBox dijitValidationTextBox chanjetTextBox"
											style="width: 180px;" widgetid="chanjet_form_Text_11">
											<tbody>
												<tr>
													<td class="containerTd"><div
															class="dijitReset dijitValidationContainer">
															<input type="text" role="presentation"
																readonly="readonly" tabindex="-1" value="Χ "
																class="dijitReset dijitInputField dijitValidationIcon dijitValidationInner">
														</div>
														<div
															class="dijitReset dijitInputField dijitInputContainer">
															<input type="text" autocomplete="off"
																data-dojo-attach-point="textbox,focusNode"
																class="dijitReset dijitInputInner" tabindex="0"
																id="chanjet_form_Text_11" maxlength="20" value=""
																aria-invalid="false"><span
																class="dijitPlaceHolder dijitInputField">请输入编码或者名称</span>
														</div></td>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td class="title">摘要</td>
								<td>
									<table role="presentation" id="widget_chanjet_form_Text_13"
										class="dijit dijitReset dijitInline dijitLeft chanjetWidget dijitTextBox dijitValidationTextBox chanjetTextBox"
										style="width: 248px;" widgetid="chanjet_form_Text_13">
										<tbody>
											<tr>
												<td class="containerTd"><div
														class="dijitReset dijitValidationContainer">
														<input type="text" role="presentation" readonly="readonly"
															tabindex="-1" value="Χ "
															class="dijitReset dijitInputField dijitValidationIcon dijitValidationInner">
													</div>
													<div class="dijitReset dijitInputField dijitInputContainer">
														<input type="text" autocomplete="off"
															data-dojo-attach-point="textbox,focusNode"
															class="dijitReset dijitInputInner" tabindex="0"
															id="chanjet_form_Text_13" maxlength="50" value=""
															aria-invalid="false"><span
															class="dijitPlaceHolder dijitInputField">请输入摘要</span>
													</div></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr data-dojo-attach-point="mSelectSourceTr">
								<td class="title">来源</td>
								<td>
									<div class="search-more-input-wrap">
										<div
											style="width: 228px; text-align: left; text-indent: 6px; color: rgb(0, 0, 0);"
											data-dojo-attach-point="mSelectSource"
											class="select-assistant fl">
											<span class="select-name">全部</span> <span
												class="select-icon arrow-down"> <!-- arrow-up -->
											</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="title">金额</td>
								<td>
									<div role="presentation" id="widget_chanjet_form_Number_2"
										class="dijit dijitReset dijitInline dijitLeft chanjetWidget dijitTextBox dijitNumberTextBox dijitValidationTextBox chanjetTextBox"
										style="width: 104px; padding-left: 6px;"
										widgetid="chanjet_form_Number_2">
										<div class="dijitReset dijitValidationContainer">
											<input type="text" role="presentation" readonly="readonly"
												tabindex="-1" value="Χ "
												class="dijitReset dijitInputField dijitValidationIcon dijitValidationInner">
										</div>
										<div class="dijitReset dijitInputField dijitInputContainer">
											<input type="text" autocomplete="off"
												data-dojo-attach-point="textbox,focusNode"
												class="dijitReset dijitInputInner" tabindex="0"
												id="chanjet_form_Number_2" min="-999999999.99"
												max="999999999.99" maxlength="13" value=""
												aria-invalid="false"><span
												class="dijitPlaceHolder dijitInputField">￥0.00</span><input
												type="hidden" value="">
										</div>
									</div> 至
									<div role="presentation" id="widget_chanjet_form_Number_3"
										class="dijit dijitReset dijitInline dijitLeft chanjetWidget dijitTextBox dijitNumberTextBox dijitValidationTextBox chanjetTextBox"
										style="width: 104px; padding-left: 6px;"
										widgetid="chanjet_form_Number_3">
										<div class="dijitReset dijitValidationContainer">
											<input type="text" role="presentation" readonly="readonly"
												tabindex="-1" value="Χ "
												class="dijitReset dijitInputField dijitValidationIcon dijitValidationInner">
										</div>
										<div class="dijitReset dijitInputField dijitInputContainer">
											<input type="text" autocomplete="off"
												data-dojo-attach-point="textbox,focusNode"
												class="dijitReset dijitInputInner" tabindex="0"
												id="chanjet_form_Number_3" min="-999999999.99"
												max="999999999.99" maxlength="13" value=""
												aria-invalid="false"><span
												class="dijitPlaceHolder dijitInputField">￥0.00</span><input
												type="hidden" value="">
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="title">期间</td>
								<td>
									<div data-dojo-attach-point="periodDateMonth">
										<div class="clearfix monthDate voucher-search" data-dojo-attach-point="monthDateBox" id="app/vm/DateMonth_0" widgetid="app/vm/DateMonth_0">
											<div style="display: block;" data-dojo-attach-point="dropStart" class="monthPick">
												<input id="monthPic" type="text" readonly="readonly" value="2017-06"/>
											</div>
											<div class="month-split">至</div>
											<div data-dojo-attach-point="dropEnd" class="monthPick">
												<input id="monthPic" type="text" readonly="readonly" value="2017-06"/>
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
													<div data-dojo-attach-point="allTime" class="all-time"
														style="display: none;">全部时间</div>
												</div>
											</div>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="title">凭证号</td>
								<td>
									<div role="presentation" id="widget_chanjet_form_Number_4"
										class="dijit dijitReset dijitInline dijitLeft chanjetWidget dijitTextBox dijitNumberTextBox dijitValidationTextBox chanjetTextBox"
										style="width: 104px; padding-left: 6px;"
										widgetid="chanjet_form_Number_4">
										<div class="dijitReset dijitValidationContainer">
											<input type="text" role="presentation" readonly="readonly"
												tabindex="-1" value="Χ "
												class="dijitReset dijitInputField dijitValidationIcon dijitValidationInner">
										</div>
										<div class="dijitReset dijitInputField dijitInputContainer">
											<input type="text" autocomplete="off"
												data-dojo-attach-point="textbox,focusNode"
												class="dijitReset dijitInputInner" tabindex="0"
												id="chanjet_form_Number_4" min="1" max="9999" maxlength="4"
												value="" aria-invalid="false"><span
												class="dijitPlaceHolder dijitInputField">0001</span><input
												type="hidden" value="">
										</div>
									</div> 至
									<div role="presentation" id="widget_chanjet_form_Number_5"
										class="dijit dijitReset dijitInline dijitLeft chanjetWidget dijitTextBox dijitNumberTextBox dijitValidationTextBox chanjetTextBox"
										style="width: 104px; padding-left: 6px;"
										widgetid="chanjet_form_Number_5">
										<div class="dijitReset dijitValidationContainer">
											<input type="text" role="presentation" readonly="readonly"
												tabindex="-1" value="Χ "
												class="dijitReset dijitInputField dijitValidationIcon dijitValidationInner">
										</div>
										<div class="dijitReset dijitInputField dijitInputContainer">
											<input type="text" autocomplete="off"
												data-dojo-attach-point="textbox,focusNode"
												class="dijitReset dijitInputInner" tabindex="0"
												id="chanjet_form_Number_5" min="1" max="9999" maxlength="4"
												value="" aria-invalid="false"><span
												class="dijitPlaceHolder dijitInputField">0002</span><input
												type="hidden" value="">
										</div>
									</div>
								</td>
							</tr>
							<tr data-dojo-attach-point="mAuditStatusTr"
								class="tr-audit-status hide">
								<td class="title">审核状态</td>
								<td><label class="select"><input type="radio"
										checked="" value="" name="auditStatus"><span>全部</span></label>
									<label><input type="radio" value="0" name="auditStatus"><span>未审核</span></label>
									<label><input type="radio" value="1" name="auditStatus"><span>已审核</span></label>
								</td>
							</tr>
							<tr>
								<td class="title"></td>
								<td data-dojo-attach-point="hasRemarkTrDom"
									style="display: none;"><input type="checkbox"
									data-dojo-attach-point="hasRemark" value="Y" name="hasRemark">
									含批注</td>
							</tr>
						</tbody>
					</table>
					<div style="text-align: center;margin: 1em 0 2em 0;">
						<button data-dojo-attach-point="resetMoreBtn"
							style="float: none;display: inline-block;position: relative;margin-right: 20px;"
							class="greenWhiteBtn">清空</button>
						<button data-dojo-attach-point="searchMoreBtn"
							style="float: none;display: inline-block;position: relative;"
							class="greenBtn">搜索</button>
					</div>
				</div>
			</div>
			<div class="fnBtns rightContent">
				<ul>
					<li data-dojo-attach-point="multiAmountBtn" style="display: none;"
						class="greenBtn multi">
						<div data-dojo-attach-point="amountBtnText" class="multi-text">整理断号</div>
						<div class="multi-split">|</div>
						<div data-dojo-attach-point="amountBtnSelect" class="multi-drop-down">&nbsp;</div>
						<div style="display: none;z-index: 10001; top: 29px;right: 0;" class="dijitPopup chanjetWidgetPopup" data-dojo-attach-point="amountBtnList">
							<div style="width: 130px;" class="chanjetCommandMenu chanjetformPopover dijitTooltipBelow">
								<div class="dijitTooltipContainer chanjetTooltipContainer">
									<ul>
										<li class="lastNode"><a href="javascript:;" data-dojo-value="UnitBtn">整理断号</a></li>
										<li class="lastNode"><a href="javascript:;" data-dojo-value="CurrencyBtn">按日期编号</a></li>
									</ul>
								</div>
								<div style="left: 98px;" class="dijitTooltipConnector chanjetTooltipConnector"></div>
							</div>
						</div>
					</li>
					<li style="display: none;" data-dojo-attach-point="brokenTip" class="brokenNodes">
						<span data-dojo-attach-point="brokenBtn" class="greenWhiteBtn brokenBtn">整理断号</span>
					</li>
					<li data-dojo-attach-point="auditBtn" class="greenBtn disable" style="display: none;">审核</li>
					<li style="padding: 0;" data-dojo-attach-point="printAllBtn" class="greenBtn">打印</li>
					<li data-dojo-attach-point="addVoucherBtn" class="greenBtn carriedBtn">新增凭证</li>
				</ul>
			</div>
		</div>
		<div class="mainContainer" data-dojo-attach-point="mainContainer">
			<div data-dojo-attach-point="timeline">
				<div data-dojo-attach-point="monthList" class="monthLine single"
					id="app/vm/MonthLine_0" widgetid="app/vm/MonthLine_0">
					<ul data-dojo-attach-point="monthListBox" class="monthList" id="monthListULVoucherDetail">
						
						
						<li class=""><span class="month-name-top ">1月</span><a
							data-month="201701" href="javascript:;" class="monthItem disable"><span
								class="year">2017</span></a></li>
						<li class=""><span class="month-name-top ">2月</span><a
							data-month="201702" href="javascript:;" class="monthItem disable"></a></li>
						<li class=""><span class="month-name-top ">3月</span><a
							data-month="201703" href="javascript:;" class="monthItem disable"></a></li>
						<li class=""><span class="month-name-top ">4月</span><a
							data-month="201704" href="javascript:;" class="monthItem disable"></a></li>
						<li class=""><span class="month-name-top ">5月</span><a
							data-month="201705" href="javascript:;" class="monthItem disable"></a></li>
						<li class=""><span class="month-name-top ">6月</span><a
							data-month="201706" href="javascript:;" class="monthItem disable"></a></li>
						<li class=""><span class="month-name-top">7月</span><a data-month="201707" href="javascript:;" class="monthItem disable "></a></li>
						<li class=""><span class="month-name-top ">8月</span><a
							data-month="201708" href="javascript:;" class="monthItem disable"></a></li>
						<li class=""><span class="month-name-top ">9月</span><a
							data-month="201709" href="javascript:;" class="monthItem disable"></a></li>
						<li class=""><span class="month-name-top ">10月</span><a
							data-month="201710" href="javascript:;" class="monthItem active"></a></li>
						<li class=""><span class="month-name-top ">11月</span><a
							data-month="201711" href="javascript:;" class="monthItem disable"></a></li>
						<li class=""><span class="month-name-top ">12月</span><a
							data-month="201712" href="javascript:;" class="monthItem disable"></a></li>
						<li class="month_list_last"><a data-month="201801" href="javascript:;" class="monthItem"></a></li>	
					</ul>
					<div class="monthDateBox" data-dojo-attach-point="monthDateBox">
						<div style="display: none;" data-dojo-attach-point="dropStart"
							class="monthPick">
							<span data-dojo-attach-point="dropStartTxt">2014-05</span><span
								class="select-down"></span>
						</div>
						<div data-dojo-attach-point="dropEnd" class="monthPick">
							<span data-dojo-attach-point="dropEndTxt">2017-06</span><span
								class="select-down"></span>
						</div>

						<div data-dojo-attach-point="yearPanel" class="yearPanel">
							<div class="year br">
								<!--active select-->
								<div class="yearHeader">
									<a class="btn left start" href="javascript:"></a> <span
										data-dojo-attach-point="yearSpan">2016年</span> <a
										class="btn right start" href="javascript:"></a>
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
						</div>
					</div>

				</div>
			</div>
			<div class="voucherGrid" id="app/util/_WidgetBase_7"
				style="height: 500px; padding: 0px 0px 10px;"
				widgetid="app/util/_WidgetBase_7">
				<div class="selectHead">
					<ul data-dojo-attach-point="selectAll" class="selectAll">
						<li><input type="checkbox"
							data-dojo-attach-event="onclick:onChecked"
							data-dojo-attach-point="radio"> <label>全选</label></li>
					</ul>
					<table class="gridHeader">
						<tbody>
							<tr>
								<td data-dojo-attach-point="summaryLabel" class="summary"
									style="width: 25%;">
									<li>摘要</li>
								</td>
								<td data-dojo-attach-point="subjectLabel" class="subject"
									style="width: 35%;">
									<li>科目</li>
								</td>
								<td data-dojo-attach-point="jfmoneyLabel" class="jfmoney"
									style="width: 20%;">
									<li>借方金额</li>
								</td>
								<td data-dojo-attach-point="dfmoneyLabel" class="dfmoney"
									style="width: 20%;">
									<li>贷方金额</li>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<p data-dojo-attach-point="tipMessage" class="tipMessage"
					style="display: none;"></p>
				<p data-dojo-attach-point="emptyJiantou" class="empty_jiantou"
					style="display: none;"></p>
				<div data-dojo-attach-point="vGridScroller" class="vGridScroller"
					style="display: block;">
					<div class="vGridContainer" data-dojo-attach-point="voucherGrid" id="voucherGridContainer">
						<!-- 凭证列表 -->
						<div data-dojo-attach-point="voucherCard" class="voucherCard clearfix" id="app/util/_WidgetBase_8" widgetid="app/util/_WidgetBase_8">
							<div data-dojo-attach-point="radioContainer" class="fl select">
								<input type="checkbox" data-dojo-attach-event="onclick:onChecked" data-dojo-attach-point="radio">
							</div>
							<div class="content">
								<div class="cardHeader">
									<li class="dateLabel">日期：<span data-dojo-attach-point="createdDate">2017-06-01</span></li>
									<li class="voucherNoLabel">凭证字号：<span data-dojo-attach-point="voucherNo">记-001</span></li>
									<li class="accessoryNoLabel">附单据&nbsp;<span data-dojo-attach-point="accessoryNo">1</span>&nbsp;张</li>
									<li data-dojo-attach-point="auditStatusTag" class="audit-status-tag" style="display: none;"><i></i></li>
									<div class="rowBtns" data-dojo-attach-point="rowBtns" style="display: none;">
										<span data-dojo-attach-point="annotateBtn" class="annotateBtn" style="display: none;">批注</span> 
										<span data-dojo-attach-point="printBtn" class="printBtn">打印</span>
										<span data-dojo-attach-point="insertBtn" class="insertBtn">插入</span>
										<span data-dojo-attach-point="delBtn" class="delBtn">删除</span>
										<span data-dojo-attach-point="auditBtn" style="display: none;" class="auditVoucherBtn">审核</span> 
										<span data-dojo-attach-point="editBtn" class="editVoucherBtn">修改</span>
									</div>
									<div class="annotateImg" data-dojo-attach-point="annotateImgBtn" style="display: none;"></div>
								</div>
								<table data-dojo-attach-point="voucherContainer">
									<tr>
										<td class="field_summary"><li class="textPadding">发票号：12232431</li></td>
										<td class="field_subjectLongtext"><li class="textPadding">112202.0001&nbsp;&nbsp;应收账款_普通客户.北京蓝灯信息技术科技有限公司</li></td>
										<td class="field_jfmoney"><span class="textPadding field-jfBalance">193,050.00</span></td>
										<td class="field_dfmoney"><span class="textPadding field-dfBalance"></span></td>
									</tr>
									<tr>
										<td class="field_summary"><li class="textPadding">发票号：12232431</li></td>
										<td class="field_subjectLongtext"><li class="textPadding">22210107 应交税费_应交增值税_销项税额</li></td>
										<td class="field_jfmoney"><span class="textPadding field-jfBalance"></span></td>
										<td class="field_dfmoney"><span class="textPadding field-dfBalance">28,050.00</span></td>
									</tr>
									<tr>
										<td class="field_summary"><li class="textPadding">发票号：12232431</li></td>
										<td class="field_subjectLongtext"><li class="textPadding">5001 主营业务收入</li></td>
										<td class="field_jfmoney"><span class="textPadding field-jfBalance"></span></td>
										<td class="field_dfmoney"><span class="textPadding field-dfBalance">165,000.00</span></td>
									</tr>
								</table>
								<div class="total"><table><tbody><tr>
												<td class="headline"><li class="textPadding"><span>总计</span></li></td>
												<td class="field_jfmoney"><li data-dojo-attach-point="total_jfmoney" class="textPadding"><b>193,050.00</b></li></td>
												<td class="field_dfmoney"><li data-dojo-attach-point="total_dfmoney" class="textPadding"><b>193,050.00</b></li></td>
								</tr></tbody></table></div>
							</div>
						</div>
						<!-- 凭证列表 -->
					</div>
					<div data-dojo-attach-point="pagerWrap">
						<div role="presentation" class="dojoPage"
							id="common_page_Pagination_0" widgetid="common_page_Pagination_0">
							<div data-dojo-attach-point="containerNode"
								class="pageDijitContainer">
								<div data-dojo-attach-point="pageListArea"
									class="page-list-area">
									每页
									<div data-dojo-attach-point="pageSizeInputWrap"
										class="input-wrap">
										<input type="text" readonly="" maxlength="5"
											data-dojo-attach-point="pageSizeInput"><span
											class="up-down-icon">&nbsp;</span>
									</div>
									条，共<label data-dojo-attach-point="totalLabel"></label>条
								</div>
								<div data-dojo-attach-point="totalPaginations"
									class="total_paginations" style="display: none;"></div>
								<ul data-dojo-attach-point="listNode" class="pageDijitList"
									role="presentation"></ul>
								<div class="pageDijitClear"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%-- <script src="<%=basePath%>bootstrap/js/jquery.js"></script>
 --%><script type="text/javascript" src="<%=basePath%>bootstrap/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="<%=basePath%>bootstrap/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript" src="<%=basePath%>jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/numeral.js">
<!--

//-->
</script>
<script src="<%=basePath%>js/voucherDetail.js"></script>
