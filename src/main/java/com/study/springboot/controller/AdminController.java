package com.study.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

<<<<<<< HEAD
import com.study.springboot.service.Admin2Service;
import com.study.springboot.service.Admin2ServiceImpl;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {

//	@Autowired
//	Admin2Service adminService;
	
	@RequestMapping("/adminMain")
	public String adminMain(
			HttpServletRequest request
	) {
		System.out.println("관리자 권한 여부 : ");
		Admin2Service adminService = new Admin2ServiceImpl();
		HttpSession session = request.getSession();
		
		int grade = (int) session.getAttribute("user_grade");
		System.out.println("관리자 권한 여부 : "+ grade);
		
=======
@Controller
public class AdminController {

	
	@RequestMapping("/adminMain")
	public String adminMain() {
>>>>>>> parent of 9067b42 (230714 중간 commit)
		
		return "/admin/adminMain";
	}
}
