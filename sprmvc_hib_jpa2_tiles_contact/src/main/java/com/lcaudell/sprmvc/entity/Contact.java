package com.lcaudell.sprmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

@Entity
public class Contact {

	@Id
	@GeneratedValue
	private int id;

	@Size(min = 3, message = "Must be three or more characters in length.")
	private String name;

	@Email
	private String email;

	@Size(min = 3, message = "Company name must have 3 or more characters.")
	private String company;

	private String phone;

	@Size(min = 5, message = "Message must be at least 5 Characters.")
	private String message;

	// =======================

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

} // class
