<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>系统登录</title>
    
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
    <link href="<%=basePath%>bootstrap/css/ie10-viewport-bug-workaround.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="<%=basePath%>bootstrap/css/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<%=basePath%>bootstrap/js/ie-emulation-modes-warning.js"></script>
	<script src="<%=basePath%>js/config.js"></script>
	<link href="<%=basePath%>bootstrap/css/Login.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>
   
  
    <div class="login-container">
		
			<ul style="position: absolute;top: 104px;list-style: none;left: 292px;">
				<li style="float: left;border-bottom: 4px solid #3d9fed;height: 51px;width: 114px;"><span style="font-size: 38;color:#3d9fed; ">登录</span></li>
				<li style="float: left;width: 180px;"><span style="font-size: 38; color: #fffFFF;">注册</span></li>
			</ul>
			<div class="divlogin-message" style="text-align: center;">
				<ul class="login-ul">
					<li><span class="login-logo"></span></li>
					<li><span class="logo-text"></span></li>
					<li><span class="userID-span">用户名：<input type="text" id="userID" value="administrator"></span></li>
					<li>
						<span class="password-span">密码：<input type="password" id="userID" value="administrator"></span>
						<span class="forgotPWD">忘记密码</span>
					</li>
					<li><button id="btnLogin" class="login-loginbtn" type="button">登陆</button></li>
				</ul>
				
     <!--  <form class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Login ID</label>
        <input type="text" id="userID" class="form-control" placeholder="Login ID" required="" autofocus="" value="administrator">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="" value="1">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button id="btnLogin" class="btn btn-lg btn-primary btn-block" type="button">Sign in</button>
      </form> -->
		</div>
    </div> <!-- /container -->

    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=basePath%>bootstrap/js/jquery.js"></script>
    <script src="<%=basePath%>bootstrap/js/bootstrap.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<%=basePath%>bootstrap/js/ie10-viewport-bug-workaround.js"></script>
  
	<script src="<%=basePath%>js/login.js"></script>        
  </body>
</html>
