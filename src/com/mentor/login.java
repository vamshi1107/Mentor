package com.mentor;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Cookie c=new Cookie("login","false");
    Boolean login=false;
    
    public login() {
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		Cookie[] co=request.getCookies();
		for(Cookie ex:co) {
			if(ex.getName()=="login") {
				if(ex.getValue().equals("true")) {
					ex.setValue("false");
				}
			}
		}
		String user=request.getParameter("email");
		String pass=request.getParameter("password");
		sqlMain s=new sqlMain();
		if(s.isAdmin(user, pass)) {
			HttpSession session=request.getSession();
			session.setAttribute("admin",true);
			response.sendRedirect("admin.jsp");
		}
		else {
		Mentor m=s.Validate(user, pass);
		if(m!=null) {
			String f=m.getName()+"";
			Cookie k=new Cookie("name",f);
			request.setAttribute("user", m);
			this.c.setValue("true");
			response.addCookie(this.c);
			HttpSession session=request.getSession();
			session.setAttribute("name",f);
			session.setAttribute("user",m);
			session.setAttribute("login",true);
			session.setAttribute("mentor", m.getMentor());
			this.login=true;
			this.c.setValue("true");
			response.sendRedirect("page.jsp");
		}
		else {
			if(this.c.getValue().equals("true")) {
				this.c.setValue("true");
			}
			else {
				this.c.setValue("false");
			}
			request.setAttribute("login", "false");
			this.login=false;
		}
		if(request.getAttribute("login").equals("true")) {
			System.out.println("this");
			RequestDispatcher rd=request.getRequestDispatcher("page.jsp");
			request.setAttribute("login", "true");
			response.addCookie(c);
			rd.forward(request, response);
		}
		else if(request.getAttribute("login") ==null || request.getAttribute("login").equals("false") ) {
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			request.setAttribute("login", "false");
			rd.forward(request, response);
		}
		}
		}
		catch(Exception e) {
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
