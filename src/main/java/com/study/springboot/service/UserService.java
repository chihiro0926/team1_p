package com.study.springboot.service;

import java.util.Map;

import com.study.springboot.DTO.UserDTO;

public interface UserService {

	
	int joinUser(UserDTO userDTO);
	int idCheck(UserDTO userDTO);
	
	Map loginCheck(UserDTO userDTO);
	
	UserDTO selectUser(UserDTO userDTO);
	
	int updateUser(UserDTO userDTO);
	
	UserDTO findId(UserDTO userDTO);
}
