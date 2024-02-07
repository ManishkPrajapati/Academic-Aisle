package com.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Login")
public class Login {
	@Id
	private int Id;
	private int user_id;
	private String user_name;
	private String Password;
	private String EmailId;
	private String Phone;
	
	
	public Login() {
		super();
	}


	public Login(int id, int user_id, String user_name, String password, String emailId, String phone) {
		super();
		Id = id;
		this.user_id = user_id;
		this.user_name = user_name;
		Password = password;
		EmailId = emailId;
		Phone = phone;
	}


	public int getId() {
		return Id;
	}


	public void setId(int id) {
		Id = id;
	}


	public int getUser_id() {
		return user_id;
	}


	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public String getPassword() {
		return Password;
	}


	public void setPassword(String password) {
		Password = password;
	}


	public String getEmailId() {
		return EmailId;
	}


	public void setEmailId(String emailId) {
		EmailId = emailId;
	}


	public String getPhone() {
		return Phone;
	}


	public void setPhone(String phone) {
		Phone = phone;
	}


	@Override
	public String toString() {
		return "Login [Id=" + Id + ", user_id=" + user_id + ", user_name=" + user_name + ", Password=" + Password
				+ ", EmailId=" + EmailId + ", Phone=" + Phone + "]";
	}
	
	
}
