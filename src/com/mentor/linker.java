package com.mentor;

import java.sql.SQLException;
import java.util.ArrayList;

public class linker {

	public ArrayList<Mentor> getLinked(String email,String men) {
		ArrayList<Mentor> am=null;
		 try {
			am= new sqlMain().GetLinked(email, men);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return am;
	}
	
	public ArrayList<review> getReview(String email) {
		ArrayList<review> am=null;
		 try {
			am= new sqlMain().GetReview(email);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return am;
	}
}
