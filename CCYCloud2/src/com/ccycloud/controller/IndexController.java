package com.ccycloud.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

@Controller

public class IndexController {
	
	@RequestMapping("indexController")
	@ResponseBody
	public Object responseIndex(String account_id,String company_id,String account_date,HttpServletRequest request, HttpSession session){
		Map<String, Object> result = new HashMap<String,Object>();
		if(account_id!=null&&!"".equals(account_id)&&company_id!=null&&!"".equals(company_id)){
			session.setAttribute("current_account_id", account_id);
			session.setAttribute("current_company_id", company_id);
			session.setAttribute("current_account_date", account_date);
			result.put("result", true);
		}else{
			result.put("result", false);
		}
		return result;
	}
	
	@RequestMapping("index")
	public ModelAndView turnToWorkspace(){
		ModelAndView view = new ModelAndView("index");
		
		return view;
	}
}
