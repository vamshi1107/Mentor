<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mentor - Admin</title>
<style>
   .whole{
     margin-top:100px;
   }
</style>
</head>
<body>
<%@ include file='adhead.jsp' %>
<%
if(request.getSession().getAttribute("admin") !=null){
    Boolean ad=(Boolean)request.getSession().getAttribute("admin");
    if(!ad){
	 response.sendRedirect("login.jsp");
   }
   }
else{
	response.sendRedirect("login.jsp");
}
%>
<div  class="whole">
  <div>
    
  </div>
  <div class="mentors">
      <div>
        <%@ include file="row.jsp" %>
      </div>
  </div>
</div>
  
</body>
</html>