package com.mentor;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addmen
 */
@WebServlet("/addmen")
public class addmen extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public addmen() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int i=0;
		String mentor=request.getParameter("mentor");
		String mentee=request.getParameter("mentee");
		sqlMain s=new sqlMain();
		try {
			i=s.addLink(mentor, mentee);
			if(i>0) {
				response.getWriter().append("true");
			}
			else {
				response.getWriter().append("false");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
