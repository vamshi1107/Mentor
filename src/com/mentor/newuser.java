package com.mentor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class newuser
 */
@WebServlet("/newuser")
public class newuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newuser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		session.setAttribute("signup", "false");	
		Mentor m=new Mentor();
		try {
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
			sqlMain s=new sqlMain();
			int l= s.CreateUser(m);
			if(l > 0 ) {
				session.setAttribute("signup", "true");
				response.sendRedirect("login.jsp");
			}
			else {
				response.sendRedirect("details.jsp");
			}
			
		}
		catch(Exception e) {
			
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
