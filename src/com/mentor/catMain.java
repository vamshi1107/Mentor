package com.mentor;

import java.sql.SQLException;
import java.util.ArrayList;

public class catMain {

	public ArrayList<category> getCat(){
		sqlMain s=new sqlMain();
		ArrayList<category> list = null;
		try {
			list = s.GetCat();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
