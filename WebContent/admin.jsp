<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.mentor.Mentor" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mentor.catMain" %>
<%@ page import="com.mentor.category" %>
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
<style>
  .cat{
    width:160px;
    height:auto;
    padding:2px;
    border:1px solid black;
    text-align:center;
    font-family: 'sui-semi-bold';
    margin:10px;
    border-radius:3px;
  }
  .catcon{
    display:flex;
    flex-direction:row;
    flex-wrap:wrap;
    width:90%;
    justify-content:space-between;
  }
  #add{
     color:#077f7f;
  }
</style>
<div  class="whole">
  <div class="wcon">
    <div class="wel">Categories</div>
    <div class="catcon">
        <% 
            catMain cm=new catMain();
            ArrayList<category> cats=cm.getCat();
           %>
           <%
           for(category i :cats){
            %>
            <div class="cat">
            <%=i.getCat()%>
              </div>
            <%} %>
            <a href="addCat.jsp">
             <div class="cat" id="add">
               Add
              </div>
             </a>
    </div>
  </div>
  <div class="mentors">
      <div>
        <%@ include file="row.jsp" %>
      </div>
  </div>
</div>
  
</body>
</html>