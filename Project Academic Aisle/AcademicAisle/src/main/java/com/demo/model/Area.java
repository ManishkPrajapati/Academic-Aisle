package com.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
//import javax.persistence.Embeddable;

//@Embeddable
@Entity
@Table(name = "Users")
public class Area {
	@Id
	private int Id;
	private String Area;
	private String City;
	private String State;
	private String Country;
	
	public Area() {
		super();
	}

	public Area(int id, String area, String city, String state, String country) {
		super();
		Id = id;
		Area = area;
		City = city;
		State = state;
		Country = country;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getArea() {
		return Area;
	}

	public void setArea(String area) {
		Area = area;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public String getCountry() {
		return Country;
	}

	public void setCountry(String country) {
		Country = country;
	}

	@Override
	public String toString() {
		return "Area [Id=" + Id + ", Area=" + Area + ", City=" + City + ", State=" + State + ", Country=" + Country
				+ "]";
	}
	
	
}
