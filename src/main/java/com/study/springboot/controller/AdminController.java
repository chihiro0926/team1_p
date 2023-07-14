package com.study.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;
	
	@RequestMapping("/adminMain")
	public String adminMain(
			HttpServletRequest request
	) {
		HttpSession session = request.getSession();
		
		int grade = (int) session.getAttribute("user_grade");
		System.out.println("관리자 권한 여부 : "+ grade);
		
		
		return "/admin/adminMain";
	}
}
