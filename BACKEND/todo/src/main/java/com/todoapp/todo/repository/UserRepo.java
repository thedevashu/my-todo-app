package com.todoapp.todo.repository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.todoapp.todo.dto.UserInfoDTO;



@Repository
public interface UserRepo extends JpaRepository<UserInfoDTO, Integer> {
	@Procedure("insert_user")
	public void insertUser(String in_uname,String in_password,String in_dob,String in_email,String in_mobile,String in_full_name);
	
	@Procedure("login_user")
	public Optional<UserInfoDTO> loginUser(String in_uname,String in_password);
	
}
