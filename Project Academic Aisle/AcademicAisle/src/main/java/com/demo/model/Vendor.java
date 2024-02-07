package com.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Vendor")
public class Vendor {
	@Id
	private int Id;
	private int Area_id;
	private String Name;
	private String Phone;
	private String Email;
	private String Password;
	
	public Vendor() {
		super();
	}

	public Vendor(int id, int area_id, String name, String phone, String email, String password) {
		super();
		Id = id;
		Area_id = area_id;
		Name = name;
		Phone = phone;
		Email = email;
		Password = password;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public int getArea_id() {
		return Area_id;
	}

	public void setArea_id(int area_id) {
		Area_id = area_id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
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

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	@Override
	public String toString() {
		return "Vendor [Id=" + Id + ", Area_id=" + Area_id + ", Name=" + Name + ", Phone=" + Phone + ", Email=" + Email
				+ ", Password=" + Password + "]";
	}
	
	
}
