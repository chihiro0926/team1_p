package com.study.springboot.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.study.springboot.DTO.UserDTO;
import com.study.springboot.dao.AdminDAO;

public class AdminServicdImpl implements AdminService{

	@Autowired
	AdminDAO adminDAO;

	@Override
	public Map userList(UserDTO userDTO) {
		List<UserDTO> list = adminDAO.userList(userDTO);
		
		Map map = new HashMap();
		map.put("list", list);
		
		return map;
	}
}
