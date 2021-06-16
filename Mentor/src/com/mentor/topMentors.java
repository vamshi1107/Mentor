package com.mentor;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class topMentors {
 
	public ArrayList<Mentor> getList() throws ClassNotFoundException, SQLException{
		ArrayList<Mentor> al=null;
		sqlMain s=new sqlMain();
		al=s.GetMentor();
		if(al.size()<=0) {
			 al.add(new Mentor("","","", "", "", "","https://cdn.dribbble.com/users/2666881/screenshots/11346959/empty2_4x.png","","","","",""));
		}
		 return al;
	}
	
	public Map getJson(Mentor i) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("name", i.name);
			map.put("proffession", i.profession);
			map.put("company", i.company);
			map.put("category", i.category);
			map.put("social", i.social);
			map.put("lang", i.lang);
			map.put("img",i.image);
			map.put("email",i.email);
			map.put("about",i.about);
		return map;
	}

	public ArrayList<Mentor> getSt() {
		ArrayList<Mentor> al=null;
		sqlMain s=new sqlMain();
		try {
			al=s.GetStu();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return al;
	}
}
