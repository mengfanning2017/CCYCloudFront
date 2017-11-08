<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@include file="../../config.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	URL url = new URL(dataServiceLocation+"/SYS_Login?acount=administrator&password=1");
	HttpURLConnection connection = (HttpURLConnection) url.openConnection();// 打开连接
	connection.connect();// 连接会话
	// 获取输入流
	BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream()));
	String line;
	StringBuilder sb = new StringBuilder();
	while ((line = br.readLine()) != null) {// 循环读取流
		sb.append(line);
	}
	br.close();// 关闭流
	connection.disconnect();// 断开连接
	JSONObject object = JSONObject.fromObject(sb.toString());
	if(Boolean.parseBoolean(object.get("result").toString())||"true".equals(object.get("result"))){
		session.setAttribute("Login", true);
		session.setAttribute("userid", JSONObject.fromObject(object.get("dataInfo")).get("UserStrId").toString());
		session.setAttribute("username", JSONObject.fromObject(object.get("dataInfo")).get("UserName").toString());
	}
	response.getWriter().print(sb.toString());
%>
