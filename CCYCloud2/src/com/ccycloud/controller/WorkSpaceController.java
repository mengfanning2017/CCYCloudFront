package com.ccycloud.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class WorkSpaceController {
	@RequestMapping("userWorkSpace")
	public ModelAndView redirectToWorkspace(HttpSession session){
		if(session.getAttribute("Login")!=null&&Boolean.parseBoolean(session.getAttribute("Login").toString())//登录状态为true
				&&session.getAttribute("userid")!=null&&!"".equals(session.getAttribute("userid").toString())
				&&session.getAttribute("username")!=null&&!"".equals(session.getAttribute("username").toString())
				){
			ModelAndView view = new ModelAndView("userWorkSpace");
			return view;
		}else{
			return null;
		}
	}
	
	/***
	 * 获取租户公司
	 * @param session
	 * @return
	 */
	@RequestMapping("companys")
	@ResponseBody
	public Object getUserCompanys(HttpSession session){
		String userid = session.getAttribute("userid")==null?"":session.getAttribute("userid").toString();
		ServletContext context = session.getServletContext();
		String dataServiceLocation = context.getAttribute("dataServiceLocation").toString();
		
		String	url = dataServiceLocation+"/SYS_CompanyOrUser?userId="+userid+"&strType=GetCompanyID";
	

		JSONObject jsonObject;
		StringBuilder sb = new StringBuilder();
		try {
			URL dataUrl = new URL(url);
			jsonObject = new JSONObject();
			HttpURLConnection connection = (HttpURLConnection) dataUrl.openConnection();// 打开连接
			connection.setRequestProperty("Accept-Charset", "UTF-8");
			connection.connect();// 连接会话
			// 获取输入流
			BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(),"utf-8"));
			String line;
			sb = new StringBuilder();
			while ((line = br.readLine()) != null) {// 循环读取流
				sb.append(line);
			}
			br.close();// 关闭流
			connection.disconnect();// 断开连接
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		jsonObject = JSONObject.fromObject(sb.toString().replaceAll("null", "\"\""));

		return jsonObject;
	}
	
	/***
	 * 获取所选公司下账套列表
	 * @param session
	 * @return
	 */
	@RequestMapping("useraccounts")
	@ResponseBody
	public Object getUserAccounts(HttpSession session,String select_companyid){
		String userid = session.getAttribute("userid")==null?"":session.getAttribute("userid").toString();
		ServletContext context = session.getServletContext();
		String dataServiceLocation = context.getAttribute("dataServiceLocation").toString();
		
		String	url = dataServiceLocation+"/SYS_Account?userId="+userid+"&companyId="+select_companyid;
		session.setAttribute("current_company_id", select_companyid);
		JSONObject jsonObject;
		StringBuilder sb = new StringBuilder();
		try {
			URL dataUrl = new URL(url);
			jsonObject = new JSONObject();
			HttpURLConnection connection = (HttpURLConnection) dataUrl.openConnection();// 打开连接
			connection.setRequestProperty("Accept-Charset", "UTF-8");
			connection.connect();// 连接会话
			// 获取输入流
			BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(),"utf-8"));
			String line;
			sb = new StringBuilder();
			while ((line = br.readLine()) != null) {// 循环读取流
				sb.append(line);
			}
			br.close();// 关闭流
			connection.disconnect();// 断开连接
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		jsonObject = JSONObject.fromObject(sb.toString().replaceAll("null", "\"\""));
		if(jsonObject.get("dataInfo")!=null){
			JSONArray array = JSONArray.fromObject(jsonObject.get("dataInfo").toString());
			Map<String, Object> accountMap = new HashMap<String, Object>();
			
			if(array!=null&&array.size()>0){
				for(int i=0;i<array.size();i++){
					JSONObject account =  JSONObject.fromObject(array.get(i));
					accountMap.put(account.get("AccountStrId").toString(), account);
				}
				session.setAttribute("accountMap", accountMap);
			}
		}
		return jsonObject;
	}
}
