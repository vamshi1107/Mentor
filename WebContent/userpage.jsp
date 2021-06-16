<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.mentor.Mentor" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
</head>
<body>

<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');
</style>

<style>
  #prfp{
    display:grid;
    grid-template-columns:40% 60%;
    width:95vw;
    margin-right:auto;
    margin-left:auto;
    height:80vh;
    grid-gap:20px;
  }
  .pim{
    margin-top:0px;
    overflow:hidden;
    margin-left:10vw;
  }
  .item{
    border-radius:10px;
    height:400px;
    width:280px;
    margin:10px;
    overflow:hidden;
    background-size:100% 100%;
   
 }
 .pinf{
   width:100%;
   height:100%;
   margin-top:10px;
   overflow-y:auto;
 }
 
 .sm{
    top:20px;
    margin:10px;
    width:280px;
     border-radius:10px;
     height:60px;
     background-color:#077f7f;
     text-align:center;
     color:white;
     align-content:center;
     position:relative;
      font-family: 'Nunito', sans-serif;
 }
 #sma{
   position:relative;
   
   color:#FFFFFF;
 }
 #gre{
   font-family: 'Roboto', sans-serif;
   letter-spacing:2px;
   font-weight:bold;
 }
 #nm{
   text-transform:capitalize;
  }
  #com{
    margin-top:10px;
    margin-left:10px;
    font-family: 'Poppins', sans-serif;
    font-weight:bold;
    font-size:16px;
    text-transform:capitalize;
  }
  #about{
    margin-top:20px;
    position:relative;
    width:40vw;
    overflow-y:auto;
  }
  #about::-webkit-scrollbar{
   width:0px;
  }
  .pinf::-webkit-scrollbar{
   width:0px;
  }
  #abh{
    font-size:1.5rem;
    font-weight:bold;
    font-family: 'Roboto', sans-serif;
  }
  #ab{
    margin-left:10px;
    font-family: 'Noto Sans', sans-serif;
    
  }
  #cat{
   
     font-family: 'Roboto', sans-serif;
    font-size:16px;
    
  }
  #exph{
    font-size:1.0rem;
      font-family: 'Poppins', sans-serif;
  }
  #exp{
    magin-top:15px;
  }
  #yh{
    width:40vw;
    height:auto;
      font-family: 'Noto Sans', sans-serif;
        font-size:1.2rem;
    word-wrap: break-word; 
  }
  .ext{
    margin-top:60px;
  }
  #spa{
  position:relative;
  top:16px;
  }
  #sma{
    text-decoration:none;
  }
</style>

<%@ include file="header3.jsp" %>
<% 
    if(request.getSession().getAttribute("user") ==null){
    	response.sendRedirect("login.jsp");
    }
 
 %>
<%
Mentor m;
m=(Mentor)request.getSession().getAttribute("user");
%>
<div style="margin-top:100px;">
   <div id="prfp">
     <div class="pim">
       <div class="item">
         <img src="<%=m.getImage() %>" height=100% width=100%>
        </div>
        <a  id="sma" href="<%=m.getSocial() %>" target="/" >
          <div  class="sm">
            <span id="spa">Connect me on</span>
          </div>
        </a>
        <a  id="sma" href="update.jsp"  >
          <div  class="sm" style="background-color:black">
            <span id="spa">Edit Details</span>
          </div>
        </a>
     </div>
      <div class="pinf">
        <h1 id="gre">Hey, I'm <span id="nm"><%=m.getName() %></span></h1>
        <h3 id="com"><span></span><%=m.getCompany() %></h3>
        <div style="height:50px;"></div>
        <%@include file="extra.jsp" %>
     </div>
   </div>
</div>
</body>
</html>