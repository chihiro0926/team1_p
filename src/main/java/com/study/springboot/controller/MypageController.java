package com.study.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.springboot.DTO.UserDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MypageController {
//	UserDTO userDTO = new UserDTO();
	
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
	
//	@RequestMapping("/userInfoEdit")
//	public String userInfoEdit(
//				Model model
//		) {
//		
//		model.addAttribute("userDTO", userDTO);
//		
//		return "userInfoEdit";
//	}
	
	@RequestMapping("/userInfoEdit")
	public String userInfoEdit(
			HttpSession session,
			
			Model model
	) {
		UserDTO userDTO = (UserDTO)session.getAttribute("userDTO");
		if( userDTO != null ) {
//			model.addAttribute("userDTO", userDTO);
			session.setAttribute("userDTO", userDTO);
			
			return "userInfoEdit";
		}
		
		return "login";
	}
	
	@RequestMapping("/signin")
	public String test(
			Model model,
			
			@ModelAttribute
			UserDTO userDTO,
			
			HttpSession session
	) {
		String id = userDTO.getId();
		String nickName = userDTO.getNickName();
		String name = userDTO.getName();
		String psw = userDTO.getPsw();
		String phoneNum = userDTO.getPhoneNum();
		String birth_date = userDTO.getBirth_date();
		String mail = userDTO.getMail();
		String add1 = userDTO.getAddress1();
		String add2 = userDTO.getAddress2();
		System.out.println("id : " + id);
		System.out.println("nickName :" + nickName);
		System.out.println("name : " + name);
		System.out.println("psw : " + psw);
		System.out.println("phoneNum :" + phoneNum);
		System.out.println("birth_date :" + birth_date);
		System.out.println("mail : " + mail);
		System.out.println("add1 : "+ add1);
		System.out.println("add2 : "+ add2);
		
		model.addAttribute("userDTO", userDTO);
		
		session.setAttribute("userDTO", userDTO);
		
//		this.userDTO = userDTO;
				
		
		
		return "userInfoEdit";
	}
	
	@RequestMapping("/signin1")
	public String signin1() {
		
		return "signin1";
	}
	
	@RequestMapping("/test")
	public String test() {
		
		return "test";
	}
	
	@RequestMapping("/login")
	public String login() {
		
		return "login";
	}
	
//	@RequestMapping("/login_check")
//	public String login_check(
//				HttpServletRequest request,
//				@RequestParam("PW") String pw,
//				@RequestParam("id") String id,
//			
//				Model model
//		) {
//			String nextPage = null;
//			
//			String _id = userDTO.getId();
//			String _pw = userDTO.getPsw();
//			
//			if( id != null && pw != null) {
//				if( id.equals(_id) && pw.equals(_pw) ) {
//					
//					model.addAttribute("userDTO", userDTO);
//					nextPage = "userInfoEdit";
//				} else {
//					model.addAttribute("msg", "회원이 아닙니다");
//					nextPage = "login";
//				}
//			} else {
//				model.addAttribute("msg", "아이디와 비밀번호를 입력해주세요");
//				nextPage = "login";
//			}
//			
//			return nextPage;
//	}
	
	@RequestMapping("/login_check")
	public String login_check(
				HttpServletRequest request,
				@RequestParam("PW") String pw,
				@RequestParam("id") String id,
			
				Model model
		) {
			HttpSession session = request.getSession();
			
			String nextPage = null;
			
			try {
				UserDTO userDTO = (UserDTO)session.getAttribute("userDTO");
				
				String _id = userDTO.getId();
				String _pw = userDTO.getPsw();
				
				if( id != null && pw != null ) {
					if(id.equals(_id) && pw.equals(_pw)) {
						model.addAttribute("userDTO", userDTO);
//					session.setAttribute("userDTO", userDTO);
						nextPage = "userInfoEdit";
					} else {
						model.addAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
//					session.setAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
						nextPage = "login";
					}
				} else {
					model.addAttribute("msg", "아이디와 비밀번호를 입력해주세요");
					nextPage = "login";
				}				
			}catch(Exception e) {
				// TODO: handle exception
				model.addAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
				nextPage = "login";
			}
			
			return nextPage;
	}
	
	@RequestMapping("/find")
	public String find() {
		
		return "find";
	}
	
	@RequestMapping("/find_id")
	public String find_id(
				HttpServletRequest request,
				
				@RequestParam("phone_name") String name,
				@RequestParam("email_name") String name2,
				@RequestParam("phone") String phone,
				@RequestParam("email") String email,
				
				Model model
		) {
		HttpSession session = request.getSession();
		
		String nextPage = "find";
		
		UserDTO userDTO = (UserDTO)session.getAttribute("userDTO");
		
		String _name = userDTO.getName();
		String _phone = userDTO.getPhoneNum();
		String _email = userDTO.getMail();
		
		
		if( (name.equals(_name) && phone.equals(_phone))
				|| (name2.equals(_name) && email.equals(_email)) ) {
			session.setAttribute("userDTO", userDTO);
			nextPage = "find_id";
		} else {
			model.addAttribute("msg2", "일치하는 회원정보가 없습니다");
			nextPage = "find";
		}
		
		return nextPage;
	}
	
	@RequestMapping("/save_userInfo")
	public String save_userInfo(
				Model model,
				
				UserDTO userDTO,
				
				HttpServletRequest request
		) {
			HttpSession session = request.getSession();
			UserDTO saveUserDTO = (UserDTO)session.getAttribute("userDTO");
			
			saveUserDTO.setName(userDTO.getName());
			saveUserDTO.setNickName(userDTO.getNickName());
			saveUserDTO.setPhoneNum(userDTO.getPhoneNum());
			saveUserDTO.setBirth_date(userDTO.getBirth_date());
			saveUserDTO.setMail(userDTO.getMail());
			saveUserDTO.setAddress1(userDTO.getAddress1());
			saveUserDTO.setAddress2(userDTO.getAddress2());
			
			session.setAttribute("userDTO", saveUserDTO);
			
			return "userInfoEdit";
	}
	
	@RequestMapping("/user_out")
	public String user_out(
				UserDTO userDTO,
				
				HttpServletRequest request,
				
				@RequestParam("chk_pw") String chk_pw,
				
				Model model
		) {
			HttpSession session = request.getSession();
			session.getAttribute("userDTO");
			
			String nextPage = null;
			
			String pw = userDTO.getPsw();
			
			if(chk_pw.equals(pw)) {
				session.invalidate();
				model.addAttribute("msg", "회원탈퇴가 정상적으로 처리되었습니다.");
				nextPage = "login";
			} else {
				model.addAttribute("msg3", "비밀번호가 일치하지 않습니다");
				model.addAttribute("userDTO", userDTO);
				nextPage = "userInfoEdit";
			}
			
			return nextPage;
	}
	
}
