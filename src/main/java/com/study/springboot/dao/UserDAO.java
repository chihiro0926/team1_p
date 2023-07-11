package com.study.springboot.dao;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.DTO.UserDTO;

@Mapper
public interface UserDAO {

	int joinUser(UserDTO userDTO);
	int idCheck(UserDTO userDTO);
	
	int loginCheck(UserDTO userDTO);
	
	UserDTO selectUserInfo(UserDTO userDTO);
	
	UserDTO selectUser(UserDTO userDTO);
	
	int updateUser(UserDTO userDTO);
	
	UserDTO findId(UserDTO userDTO);
	
	int updatePw(UserDTO userDTO);
	
	int deleteUser(int user_id);
}
