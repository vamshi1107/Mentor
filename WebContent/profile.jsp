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
    height:83vh;
    grid-gap:20px;
  }
  .pim{
    margin-top:20px;
    overflow:hidden;
    margin-left:10vw;
  }
  .item{
    border-radius:10px;
    height:400px;
    width:280px;
    margin-left:10px;
    overflow:hidden;
    background-size:100% 100%;
   
 }
 .pinf{
  margin-top:10px;
   width:100%;
   height:100%;
   overflow-y:auto;
 }
 
 .sm{
    displat:flex;
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
      align-items:center;
 }
 .smt{
     width:280px;
     border-radius:10px;
     height:60px;
      position:relative;
      font-family: 'Nunito', sans-serif;
      margin-left:auto;
      margin-right:auto;
      cursor:pointer;
 }
 #sma{
   position:relative;
   text-decoration:none;
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
    margin-left:10px;
    font-family: 'Poppins', sans-serif;
    font-size:16px;
    text-transform:capitalize;
    margin-top:6px;
    margin-bottom:4px;
  }
  #about{
    margin-top:20px;
    position:relative;
    width:40vw;
    overflow-y:auto;
  }
  a{
    text-decoration:none;
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
    magin-top:10px;
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
  #addm{
    font-family: 'Poppins', sans-serif;
    border:none;
    color:#000000;
    background-color:white;
    outline:none;
    font-size:15px;
    font-weight:bold;
  }
  #addm:hover{
    color:#077f7f;
  }
  #addm:focus,:active{
     outline:none;
  }
  #adder{
    width:40vw;
     display:flex;
    justify-content:flex-end;
  }
  #smj{
    background-color:#000000;
  }
   #smj:hover{
    background-color:#077f7f;
  }
  html::-webkit-scrollbar{
   width:5px;
   background-color:black;
  }
</style>
<%
  String ck=String.valueOf(request.getSession().getAttribute("login"));
  if(ck.equals("false")){
	  Cookie c=new Cookie("login","false");
	  response.addCookie(c);
	  response.sendRedirect("login.jsp");
  }
  else if(ck.equals("null")){
	  Cookie c=new Cookie("login","false");
	  response.addCookie(c);
	  response.sendRedirect("login.jsp");
  }
%>

<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
<script>
 
 function addmentor(){
	var mentor=document.getElementById("u_mentor");
	var mentee=document.getElementById("u_mentee");
	 fetch("addmen?mentor="+mentor.value+"&mentee="+mentee.value).then(res=>res.text()).then(data=>{
		 if(data==="true"){
			 alertify.success("Mentor added");
		 }
		 else{
			 alertify.error("Failed to add");
		 }
	 })
 }

</script>
<link href="https://assets.calendly.com/assets/external/widget.css" rel="stylesheet">
<script src="https://assets.calendly.com/assets/external/widget.js" type="text/javascript"></script>
<%
Mentor m;
m=(Mentor)request.getAttribute("mentor");
Mentor loguser=(Mentor)request.getSession().getAttribute("user");
%>
<%@ include file="header4.jsp" %>
 <%
        String men=(String)request.getSession().getAttribute("mentor");
        %>
<div style="margin-top:80px;">
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
        <%if(m.getMentor().equals("true") && !men.equals("true")){ %>
         <a  onclick="Calendly.initPopupWidget({url: '<%=m.getCalendly() %>'});return false;">
              <div  class="sm" id="smj"  style="display:flex;align-items:center;justify-content:center;">
                <span>Schedule time with me</span>
            </div>
        </a>
         <%} %>
     </div>
      <div class="pinf">
        <h1 id="gre">Hey, I'm <span id="nm"><%=m.getName() %></span></h1>
        <input  value="<%=m.getemail()%>" id="u_mentor" type="hidden"> 
        <input value="<%=loguser.getemail()%>" id="u_mentee" type="hidden"> 
        <h3 id="com" style="margin-bottom:20px;"><span></span><%=m.getCompany() %></h3>
        <%if(!men.equals("true")){ %>
         <div id="adder"> <button id="addm" onclick="addmentor()">+ Add mentor</button></div>
         <%} %>
       <%@ include file="mextra.jsp" %>
     </div>
   </div>
</div>

</body>
</html>