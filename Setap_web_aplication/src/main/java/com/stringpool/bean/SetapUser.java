package com.stringpool.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "stock", catalog = "mkyong")
public class SetapUser {

	int userId;
	String userEmailId ; 
	String password ;
	
	public SetapUser() {
		super();
	}
	
	public SetapUser(String userEmailId, String password) {
		super();
		this.userEmailId = userEmailId;
		this.password = password;
	}
	
	@Id
	@Column(name = "USER_ID", unique = true, nullable = false)
	public int getUserId() {
		return userId;
	}
	
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	@Column(name = "USER_NAME", unique = true, nullable = false, length = 200)
	public String getUserEmailId() {
		return userEmailId;
	}
	
	public void setUserEmailId(String userEmailId) {
		this.userEmailId = userEmailId;
	}
	
	@Column(name = "PASSWORD", nullable = false, length = 200)
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
}
