package com.ccycloud.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;

@Controller
public class VoucherController {

	
	@RequestMapping("newVoucher")
	public ModelAndView newVoucherShow(HttpSession session){
		ModelAndView voucherView = new ModelAndView("newVoucher");
		return voucherView;
	}
	@RequestMapping("voucherDetail")
	public ModelAndView voucherDetailShow(HttpSession sesson){
		ModelAndView voucherDetailView = new ModelAndView("voucherDetail");
		return voucherDetailView;
	}
	
	
	public Object getVoucher(HttpSession session,String voucherId){
		return null;
	}
	
}
