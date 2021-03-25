package com.mentor;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Main extends HttpServlet{
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		ArrayList<Mentor> al=null;
		Boolean proceed=true;
		if(request.getParameter("search")==null) {
			proceed=false;
			response.sendRedirect("page.jsp");
		}
		sqlMain s=new sqlMain();
		 try {
			al=s.GetOneMentor(request.getParameter("search"));
			System.out.println(al);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 if(al==null || al.size()==0) {
			 request.setAttribute("nothing", "false");
			 al.add(new Mentor("","","", "", "", "","https://cdn.dribbble.com/users/2666881/screenshots/11346959/empty2_4x.png","","","","",""));
		 }
		 else {
			 request.setAttribute("nothing", "true");
		 }
		 if(proceed) {
			 RequestDispatcher rs=request.getRequestDispatcher("page.jsp");
			 request.setAttribute("mentors", al);
			 rs.forward(request, response);
		 }	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
