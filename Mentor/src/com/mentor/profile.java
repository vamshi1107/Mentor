package com.mentor;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class profile
 */
@WebServlet("/profile")
public class profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Mentor m = null;
		ArrayList<Mentor> al=null;
		sqlMain s=new sqlMain();
		Boolean j=false;
		Boolean pro=true;
		if(request.getParameter("user")==null){
			j=true;
		}
		if(request.getParameter("user").equals("") ||  j ||request.getParameter("user").equals(" ") || request.getSession().getAttribute("user")==null){
			pro=false;
			response.sendRedirect("page.jsp");
		}
		 
		if(pro) {
		try {
			al=s.GetPros();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 for(Mentor i:al) {
			 if(i.email.equals(request.getParameter("user"))) {
				 m=i;
			 }
		 }
		RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
		request.setAttribute("mentor", m);
		rd.forward(request, response);
		
	}
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
