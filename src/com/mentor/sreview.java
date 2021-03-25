package com.mentor;

public class sreview {
 
	String mentor;
	String user;
	String rev;
	public sreview(String mentor, String user, String rev) {
		super();
		this.mentor = mentor;
		this.user = user;
		this.rev = rev;
	}
	public String getMentor() {
		return mentor;
	}
	public void setMentor(String mentor) {
		this.mentor = mentor;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getRev() {
		return rev;
	}
	public void setRev(String rev) {
		this.rev = rev;
	}
}
