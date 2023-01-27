package com.todoapp.todo.dto;

import jakarta.persistence.Column;
import jakarta.persistence.Id;

public class Task {
	
	@Column(name = "task_id")
	@Id
	private String tasId ;
	
	@Column(name = "task_name")
	private String taskName ;
	
	@Column(name ="task_desc")
	private String taskDesc;
	
	@Column(name ="start_time")
	private String startTime;
	
	@Column(name ="end_time")
	private String endTime;
	
	@Column(name ="task_status")
	private String taskStatus ;
	
	@Column(name ="task_priority")
	private String taskPriority;
	@Column(name ="uname")
	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getTasId() {
		return tasId;
	}

	public void setTasId(String tasId) {
		this.tasId = tasId;
	}

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public String getTaskDesc() {
		return taskDesc;
	}

	public void setTaskDesc(String taskDesc) {
		this.taskDesc = taskDesc;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getTaskStatus() {
		return taskStatus;
	}

	public void setTaskStatus(String taskStatus) {
		this.taskStatus = taskStatus;
	}

	public String getTaskPriority() {
		return taskPriority;
	}

	public void setTaskPriority(String taskPriority) {
		this.taskPriority = taskPriority;
	}

	public Task() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
	
	
}
