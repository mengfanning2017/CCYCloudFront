<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String account_id = session.getAttribute("current_account_id")==null?"5418499593745603652":session.getAttribute("current_account_id").toString()==""?"5418499593745603652":session.getAttribute("current_account_id").toString();
String account_date = "2015-04-01";
String CompanyId = session.getAttribute("current_company_id")==null?"5509512639679240644":session.getAttribute("current_company_id").toString()==""?"5509512639679240644":session.getAttribute("current_company_id").toString();
String user_id = session.getAttribute("userid")==null?"":session.getAttribute("userid").toString();
String user_name = session.getAttribute("username")==null?"":session.getAttribute("username").toString();
%>
		<link href="<%=basePath%>bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
		<link href="<%=basePath%>jquery-ui-1.12.1.custom/jquery-ui.css" rel="stylesheet" />
		<link href="<%=basePath%>bootstrap/css/newVoucher.css" rel="stylesheet">
	<%-- 	<script type="text/javascript" src="<%=basePath%>js/config.js"></script> --%>
		<script type="text/javascript">
		var account_id = "<%= account_id%>";
		var account_date = "<%= account_date%>";
		var CompanyId = "<%=CompanyId%>";
		var user_id = "<%=user_id%>";
		var user_name= "<%=user_name%>";

		<!--
		
		//-->
		</script>

		<div class="row " style="background-color: #F2F2F2;">
			<div class="col-sm-12" style="text-align: center;">
				<h1 style="font-size: 16px;">记账凭证</h1>
			</div>
		</div>
		<div class="row newVoucher-content" id="newVoucher-content" style="background-color: #FFFFFF; padding-left:20px;padding-right: 20px; margin: auto;">
			<div class="col-md-12" >
				<div class="row newVoucer-pageup-down">
					<div class="col-md-8" style="margin-top: 15px;">温馨提示：tab键可以快速选定单元格。</div>
					<div class="col-md-4 voucher-page-BTN" ><button class="btn btn-default">&lsaquo;</button><button class="btn btn-default">&rsaquo;</button><button class="btn btn-default">更多</button></div>
				</div>
				<div class="row">
					<div class="col-md-2" style="width: 15%;">
						记字第<span id="voucherid" style="text-decoration: underline; font-weight: 600;">6</span>号
					</div>
					<div class="col-md-2" style="width: 30%;">
						凭证月份 <input type="text" value="" id="voucher-month" class="voucher-month" readonly="readonly" />
					</div>
					<div class="col-md-8" style="width: 55%; text-align: right;">
						附单据<input type="text" id="voucherSheetNumber" style="width: 56px;" value="0">张
					</div>
				</div>
				<div class="row voucher">
					<!-- header -->
					<div class="voucherHeader" data-dojo-attach-point="header">
				        <ul>
				            <li data-dojo-attach-point="voucherSummaryTitle" class="voucherSummary">摘要</li>
				            <li data-dojo-attach-point="voucherSubjectTitle" class="voucherSubject">会计科目</li>
				            <li style="display:none;" data-dojo-attach-point="voucherNumAndFCTitle" class="voucherNumAndFC">数量/外币</li>
				            <li class="voucherLend">
				                <ul class="voucherMoneyTitle">借方金额</ul>
				                <ul class="voucherMoney">
				                    <li class="firstCol">亿</li>
				                    <li>千</li>
				                    <li>百</li>
				                    <li class="lineBlue">十</li>
				                    <li>万</li>
				                    <li>千</li>
				                    <li class="lineBlue">百</li>
				                    <li>十</li>
				                    <li>元</li>
				                    <li class="lineRed">角</li>
				                    <li>分</li>
				                </ul>
				            </li>
				            <li class="voucherLoan">
				                <ul class="voucherMoneyTitle">贷方金额</ul>
				                <ul class="voucherMoney">
				                    <li class="firstCol">亿</li>
				                    <li>千</li>
				                    <li>百</li>
				                    <li class="lineBlue">十</li>
				                    <li>万</li>
				                    <li>千</li>
				                    <li class="lineBlue">百</li>
				                    <li>十</li>
				                    <li>元</li>
				                    <li class="lineRed">角</li>
				                    <li>分</li>
				                </ul>
				            </li>
				        </ul>
				    </div>
				     
				     <!-- body -->
				     <div class="voucherBody" data-dojo-attach-point="bodyNode" id="voucherBody">
				     	<!-- items -->
				     	<%
				     		int VoucherNumber = 0;
				     		int VoucherMoney = 0;
				     		for(int i=0;i<4;i++){
				     			%>
				     	<div class="voucherItem" id="chanjet_voucher_VoucherItem_<%=i %>" widgetid="chanjet_voucher_VoucherItem_<%=i %>">
						    <ul class="voucherItemMask" data-dojo-attach-point="maskNode">
						        <li class="maskAdd"></li>
						        <li class="maskBody"></li>
						        <li class="maskDel"></li>
						    </ul>
						    <div class="voucherItemNum voucherItemNumLend" data-dojo-attach-point="numNode">
						        <i class="voucherItemNumArrow" data-dojo-attach-point="numNodeArrow"></i>
						        <ul>
						            <li style="display: none;" data-dojo-attach-point="numInputLi">
						                <span>数量：</span>
						                <div class="right">
						                   
						                    <input type="text" id="chanjet_voucher_VoucherNumber_<%=VoucherNumber %>" min="-99999999.99999" max="99999999.99999" widgetid="chanjet_voucher_VoucherNumber_<%=VoucherNumber %>">
						                    <% 
						                    	VoucherNumber ++;
						                     %>
						                </div>
						            </li>
						            <li style="display: none;" data-dojo-attach-point="numErrLi">
						                <span>&nbsp;</span>
						                <div class="right">
						                    <span data-dojo-attach-point="numErrTip" class="errTip">numErrTip</span>
						                </div>
						            </li>
						            <li style="display: none;" data-dojo-attach-point="priceInputLi">
						                <span>单价：</span>
						                <div class="right">
						                    <input type="text" id="chanjet_voucher_VoucherNumber_<%=VoucherNumber %>" min="-99999999.9999" max="99999999.9999" widgetid="chanjet_voucher_VoucherNumber_<%=VoucherNumber %>">
						                	<% 
						                    	VoucherNumber ++;
						                     %>
						                </div>
						                <span data-dojo-attach-point="numCurrencySymbol" class="numCurrencySymbol"></span>
						            </li>
						            <li style="display: none;" data-dojo-attach-point="priceErrLi">
						                <span>&nbsp;</span>
						                <div class="right">
						                    <span data-dojo-attach-point="priceErrTip" class="errTip">priceErrTip</span>
						                </div>
						            </li>
						            <li data-dojo-attach-point="currSymbolInputLi">
						                <span data-dojo-attach-point="currSymbolInputText">外币：</span>
						                <div class="right">
						                    <input type="text" id="chanjet_voucher_VoucherNumber_<%=VoucherNumber %>" min="-99999999.99" max="99999999.99" widgetid="chanjet_voucher_VoucherNumber_<%=VoucherNumber %>">
						                	<% 
						                    	VoucherNumber ++;
						                     %>
						                </div>
						            </li>
						            <li data-dojo-attach-point="currSymbolErrLi">
						                <span>&nbsp;</span>
						                <div class="right">
						                    <span data-dojo-attach-point="" class="errTip">priceErrTip</span>
						                </div>
						            </li>
						            <li data-dojo-attach-point="currRateInputLi">
						                <span>汇率：</span>
						                <div class="right">
						                    <input type="text" id="chanjet_voucher_VoucherNumber_<%=VoucherNumber %>" min="-99999999.99999" max="99999999.99999" widgetid="chanjet_voucher_VoucherNumber_<%=VoucherNumber %>">
						                   	<% 
						                    	VoucherNumber ++;
						                     %>
						                    <span data-dojo-attach-point=""></span>
						                </div>
						            </li>
						            <li data-dojo-attach-point="currRateErrLi">
						                <span>&nbsp;</span>
						                <div class="right">
						                    <span data-dojo-attach-point="" class="errTip">priceErrTip</span>
						                </div>
						            </li>
						            <li>
						                <span>&nbsp;</span>
						                <div class="right">
						                    <div class="greenWhiteBtn" data-dojo-attach-point="numCancelBtn" id="numCancelBtn">取消</div>
						                    <div class="greenBtn" data-dojo-attach-point="numSubmitBtn" id="numSubmitBtn">确定</div>
						                </div>
						            </li>
						        </ul>
						    </div>
						
						    <ul class="voucherAdd">
						        <li class="voucherAddBtn voucherBtn addBtn" data-dojo-attach-point="addBtn" style="display: none;"></li>
						    </ul>
						    <ul class="voucherRow" data-dojo-attach-point="tableNode">
						        <li class="voucherSummary" data-dojo-attach-point="summaryNode">
						            <ul class="voucherText" data-dojo-attach-point="summaryTextNode" style="display: block;" data-AbstractId=""></ul>
						            <ul class="voucherInput" data-dojo-attach-point="summaryInputNode" style="display: none;">
						                <textarea data-dojo-attach-point="summaryTextarea" id="summaryTtextarea_<%=i%>" class="summaryTextarea"></textarea>
						            </ul>
						        </li>
						        <li class="voucherSubject" data-dojo-attach-point="subjectNode">
						            <ul class="voucherText" data-dojo-attach-point="subjectTextNode" id="voucherText_subject_<%=i%>" data-subject-name ="" data-subject-id="" data-subject-code=""></ul>
						            <ul class="voucherInput" data-dojo-attach-point="subjectInputNode" style="display: none;" id="voucherInput_subject_<%=i%>">
						                <div class="subjectTip" data-dojo-attach-point="subjectTip"></div>
						                <textarea data-dojo-attach-point="subjectTextarea"></textarea>
						            </ul>
						            <ul class="voucherSubjectInfo voucherSubjectMoney" id="voucherSubjectMoney_<%=i%>">
						                <li data-dojo-attach-point="subjectMoney"></li>
						            </ul>
						            <ul data-dojo-attach-point="numBtn" class="voucherSubjectInfo voucherNumPrice">
						            </ul>
						        </li>
						        <li style="display: none;" class="voucherNumAndFC" data-dojo-attach-point="numAndFCNode">
						           
						            <ul class="voucherText" data-dojo-attach-point="numAndFCTextNode">
						                <li class="showTextInArea" data-dojo-attach-point="subjectNumNode" style="display: none;"></li>
						                <li class="showTextInArea" data-dojo-attach-point="subjectPriceNode" style="display: none;"></li>
						                <li class="showTextInArea" data-dojo-attach-point="subjectCurrSymbolNode" style="display: none;"></li>
						                <li class="showTextInArea" data-dojo-attach-point="subjectCurrRateNode" style="display: none;"></li>
						            </ul>
						            <ul style="display: none" class="voucherInput numAndFCInput" data-dojo-attach-point="numAndFCInputNode">
						                <textarea readonly="true" data-dojo-attach-point="numAndFCNodeTextarea"></textarea>
						            </ul>
						        </li>
							    <li type="lend" id="chanjet_voucher_VoucherMoney_<%=VoucherMoney %>" class="voucherLend" widgetid="chanjet_voucher_VoucherMoney_<%=VoucherMoney %>">
								    <%
								    	VoucherMoney++;
								     %>
								    <ul class="voucherMoney" data-dojo-attach-point="moneyNode">
								        <li class="firstCol"></li>
								        <li></li>
								        <li></li>
								        <li class="lineBlue"></li>
								        <li></li>
								        <li></li>
								        <li class="lineBlue"></li>
								        <li></li>
								        <li></li>
								        <li class="lineRed" data-dojo-attach-point="dimes"></li>
								        <li data-dojo-attach-point="penny"></li>
								    </ul>
								    <ul class="voucherInput" data-dojo-attach-point="inputNode" style="display: none;">
								        <input type="text" data-dojo-attach-point="input" class="voucherMoneyLendinput" data-money-type="lend">
								    </ul>
								</li>
								<li type="loan" id="chanjet_voucher_VoucherMoney_<%=VoucherMoney %>" class="voucherLoan" widgetid="chanjet_voucher_VoucherMoney_<%=VoucherMoney %>">
									<%
								    	VoucherMoney++;
								     %>
								    <ul class="voucherMoney" data-dojo-attach-point="moneyNode">
								        <li class="firstCol"></li>
								        <li></li>
								        <li></li>
								        <li class="lineBlue"></li>
								        <li></li>
								        <li></li>
								        <li class="lineBlue"></li>
								        <li></li>
								        <li></li>
								        <li class="lineRed" data-dojo-attach-point="dimes"></li>
								        <li data-dojo-attach-point="penny"></li>
								    </ul>
								    <ul class="voucherInput" data-dojo-attach-point="inputNode" style="display: none;">
								        <input type="text" data-dojo-attach-point="input" class="voucherMoneyLoaninput" data-money-type="loan">
								    </ul>
								</li>
							</ul>
						    <ul class="voucherDel">
						        <li class="voucherDelBtn voucherBtn delBtn" data-dojo-attach-point="delBtn" style="display: none;"></li>
						    </ul>
						</div>
				     			<%
				     		}
				     	 %>
				    	
				    </div>
				    		<!-- subject list -->
					<div widgetid="chanjet_form_PopListBox_0"
						style="width: 364px;left:213px;"
						id="chanjet_form_PopListBox_0" class="popListBox">
						<ul style="display: none;" data-dojo-attach-point="noneNode"
							class="popListNone">没有匹配的数据
						</ul>
						<ul style="display: block;" data-dojo-attach-point="listNode" class="popListArea" id="popListAreaUl">
							
						</ul>
						<ul>
							<div class="addSubjectInVoucher">
								<span><i class="icon"></i>新增科目</span>
							</div>
						</ul>
					</div>
				    <!-- footer -->
				    <div class="voucherFooter" data-dojo-attach-point="footer" style="top: 295px;">
				        <ul>
				            <li class="voucherTotal">合计:<span data-dojo-attach-point="chineseTotalNode" class="voucheChineseTotal" id="voucheChineseTotal">零元整</span></li>
				            <li class="voucherLend" data-dojo-attach-point="lendNode" id="chanjet_voucher_VoucherMoney_18" widgetid="chanjet_voucher_VoucherMoney_18">
				            
							    <ul class="voucherMoney" data-dojo-attach-point="moneyNode" id="voucherSumLendUl">
							        <li class="firstCol"></li>
							        <li></li>
							        <li></li>
							        <li class="lineBlue"></li>
							        <li></li>
							        <li></li>
							        <li class="lineBlue"></li>
							        <li></li>
							        <li></li>
							        <li class="lineRed" data-dojo-attach-point="dimes"></li>
							        <li data-dojo-attach-point="penny"></li>
							    </ul>
							    <ul class="voucherInput" data-dojo-attach-point="inputNode">
							        <input type="text" data-dojo-attach-point="input" id="voucherSumLendTxt">
							    </ul>
							</li>
						   	<li class="voucherLoan" data-dojo-attach-point="loanNode" id="chanjet_voucher_VoucherMoney_19" widgetid="chanjet_voucher_VoucherMoney_19">
								<ul class="voucherMoney" data-dojo-attach-point="moneyNode" id="voucherSumLoanUl">
							        <li class="firstCol"></li>
							        <li></li>
							        <li></li>
							        <li class="lineBlue"></li>
							        <li></li>
							        <li></li>
							        <li class="lineBlue"></li>
							        <li></li>
							        <li></li>
							        <li class="lineRed" data-dojo-attach-point="dimes"></li>
							        <li data-dojo-attach-point="penny"></li>
							    </ul>
							    <ul class="voucherInput" data-dojo-attach-point="inputNode">
							        <input type="text" data-dojo-attach-point="input" id="voucherSumLoanTxt">
							    </ul>
							</li>
				        </ul>
				    </div>	
				</div>
				
				<div class="row">
					<div class="col-md-8"></div>
					<div class="col-md-4" style="text-align: right;"><button class="btn btn-default" id="btn-voucher-save" >保存</button><button class="btn btn-default" id="btn-save-and-addNew">保存并新增</button><button class="btn btn-default" id="btn-addNew" style="display: none;">新增</button></div>
				</div>
			</div>
		</div>
		
		

		<div class="dialog_addNewSubject" id="dialog_addNewSubject">
			<div class="dialog_addNewSubject_body">
				<ul>
					<li>
						<ul class="ac_subj_ul parent_subject_ul"><li class="newSubjectTitle"><span>上级科目</span></li><li><input type="text"  id="txt_parent_subject" ></li></ul>
					</li>
					<li>
						<ul class="ac_subj_ul subject_name_ul"><li class="newSubjectTitle"><span>科目名称</span></li><li><input type="text"  id="txt_subject_name" ><span class="icon icon-info-sign error-icon"  ></span></li></ul>
					</li>
					<li>
						<ul class="ac_subj_ul subject_code"><li class="newSubjectTitle"><span>科目编码</span></li><li><input type="text"  id="txt_subject_code" ><span class="icon icon-info-sign error-icon"  ></span></li></ul>
					</li>
					<li>
						<ul class="ac_subj_ul subject_type"><li class="newSubjectTitle"><span>科目类别</span></li><li><input type="text" value="资产"  id="txt_subject_type" disabled="disabled"></li></ul>
					</li>
					<li>
						<ul class="ac_subj_ul subject_unit"><li class="newSubjectTitle"><span>计量单位</span></li><li><input type="text"  id="txt_subject_unit" ></li></ul>
					</li>
					<li>
						<ul class="ac_subj_ul subject_currency"><li class="newSubjectTitle"><span>外币符号</span></li><li><input type="text"  id="subject_currency" ></li></ul>
					</li>
					<!-- 辅助核算 -->
					<li class="subject_auxiliary_balance">
						<span>辅助核算</span>
						<ul class="subject_ac_balance">
							<li class="subject_ac_li first_line"><input type="checkbox" id="ac_client" class="ac_chk">客户</li>
							<li class="subject_ac_li first_line"><input type="checkbox" id="ac_supplier" class="ac_chk">供应商</li>
							<li class="subject_ac_li first_line"><input type="checkbox" id="ac_employee" class="ac_chk">员工</li>
							<li class="subject_ac_li"><input type="checkbox" id="ac_depart" class="ac_chk">部门</li>
							<li class="subject_ac_li"><input type="checkbox" id="ac_project" class="ac_chk">项目</li>
							<li class="subject_ac_li"><input type="checkbox" id="ac_product" class="ac_chk">存货</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div id="displaynoneDiv" style="display: none;">
			
						    <ul data-dojo-attach-point="maskNode" class="voucherItemMask">
						        <li class="maskAdd"></li>
						        <li class="maskBody"></li>
						        <li class="maskDel"></li>
						    </ul>
						    <div data-dojo-attach-point="numNode" class="voucherItemNum voucherItemNumLend">
						        <i data-dojo-attach-point="numNodeArrow" class="voucherItemNumArrow"></i>
						        <ul>
						            <li data-dojo-attach-point="numInputLi" style="display: none;">
						                <span>数量：</span>
						                <div class="right">
						                   
						                    <input type="text"  max="99999999.99999" min="-99999999.99999" >
						                    
						                </div>
						            </li>
						            <li data-dojo-attach-point="numErrLi" style="display: none;">
						                <span>&nbsp;</span>
						                <div class="right">
						                    <span class="errTip" data-dojo-attach-point="numErrTip">numErrTip</span>
						                </div>
						            </li>
						            <li data-dojo-attach-point="priceInputLi" style="display: none;">
						                <span>单价：</span>
						                <div class="right">
						                    <input type="text"  max="99999999.9999" min="-99999999.9999" >
						                	
						                </div>
						                <span class="numCurrencySymbol" data-dojo-attach-point="numCurrencySymbol"></span>
						            </li>
						            <li data-dojo-attach-point="priceErrLi" style="display: none;">
						                <span>&nbsp;</span>
						                <div class="right">
						                    <span class="errTip" data-dojo-attach-point="priceErrTip">priceErrTip</span>
						                </div>
						            </li>
						            <li data-dojo-attach-point="currSymbolInputLi">
						                <span data-dojo-attach-point="currSymbolInputText">外币：</span>
						                <div class="right">
						                    <input type="text"  max="99999999.99" min="-99999999.99" >
						                	
						                </div>
						            </li>
						            <li data-dojo-attach-point="currSymbolErrLi">
						                <span>&nbsp;</span>
						                <div class="right">
						                    <span class="errTip" data-dojo-attach-point="">priceErrTip</span>
						                </div>
						            </li>
						            <li data-dojo-attach-point="currRateInputLi">
						                <span>汇率：</span>
						                <div class="right">
						                    <input type="text"  max="99999999.99999" min="-99999999.99999" >
						                   	
						                    <span data-dojo-attach-point=""></span>
						                </div>
						            </li>
						            <li data-dojo-attach-point="currRateErrLi">
						                <span>&nbsp;</span>
						                <div class="right">
						                    <span class="errTip" data-dojo-attach-point="">priceErrTip</span>
						                </div>
						            </li>
						            <li>
						                <span>&nbsp;</span>
						                <div class="right">
						                    <div id="numCancelBtn" data-dojo-attach-point="numCancelBtn" class="greenWhiteBtn">取消</div>
						                    <div id="numSubmitBtn" data-dojo-attach-point="numSubmitBtn" class="greenBtn">确定</div>
						                </div>
						            </li>
						        </ul>
						    </div>
						
						    <ul class="voucherAdd">
						        <li style="display: none;" data-dojo-attach-point="addBtn" class="voucherAddBtn voucherBtn addBtn"></li>
						    </ul>
						    <ul data-dojo-attach-point="tableNode" class="voucherRow">
						        <li data-dojo-attach-point="summaryNode" class="voucherSummary">
						            <ul style="display: block;" data-dojo-attach-point="summaryTextNode" class="voucherText"></ul>
						            <ul style="display: none;" data-dojo-attach-point="summaryInputNode" class="voucherInput">
						                <textarea class="summaryTextarea"  data-dojo-attach-point="summaryTextarea"></textarea>
						            </ul>
						        </li>
						        <li data-dojo-attach-point="subjectNode" class="voucherSubject">
						            <ul  data-dojo-attach-point="subjectTextNode" class="voucherText"  data-subject-name ="" data-subject-id="" data-subject-code=""></ul>
						            <ul  style="display: none;" data-dojo-attach-point="subjectInputNode" class="voucherInput">
						                <div data-dojo-attach-point="subjectTip" class="subjectTip"></div>
						                <textarea data-dojo-attach-point="subjectTextarea"></textarea>
						            </ul>
						            <ul  class="voucherSubjectInfo voucherSubjectMoney">
						                <li data-dojo-attach-point="subjectMoney"></li>
						            </ul>
						            <ul class="voucherSubjectInfo voucherNumPrice" data-dojo-attach-point="numBtn">
						            </ul>
						        </li>
						        <li data-dojo-attach-point="numAndFCNode" class="voucherNumAndFC" style="display: none;">
						           
						            <ul data-dojo-attach-point="numAndFCTextNode" class="voucherText">
						                <li style="display: none;" data-dojo-attach-point="subjectNumNode" class="showTextInArea"></li>
						                <li style="display: none;" data-dojo-attach-point="subjectPriceNode" class="showTextInArea"></li>
						                <li style="display: none;" data-dojo-attach-point="subjectCurrSymbolNode" class="showTextInArea"></li>
						                <li style="display: none;" data-dojo-attach-point="subjectCurrRateNode" class="showTextInArea"></li>
						            </ul>
						            <ul data-dojo-attach-point="numAndFCInputNode" class="voucherInput numAndFCInput" style="display: none">
						                <textarea data-dojo-attach-point="numAndFCNodeTextarea" readonly="true"></textarea>
						            </ul>
						        </li>
							    <li type="lend" class="voucherLend" >
								    
								    <ul data-dojo-attach-point="moneyNode" class="voucherMoney">
								        <li class="firstCol"></li>
								        <li></li>
								        <li></li>
								        <li class="lineBlue"></li>
								        <li></li>
								        <li></li>
								        <li class="lineBlue"></li>
								        <li></li>
								        <li></li>
								        <li data-dojo-attach-point="dimes" class="lineRed"></li>
								        <li data-dojo-attach-point="penny"></li>
								    </ul>
								    <ul style="display: none;" data-dojo-attach-point="inputNode" class="voucherInput">
								        <input type="text" data-money-type="lend" class="voucherMoneyLendinput" data-dojo-attach-point="input" >
								    </ul>
								</li>
								<li type="loan"  class="voucherLoan" id="chanjet_voucher_VoucherMoney">
									
								    <ul data-dojo-attach-point="moneyNode" class="voucherMoney">
								        <li class="firstCol"></li>
								        <li></li>
								        <li></li>
								        <li class="lineBlue"></li>
								        <li></li>
								        <li></li>
								        <li class="lineBlue"></li>
								        <li></li>
								        <li></li>
								        <li data-dojo-attach-point="dimes" class="lineRed"></li>
								        <li data-dojo-attach-point="penny"></li>
								    </ul>
								    <ul style="display: none;" data-dojo-attach-point="inputNode" class="voucherInput">
								        <input type="text" data-money-type="loan" class="voucherMoneyLoaninput" data-dojo-attach-point="input">
								    </ul>
								</li>
							</ul>
						    <ul class="voucherDel">
						        <li style="display: none;" data-dojo-attach-point="delBtn" class="voucherDelBtn voucherBtn delBtn"></li>
						    </ul>
			
		</div>
		<script type="text/javascript" src="<%=basePath%>bootstrap/js/bootstrap-datetimepicker.js"></script>
   	 	<script type="text/javascript" src="<%=basePath%>bootstrap/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
   	 	<script type="text/javascript" src="<%=basePath%>jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
   	 	<script src="<%=basePath%>js/newVoucher.js"></script>									
