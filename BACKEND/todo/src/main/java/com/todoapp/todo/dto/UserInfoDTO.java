package com.todoapp.todo.dto;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="user_info")
public class UserInfoDTO {
	@Override
	public String toString() {
		return "UserInfoDTO [uname=" + uname + ", password=" + password + ", dob=" + dob + ", email=" + email
				+ ", mobile=" + mobile + "]";
	}
	
	@Column
	@Id
	private String uname;
	@Column
	private String password;
	@Column
	private String dob; 
	@Column
	private String email;
	@Column
	private String mobile;
	@Column(name = "full_name")
	private String fullName;
	
	
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public UserInfoDTO() {
		super();
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	
	

}
