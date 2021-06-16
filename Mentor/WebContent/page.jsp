<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.ArrayList" %>
<%@ page import="com.mentor.catMain" %>
<%@ page import="com.mentor.category" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mentor</title>
</head>
<body>
<style>
@import url('https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,800;1,400;1,700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap');
 .page1{
  margin-top:80px;
 }
 .search{
  width:600px;
  height:70px;
  border-radius:12px;
  border:0.3px solid grey;
  display:flex;
  margin-left:100px;
 }
 #sea{
 height:35px;
 padding:0px;
 width:500px;
 margin-left:20px;
 border:0px;
 font-size:1rem;
 }
 #sea:focus,:active{
    outline:none;
  }
 .inner{
  display:flex;
  flex-direction:column;
 }
 #stst{
   line-height:1;
   margin-bottom:3px;
   margin-top:9px;
   margin-left:17px;
   font-family: 'Nunito', sans-serif;
   font-size:15px;
 }
 .inf{
  height:300px;
  display:flex;
  justify-content:left;
  align-items:center;
 }
 #wel{
   margin-left:100px;
   font-size: 40px;
    font-weight: 600;
    max-width: 716px;
    line-height: 1.2;
    margin-bottom: 16px;
   font-family: 'Roboto', sans-serif;
   letter-spacing:2px;
 }
 .con{
   width:90vw;
   margin-top:60px;
   margin-left:auto;
   margin-right:auto;
   height:500px;
   display:flex;
   flex-direction:row;
   padding-left:10px;
    padding-top:20px;
   overflow-x:auto;
 }
 .item{
    border-radius:10px;
    max-height:430px;
    min-width:300px;
    margin:10px;
 }
 .con::-webkit-scrollbar{
   width:0px;
  }
  .cat{
    min-width:420px;
    min-height:260px;
    border-radius:10px;
    margin:10px;
    display:flex;
    align-items:flex-end;
    justify-content:flex-end;
  }
  .catcon{
    margin-top:50px;
    display:flex;
    flex-direction:row;
    height:320px;
    width:90%;
    margin-left:auto;
    margin-right:auto;
    overflow-x:auto;
  }
  .catcon::-webkit-scrollbar{
    width:0px;
  }
  #cathead{
    font-size:1.9rem;
    margin-left:70px;
    font-family:'Nunito', sans-serif;
  }
  #cath{
    margin:20px;
    width:auto;
    min-width:100px;
    height:40px;
    border-radius:7px;
    background-color:#ffffff;
    color:#000000;
    border:none;
     font-family:'Nunito', sans-serif;
     font-size:16px;
     outline:none;
  }
   #cath:hover{
     color:#ffffff;
     background-color:#000000;
   }
</style>
<script>
var v=0;
function init() { 
	document.getElementById("s_form").reset(); 
	} 
	window.onload = init;
</script>

<%
  if(request.getSession().getAttribute("admin") !=null){
     Boolean ad=(Boolean)request.getSession().getAttribute("admin");
     if(ad){
	 response.sendRedirect("admin.jsp");
    }
    }

  Mentor ck=(Mentor)request.getSession().getAttribute("user");
   if(ck==null){
	  Cookie c=new Cookie("login","false");
	  response.addCookie(c);
  }
%>

 <%@include file="header.jsp" %>
 <div class="page1">
    <div class="inf" >
      <p id="wel" >Find,Connect Mentors</p>
    </div>
    <div class="search" id="sup" >
      <div class="inner">
         <p id="stst">-Search</p>
         <form action="Main" method="post" id="s_form" autocomplete="off">
            <input type="text" id="sea" onchange="init()" name="search" autocomplete="off">
         </form>
      </div>
    </div>
    <%
    if(request.getParameter("nothing")!=null) {
    	if(request.getParameter("nothing").equals("false")){
    		%>
    	     	<%@ include file="exec.jsp" %>
    		<% 
    	}
    	else{
    		%>
    		<%@ include file="exec.jsp" %>
    		<%
    	}
    	}
    	else{
    		%>
    		<%@ include file="exec.jsp" %>
    		<%
    	}
    %>
  <div>
    <p id="cathead" data-aos="fade-up">Find mentors by category</p>
  </div>
 <div class="catcon">
 <% 
  catMain cm=new catMain();
 ArrayList<category> cats=cm.getCat();
 %>
 <%for(category i :cats){
	 String t= i.getCat();
  %>
<div class="cat" style="background-image:url(<%=i.getImage() %>);background-size:100% 100%;" data-aos="fade-up">
   <a href="mentors?cat=<%=t%>"> <button id="cath"><%=t %></button></a>
</div> 
<%} %>
 </div>
 </div>
 
</body>
</html>