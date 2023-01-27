package com.todoapp.todo.controller;

import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.configurationprocessor.json.JSONException;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.todoapp.todo.dto.UserInfoDTO;
import com.todoapp.todo.repository.UserRepo;

@CrossOrigin

@RestController


public class HomeController {
	
	
	@Autowired
	UserRepo repo;
	
	@GetMapping("/home")
	@ResponseBody
	public String getName() {
		return " Hello World";
	}
	
	@Transactional()
	@PostMapping("/insert")
	public void insertUser(@RequestBody UserInfoDTO dto) {
		System.out.println(dto);
		repo.insertUser(dto.getUname(), dto.getPassword(), dto.getDob(), dto.getEmail(), dto.getMobile(),dto.getFullName());
		
	}
	@Transactional()
	@PostMapping("/login")
	public Optional<UserInfoDTO> login(@RequestBody Map<String, String> obj) {
		Optional<UserInfoDTO> user = null;
		
			String uname = obj.get("uname");
			String password = obj.get("password");
			System.out.println(uname);
			user = repo.loginUser(uname,password);
		
		return user;
	
	}

}
