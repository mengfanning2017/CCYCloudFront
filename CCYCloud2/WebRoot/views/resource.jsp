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
            request.getParameter("");
            BalanceReportService  balanceService = new BalanceReportService();
            String json =  balanceService.getBalanceReport("", "", "","");

			response.getWriter().print(json);
%>

