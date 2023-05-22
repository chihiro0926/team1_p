package com.study.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.springboot.UserDTO;

@Controller
public class MypageController {
	
	@RequestMapping("/myPage")
	public String myPage() {
		
		return "myPage";
	}
	
	@RequestMapping("/likeList")
	public String likeList() {
		
		return "likeList";
	}
	
	@RequestMapping("/RecentlyViewedList")
	public String RecentlyViewedList() {
		
		return "RecentlyViewedList";
	}
	
	@RequestMapping("/userInfoEdit")
	public String userInfoEdit() {
		
		return "userInfoEdit";
	}
	
	@RequestMapping("/signin")
	public String test(
			Model model,
			
			@ModelAttribute
			UserDTO userDTO
	) {
		String id = userDTO.getId();
		String nickName = userDTO.getNickName();
		System.out.println("id : " + id);
		System.out.println("nickName :" + nickName);
		
		model.addAttribute("userDTO", userDTO);
				
		
		
		return "myPage";
	}
	
	@RequestMapping("/signin1")
	public String signin1() {
		
		return "signin1";
	}
}
