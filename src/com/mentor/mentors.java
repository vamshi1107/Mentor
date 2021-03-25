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
 * Servlet implementation class mentors
 */
@WebServlet("/mentors")
public class mentors extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mentors() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		sqlMain s=new sqlMain();
		ArrayList<Mentor> a=null;
		 try {
			a=s.GetByCategory(request.getParameter("cat"));
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 if(a==null || a.size()<=0) {
			 a.add(new Mentor("","","", "", "", "","https://cdn.dribbble.com/users/2666881/screenshots/11346959/empty2_4x.png","","","","",""));
		 }
		RequestDispatcher rd =request.getRequestDispatcher("mentor.jsp");
		request.setAttribute("users", a);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
