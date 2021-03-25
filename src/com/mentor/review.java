package com.mentor;

public class review {

	String name;
	String email;
	String review;
	String mentor;
	public review(String name, String email, String review, String mentor) {
		super();
		this.name = name;
		this.email = email;
		this.review = review;
		this.mentor = mentor;
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
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getMentor() {
		return mentor;
	}
	public void setMentor(String mentor) {
		this.mentor = mentor;
	}
	
	
}
