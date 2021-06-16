package com.mentor;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updatepass")
public class updatepass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public updatepass() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		sqlMain s=new sqlMain();
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String ver=request.getParameter("verify");
	     if(ver!=null){
	     if(!ver.equals("true")){
	    	 response.sendRedirect("changepass.jsp");
	     }
	     }
	     else{
	    	 response.sendRedirect("changepass.jsp");
	         
	     }
		try {
			if(s.updatepass(email,pass)) {
				response.sendRedirect("/Mentor/login.jsp");
			}
			else {
				response.sendRedirect("changepass.jsp");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
