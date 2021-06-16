package com.mentor;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateuser
 */
@WebServlet("/updateuser")
public class updateuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateuser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Mentor m=new Mentor();
		System.out.println("hi"+request.getParameter("mentor"));
		m.setName(request.getParameter("name"));
		m.setemail(request.getParameter("email"));
		m.setCompany(request.getParameter("company"));
		m.setAbout(request.getParameter("about"));
		m.setCategory(request.getParameter("category"));
		m.setImage(request.getParameter("image"));
		m.setLang(request.getParameter("language"));
		m.setPass(request.getParameter("password"));
		m.setSocial(request.getParameter("social"));
		m.setProfession(request.getParameter("profession"));
		if(request.getParameter("mentor")==null) {
			m.setMentor("false");
			m.setCalendly("");
		}
		else {
			m.setMentor("true");
			m.setCalendly(request.getParameter("calendly"));
		}
		
		sqlMain sm=new sqlMain();
		try {
			if(sm.updateDetails(m)) {
				request.getSession().setAttribute("user",m);
				 response.sendRedirect("user");
			}
			else {
				 response.sendRedirect("update.jsp");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
