package com.study.springboot.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.springboot.DTO.UserDTO;
import com.study.springboot.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MypageController {
//	UserDTO userDTO = new UserDTO();
	
	@Autowired
	UserService userService;
	
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
	
	
//	1차 프로젝트
//	@RequestMapping("/userInfoEdit")
//	public String userInfoEdit(
//			HttpSession session,
//			
//			Model model
//	) {
//		UserDTO userDTO = (UserDTO)session.getAttribute("userDTO");
//		if( userDTO != null ) {
////			model.addAttribute("userDTO", userDTO);
//			session.setAttribute("userDTO", userDTO);
//			
//			return "userInfoEdit";
//		}
//		
//		return "login";
//	}

	@RequestMapping("/userInfoEdit")
	public String userInfoEdit(
			HttpServletRequest request,
			UserDTO userDTO,
			Model model
	) {
		HttpSession session = request.getSession();
		
		String login = (String) session.getAttribute("login");
		
		if( login == null || !(login == "ok") ) {
			return "login";
		}
		
		int user_id = (int) session.getAttribute("user_id");
		System.out.println("user_id : "+ user_id);
		
		userDTO.setUser_id(user_id);
		
		userDTO = userService.selectUser(userDTO);
		
		model.addAttribute("userDTO", userDTO);
		
		return "userInfoEdit";
	}
	
	
//	1차 프로젝트
//	@RequestMapping("/signin")
//	public String test(
//			Model model,
//			
//			@ModelAttribute
//			UserDTO userDTO,
//			
//			HttpSession session
//	) {
//		String id = userDTO.getId();
//		String nickName = userDTO.getNickName();
//		String name = userDTO.getName();
//		String psw = userDTO.getPsw();
//		String phoneNum = userDTO.getPhoneNum();
//		String birth_date = userDTO.getBirth_date();
//		String mail = userDTO.getMail();
//		String add1 = userDTO.getAddress1();
//		String add2 = userDTO.getAddress2();
//		System.out.println("id : " + id);
//		System.out.println("nickName :" + nickName);
//		System.out.println("name : " + name);
//		System.out.println("psw : " + psw);
//		System.out.println("phoneNum :" + phoneNum);
//		System.out.println("birth_date :" + birth_date);
//		System.out.println("mail : " + mail);
//		System.out.println("add1 : "+ add1);
//		System.out.println("add2 : "+ add2);
//		
//		model.addAttribute("userDTO", userDTO);
//		
//		session.setAttribute("userDTO", userDTO);
//		
////		this.userDTO = userDTO;
//				
//		
//		
//		return "userInfoEdit";
//	}
	
	// 회원가입
	@RequestMapping(value="/signin", method=RequestMethod.POST)
	public String signin(
			UserDTO userDTO,
			Model model
	) {
		int result = userService.joinUser(userDTO);
		System.out.println("회원가입 : "+ result);
		
				
		
//		if(result == Const.CODE_JOIN_DUP_ID) {
//			model.addAttribute("message", "이미 사용중인 아이디 입니다.");
//			return "signin1";
//		}
		return "login";	
		
	}
	
	
	// id 중복확인 ajax
	@RequestMapping("/idCheck")
	@ResponseBody
	public int idCheck(
			@RequestBody UserDTO userDTO
	) {
		System.out.println("idCheck_id : "+ userDTO.getId());
		
		int idChkResult = userService.idCheck(userDTO);
		System.out.println("idChkResult : "+ idChkResult);
		
		return idChkResult;
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
	
//	1차 프로젝트
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
	
//	1차 프로젝트
//	@RequestMapping("/login_check")
//	public String login_check(
//				HttpServletRequest request,
//				@RequestParam("PW") String pw,
//				@RequestParam("id") String id,
//			
//				Model model
//		) {
//			HttpSession session = request.getSession();
//			
//			String nextPage = null;
//			
//			try {
//				UserDTO userDTO = (UserDTO)session.getAttribute("userDTO");
//				
//				String _id = userDTO.getId();
//				String _pw = userDTO.getPsw();
//				
//				if( id != null && pw != null ) {
//					if(id.equals(_id) && pw.equals(_pw)) {
//						model.addAttribute("userDTO", userDTO);
////					session.setAttribute("userDTO", userDTO);
//						nextPage = "userInfoEdit";
//					} else {
//						model.addAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
////					session.setAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
//						nextPage = "login";
//					}
//				} else {
//					model.addAttribute("msg", "아이디와 비밀번호를 입력해주세요");
//					nextPage = "login";
//				}				
//			}catch(Exception e) {
//				// TODO: handle exception
//				model.addAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
//				nextPage = "login";
//			}
//			
//			return nextPage;
//	}
	
	@RequestMapping("login_check")
	public String login_check(
			UserDTO userDTO,
			HttpServletRequest request,
			Model model
	) {
		System.out.println("/login : "+ userDTO);
		
		Map map = userService.loginCheck(userDTO);
		
		int count = (int) map.get("count");
		UserDTO dto = (UserDTO) map.get("dto");
		
		System.out.println("count : "+ count);
		System.out.println("dto : "+ dto);
		
		if( count != 0 ) {
			// 계정 있음
			HttpSession session = request.getSession();
			session.setAttribute("login", "ok");
			if( dto != null ) {
				session.setAttribute("user_id", dto.getUser_id());
			}
		} else {
			// 계정 없음
			model.addAttribute("msg", "아이디 및 비밀번호를 확인해주세요");
			return "login";
		}
		
		return "redirect:/userInfoEdit";
	}
	
	@RequestMapping("/find")
	public String find() {
		
		return "find";
	}
	
	
	// 1차 프로젝트 아이디 찾기
//	@RequestMapping("/find_id")
//	public String find_id(
//				HttpServletRequest request,
//				
//				@RequestParam("phone_name") String name,
//				@RequestParam("email_name") String name2,
//				@RequestParam("phone") String phone,
//				@RequestParam("email") String email,
//				
//				Model model
//		) {
//		HttpSession session = request.getSession();
//		
//		String nextPage = "find";
//		
//		UserDTO userDTO = (UserDTO)session.getAttribute("userDTO");
//		
//		String _name = userDTO.getName();
//		String _phone = userDTO.getPhoneNum();
//		String _email = userDTO.getMail();
//		
//		
//		if( (name.equals(_name) && phone.equals(_phone))
//				|| (name2.equals(_name) && email.equals(_email)) ) {
//			session.setAttribute("userDTO", userDTO);
//			nextPage = "find_id";
//		} else {
//			model.addAttribute("msg2", "일치하는 회원정보가 없습니다");
//			nextPage = "find";
//		}
//		
//		return nextPage;
//	}
	
	
	// 아이디 찾기
	@RequestMapping("find_id")
	public String find_id(
			Model model,
			UserDTO userDTO,
			HttpServletRequest request
	) {
		String name = request.getParameter("phone_name");
		String phone = request.getParameter("phone");
		
		userDTO.setName(name);
		userDTO.setPhoneNum(phone);
		
		
		userDTO = userService.findId(userDTO);
		
		model.addAttribute("userDTO", userDTO);
		
		return "find_id";
	}
	
	// 1차 프로젝트 회원정보수정
//	@RequestMapping("/save_userInfo")
//	public String save_userInfo(
//				Model model,
//				
//				UserDTO userDTO,
//				
//				HttpServletRequest request
//		) {
//			HttpSession session = request.getSession();
//			UserDTO saveUserDTO = (UserDTO)session.getAttribute("userDTO");
//			
//			saveUserDTO.setName(userDTO.getName());
//			saveUserDTO.setNickName(userDTO.getNickName());
//			saveUserDTO.setPhoneNum(userDTO.getPhoneNum());
//			saveUserDTO.setBirth_date(userDTO.getBirth_date());
//			saveUserDTO.setMail(userDTO.getMail());
//			saveUserDTO.setAddress1(userDTO.getAddress1());
//			saveUserDTO.setAddress2(userDTO.getAddress2());
//			
//			session.setAttribute("userDTO", saveUserDTO);
//			
//			return "userInfoEdit";
//	}
	
	// 회원정보 수정 저장
	@RequestMapping("/save_userInfo")
	public String save_userInfo(
			HttpServletRequest request,
			UserDTO userDTO,
			Model model
	) {
		HttpSession session = request.getSession();
		
		int user_id = (int) session.getAttribute("user_id"); 
		System.out.println("수정 할 회원 id : "+ user_id);
				
		userDTO.setUser_id(user_id);
		
		int updateResult = userService.updateUser(userDTO);
		System.out.println("회원정보 수정 결과 : "+ updateResult);
		
		
		return "redirect:/userInfoEdit";
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
