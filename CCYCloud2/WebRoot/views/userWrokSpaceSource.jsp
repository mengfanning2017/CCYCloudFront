<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.net.URL"%>
<%@include file="../config.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String userid = session.getAttribute("userid")==null?"":session.getAttribute("userid").toString();
String doMethod = request.getParameter("doMethod");
String url = dataServiceLocation;
if("getCompany".equals(doMethod)){
	url = dataServiceLocation+"/SYS_CompanyOrUser?userId="+userid+"&strType=GetCompanyID";
}

URL dataUrl = new URL(url);

JSONObject jsonObject = new JSONObject();
JSONArray jsonArray = new JSONArray();

HttpURLConnection connection = (HttpURLConnection) dataUrl.openConnection();// 打开连接
connection.setRequestProperty("Accept-Charset", "UTF-8");
connection.connect();// 连接会话
// 获取输入流
BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(),"utf-8"));
String line;
StringBuilder sb = new StringBuilder();
while ((line = br.readLine()) != null) {// 循环读取流
	sb.append(line);
}
br.close();// 关闭流
connection.disconnect();// 断开连接
jsonObject = JSONObject.fromObject(sb.toString());

response.getWriter().print(sb.toString());

%>
