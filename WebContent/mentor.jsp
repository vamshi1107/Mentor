<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mentor.topMentors" %>
<%@ page import="com.mentor.Mentor" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mentor</title>
 <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
</head>
<body>
<style>
 #ment{
   margin-top:150px;
 }
</style>
<style>
@import url('https://fonts.googleapis.com/css2?family=Ubuntu:wght@500&display=swap');
</style>
<style>
 
 .item{
    border-radius:10px;
    max-height:430px;
    width:300px;
    margin:10px;
    overflow:hidden;
    background-size:100% 100%;
    
 }
 .imp{
   position:relative;
   filter:brightness(98%)
 }
 #ment{
   width:90vw;
   margin-left:auto;
   margin-right:auto;
   display:grid;
   grid-template-columns:25% 25% 25% 25%;
   grid-gap:10px;
   
 }
   #detail{
   position:relative;
   display:block;
   margin-left:12px;
   margin-right:auto;
   margin-top:270px;
   padding:10px;
   color:#FFFFFF;
   text-weight:bold;
   text-shadow: 2px 2px 10px white;
   }
   
   #name{
   font-size:1.2rem;
   font-family: 'Ubuntu', sans-serif;
   text-transform:capitalize;
   }
   .ik{
        height:430px;
        width:300px;
        position:relative;
        border-radius:10px;
        z-index:-1;
   }
   #det{
      margin-top:-433px;
      z-index:100;
   }
   #im{
    z-index:-1;
   }
   .item:hover  #det{
     filter:brightness(105%);
     background-image:linear-gradient(360deg,#000000,#f3f2f200);
   }
   .aitem:hover > #im{
     filter:brightness(95%);
   }
   .aitem:hover > #det{
     filter:brightness(105%);
   }
   #em{
     display:none;
   }
   @media only screen and (max-width:1240px){
       #ment{
   grid-template-columns:33% 34% 33%;
   grid-gap:10px;
   
 }
  @media only screen and (max-width:940px){
       #ment{
   grid-template-columns:50% 50%;
   grid-gap:10px;
   
 }
 @media only screen and (max-width:640px){
       #ment{
   grid-template-columns:100%;
   grid-gap:10px;
   
 }
 @media only screen and (max-width:500px){
       .item{
        width:450px;
   }
   #ment{
     width:500px;
   }
   }
</style>
<script>
 function check(event){
 d=document.cookie
 v=d.split(";")
 conks=[]
 stop=true
 v.forEach((x)=>{conks.push(x.split("="))})
 em=document.getElementById("em").innerHTML
 if(em.length<=4){
	 console.log(em)
	 event.preventDefault()
 }
 else{
 for(let i of conks){
	 if(i[0].replace(" ","")==="login"){
		 stop=false
		 if(i[1]==="false"){
			 event.preventDefault()
			 alertify.error("Please Login to View");
		 }
	 }
  }
 if(stop){
	 event.preventDefault()
	 alertify.error("Please Login to View");
 }
 }
 }
 </script>

<%@ include file="header.jsp" %>
<%
ArrayList<Mentor> al=new ArrayList<Mentor>();
 
if(request.getAttribute("users")!=null){
	al= (ArrayList<Mentor>) request.getAttribute("users");
}
else{
	topMentors t= new topMentors();
	al=t.getList();
}
%>

<div id="ment">
 <%
  for(Mentor i : al) {
  %>
  <div class="item" >
  <a href="profile?user=<%=i.getemail()%>" class="aitem" onclick="check(event)">
    <div class="ik" id="im">
        <img class="imp" height=100% width=100% src=<%=i.getImage() %> style="background-color:black;">
        <p id="em"><%=i.getemail() %></p>
    </div>
    
    <div class="ik" id="det">
       <div id="detail">
            <p id="name">
                <%=i.getName()%>
            </p>
            <p style="text-transform: capitalize;">
                <%=i.getProfession()%>
            </p>
             <p  style="text-transform: capitalize;">
                <%=i.getCategory() %>
            </p>
       </div>
     </div> 
     </a>
  </div>
  <%
  }
  %>
</div>
</body>
</html>