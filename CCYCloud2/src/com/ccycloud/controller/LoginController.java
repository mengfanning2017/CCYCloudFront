package com.ccycloud.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.openid4java.util.HttpResponse;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.util.PropertyFilter;

@Controller
public class LoginController {
	
	@RequestMapping("/doLogin")
	@ResponseBody
	public Object doLogin(String account,String password,HttpServletRequest request,HttpServletResponse response,HttpSession session){
		ServletContext context = request.getSession().getServletContext();
		String dataServiceLocation = context.getAttribute("dataServiceLocation").toString();
		
		StringBuilder sb = new StringBuilder();
		JSONObject object = new JSONObject();
		try {
			URL url = new URL(dataServiceLocation+"/SYS_Login?acount="+account+"&password="+password);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();// 打开连接
			connection.connect();// 连接会话
			// 获取输入流
			BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			String line;
			
			while ((line = br.readLine()) != null) {// 循环读取流
				sb.append(line);
			}
			//sb.toString().replaceAll("null", "");
			br.close();// 关闭流
			connection.disconnect();// 断开连接
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		JsonConfig config = new JsonConfig();
		String tt = sb.toString().replaceAll("null", "\"\"");
		//config.set
		object = JSONObject.fromObject(tt);
		
		if(Boolean.parseBoolean(object.get("result").toString())||"true".equals(object.get("result"))){
			session.setAttribute("Login", true);
			session.setAttribute("userid", JSONObject.fromObject(object.get("dataInfo")).get("UserStrId").toString());
			session.setAttribute("username", JSONObject.fromObject(object.get("dataInfo")).get("UserName").toString());
		}
		
		return object;
	}
	
	@RequestMapping("checkLogin")
	@ResponseBody
	public Object checkLogin(HttpSession session){
		Map<String, Boolean> result = new HashMap<String, Boolean>();
		result.put("Login", false);
		result.put("company", false);
		result.put("account", false);
		String userid = session.getAttribute("userid")==null?"":session.getAttribute("userid").toString();
		String username = session.getAttribute("username")==null?"":session.getAttribute("username").toString();
		String company_id  = session.getAttribute("current_company_id") == null?"":session.getAttribute("current_company_id").toString();
		String account_id = session.getAttribute("current_account_id")==null?"":session.getAttribute("current_account_id").toString();
		if(!"".equals(userid)&&!"".equals(username)){
			result.put("Login", true);
			if(!"".equals(company_id)){
				result.put("company", true);
			}
			if(!"".equals(account_id)){
				result.put("account", true);
			}
		}
		return result;
	}
	
	@RequestMapping("Login")
	public ModelAndView login(HttpSession session,HttpServletResponse response){
		String userid = session.getAttribute("userid")==null?"":session.getAttribute("userid").toString();
		String username = session.getAttribute("username")==null?"":session.getAttribute("username").toString();
		String company_id  = session.getAttribute("current_company_id") == null?"":session.getAttribute("current_company_id").toString();
		String account_id = session.getAttribute("current_account_id")==null?"":session.getAttribute("current_account_id").toString();
		ModelAndView view = new ModelAndView("Login");
		
		if(!"".equals(userid)&&!"".equals(username)){
			if(!"".equals(account_id)){
//				view = new ModelAndView("redirect:index");
				try {
					response.sendRedirect("/FrontPro/index");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}else if(!"".equals(company_id)){
				try {
					response.sendRedirect("/FrontPro/userWorkSpace");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return view;
	}
}
