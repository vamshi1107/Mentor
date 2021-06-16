package com.mentor;

public class Mentor {

   String name;
   String profession;
   String company;
   String category;
   String social;
   String lang;
   String image;
   String email;
   String about;
   String pass;
   String mentor;
   String calendly;
   
   public Mentor(String name, String profession, String company, String category, String social, String lang, String image,
		String email, String about, String pass, String mentor, String calendly) {
	super();
	this.name = name;
	this.profession = profession;
	this.company = company;
	this.category = category;
	this.social = social;
	this.lang = lang;
	this.image = image;
	this.email = email;
	this.about = about;
	this.pass = pass;
	this.mentor = mentor;
	this.calendly = calendly;
}
public String getCalendly() {
	return calendly;
}
public void setCalendly(String calendly) {
	this.calendly = calendly;
}
public Mentor() {
	   
   }
public String getMentor() {
	return mentor;
}
public void setMentor(String mentor) {
	this.mentor = mentor;
}

public String getPass() {
	return pass;
}

public void setPass(String pass) {
	this.pass = pass;
}

public String getAbout() {
	return about;
}
public void setAbout(String about) {
	this.about = about;
}
public String getemail() {
	return email;
}
public void setemail(String email) {
	this.email = email;
}
public String getName() {
	return name;
}

public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public void setName(String name) {
	this.name = name;
}
public String getProfession() {
	return profession;
}
public void setProfession(String profession) {
	this.profession = profession;
}
public String getCompany() {
	return company;
}
public void setCompany(String company) {
	this.company = company;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getSocial() {
	return social;
}
public void setSocial(String social) {
	this.social = social;
}
public String getLang() {
	return lang;
}
public void setLang(String lang) {
	this.lang = lang;
}
 
public Mentor getInstance() {
	return this;
}

}
