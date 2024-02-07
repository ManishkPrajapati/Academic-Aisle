package com.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Administrator")
public class Administrator {
	@Id
	private int Id;
	private String First_name;
	private String Last_name;
	private String Phone;
	private String Email;
	
	
	public Administrator() {
		super();
	}


	public Administrator(int id, String first_name, String last_name, String phone, String email) {
		super();
		Id = id;
		First_name = first_name;
		Last_name = last_name;
		Phone = phone;
		Email = email;
	}


	public int getId() {
		return Id;
	}


	public void setId(int id) {
		Id = id;
	}


	public String getFirst_name() {
		return First_name;
	}


	public void setFirst_name(String first_name) {
		First_name = first_name;
	}


	public String getLast_name() {
		return Last_name;
	}


	public void setLast_name(String last_name) {
		Last_name = last_name;
	}


	public String getPhone() {
		return Phone;
	}


	public void setPhone(String phone) {
		Phone = phone;
	}


	public String getEmail() {
		return Email;
	}


	public void setEmail(String email) {
		Email = email;
	}


	@Override
	public String toString() {
		return "Administrator [Id=" + Id + ", First_name=" + First_name + ", Last_name=" + Last_name + ", Phone="
				+ Phone + ", Email=" + Email + "]";
	}
}
