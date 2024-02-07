package com.demo.model;

//import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Users")
public class Users {
	@Id
	private int Id;
	private String First_name;
	private String Last_name;
	private String Phone;
	private String Email;
	private String Password;
	
//	@Embedded
//	private Area area;

	public Users() {
		super();
	}

	public Users(int id, String first_name, String last_name, String phone, String email, String password) {
//	public Users(int id, String first_name, String last_name, String phone, String email, String password, Area area) {
		super();
		this.Id = id;
		First_name = first_name;
		Last_name = last_name;
		Phone = phone;
		Email = email;
		Password = password;
//		this.area = area;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		this.Id = id;
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

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

//	public Area getArea() {
//		return area;
//	}
//
//	public void setArea(Area area) {
//		this.area = area;
//	}

	@Override
	public String toString() {
		return "Users [Id=" + Id + ", First_name=" + First_name + ", Last_name=" + Last_name + ", Phone=" + Phone
				+ ", Email=" + Email + ", Password=" + Password + "]";
	}
//	@Override
//	public String toString() {
//		return "Users [Id=" + Id + ", First_name=" + First_name + ", Last_name=" + Last_name + ", Phone=" + Phone
//				+ ", Email=" + Email + ", Password=" + Password + ", area=" + area + "]";
//	}
	
	
	
}
