<%@page import="com.ccycloud.service.BalanceReportService"%>
<%@page import="net.sf.json.JSONArray"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

		/* 	List result = new ArrayList<HashMap<String,String>>();
			Map map  = 	new HashMap<String,String>();
			map.put("id", "1");
			map.put("Name", "百度科技");
			map.put("Desc", "搜索巨头");
			map.put("ParentId", null);
            result.add(map); */
            String companyId = request.getParameter("companyId")==null?"0":request.getParameter("companyId");
            String account_id = request.getParameter("account_id")==null?"0":request.getParameter("account_id");
            String theMonth = request.getParameter("theMonth")==null?"190001":request.getParameter("theMonth");
            String strTtype = request.getParameter("strType")==null?"0":request.getParameter("strType");
            BalanceReportService  balanceService = new BalanceReportService();
            String json =  balanceService.getBalanceReport(companyId, account_id, theMonth,strTtype);
			
			
			
			response.getWriter().print(json);
%>