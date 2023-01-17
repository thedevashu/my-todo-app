package com.todoapp.todo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@Controller
//@RestController

//@CrossOrigin 
public class HomeController {
	
	@GetMapping("/home")
	@ResponseBody
	public String getName() {
		return " Hello World";
	}
	

}
