<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.mentor.Mentor" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mentor.catMain" %>
<%@ page import="com.mentor.category" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<style>
  #pg{
     margin-top:80px;
  }
   #signup{
    display:flex;
    margin-top:80px;
    width:100%;
    height:80vh;
    justify-content:center;
    align-items:center;
  }
   .inputs{
    width:290px;
    height: 60px;
    outline: none;
    font-size: 16px;
    padding: 0 20px;
    border-radius: 10px;
    box-shadow: none!important;
    border: 1px solid #e3e6ea;
    background-color: #fafafa;
    margin-bottom:20px;
     margin-left:auto;
    margin-right:auto;
    display:flex;
    align-items:center;
    justify-content:center;
    font-family:'Nunito', sans-serif;
    color:#077f7f;
  }
   .lab{
    margin-top:3px;
    font-family: 'Nunito', sans-serif;
  }
   #bu{
    margin-top:25px;
    background-color:#000000;
    color:#ffffff;
    font-family: 'Nunito', sans-serif;
    margin-left:auto;
    margin-right:auto;
    transition-property:all;
    transition:2s linear ease;
  }
  #bu:hover{
    background-color:#077f7f;
    box-shadow:0px 3px 90px 2px grey;
  }
  #butt{
    margin-top:25px;
    background-color:#000000;
    color:#ffffff;
    font-family: 'Nunito', sans-serif;
    margin-left:auto;
    margin-right:auto;
    transition-property:all;
    transition:2s linear ease;
  }
  #butt:hover{
    background-color:#077f7f;
    box-shadow:0px 3px 90px 2px grey;
  }
  .infor{
    text-align:center;
    font-family: 'Nunito', sans-serif;
    font-size:1.5rem;
  }
  .container{
    width:60vw;
    height:70vh;
    overflow:hidden; 
    display:flex;
    flex-direction:row;
  }
  .coni{
    min-width:60vw;
    min-height:70vh;
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
  }
  .extr{
     width:125px;
     margin-left:10px;
     background-color:white;
     border:none;
  }
  .b{
    background-color:white;
    color:white;
  }
  .newc{
     width:120px;
    height: 60px;
    outline: none;
    font-size: 16px;
    padding: 0 20px;
    border-radius: 10px;
    box-shadow: none!important;
    border:none;
    background-color: #ffffff;
  
    margin-left:auto;
    margin-right:auto;
    font-family: 'Nunito', sans-serif;
  }
   .newc:hover{
       color:#077f7f;
  }
  #im{
    width:300px;
    height:200px;
    background-color:#d2bfbf;
    display:flex;
    margin-bottom:100px;
    margin-bottom:10px;
    border-radius:10px;
    justify-content:center;
    align-items:center;
    font-family:'Nunito', sans-serif;
  }
  .extr:hover{
    color:white;
    background-color:black;
  }
  #menin{
    display:flex;
    flex-direction:row;
    
  }
  .men{
     margin-top:9px;
     margin-left:3px;
  }
  #calendly{
  visibility:hidden;
  }
  .bkc{
      display:flex;
      flex-direction:row;
      align-items:center;
      justify-content:space-between;
  }
</style>
<body>
<script>
  function next(e){
	   document.getElementById(e.srcElement.parentElement.id).style.marginLeft="-60vw";
	   
  }
  function nextc(e){
	   document.getElementById(e.srcElement.parentElement.parentElement.id).style.marginLeft="-60vw";
	   
 }
  function back(e){
	   document.getElementById("it1").style.marginLeft="0vw";
	  
 }
  function back2(e){
	   document.getElementById("it").style.marginLeft="0vw";
}
  function back3(e){
	   document.getElementById("it2").style.marginLeft="0vw";
}
 
  function move(e){
		  document.getElementById(e.srcElement.parentElement.id).style.marginLeft="-60vw";
  }
  function ck(){
	  if(document.getElementById("calen").value=="true")
	  {
		  document.getElementById("calendly").style.visibility="visible";
	  }
	  else{
		  document.getElementById("calendly").style.visibility="hidden";
		 
	  }
}

</script>
<%@include file="adhead2.jsp" %>
<% Mentor m=(Mentor)request.getAttribute("user"); 
%>
<%=m %>
<div id="pg">
  <div id="signup">
   <div >
  <p class="infor">Join today</p>
  <div class="container">
   <div class="coni" id="it">
        <div>
         <p class="lab">Name</p>
          <div class="inputs">
               <%=m.getName()%>
          </div> 
       </div>
      <div>
        <p class="lab">Email</p>  
        <div class="inputs" id="email"><%=m.getemail()%></div>
      </div>
       <div>
         <p class="lab">Password</p>
          <div class="inputs"><%=m.getPass() %></div>
       </div>
           <button class="inputs first" id="bu" type="button" onclick="move(event)">Next</button>     
       </div>
   
    <div class="coni" id="it1">
       <div>
         <p class="lab">Category</p>
         <div class="inputs" ><%=m.getCategory()  %></div>
       </div>
       <div>
        <p class="lab">Profession</p>  
        <div class="inputs" ><%=m.getProfession() %></div>
       </div>
       <div>
         <p class="lab">Company / College</p>
          <div class="inputs" ><%=m.getCompany() %></div>
       </div>
       <div class="bkc">
           <button class="newc" type="button" onclick="back2(event)">Back</button>
          <button class="inputs  extr" id="bu" type="button" onclick="nextc(event)">Next</button>
       </div>
        
      </div>
      
      
     <div  class="coni" id="it2">
       <div>
         <div id="im" style="overflow:hidden;height:300px;">
              <img src="<%=m.getImage()  %>" width="100%" height="100%">
         </div>
       </div>
       <div id="menin" style="margin-bottom:10px;">
          <div>
          <% if(m.getMentor().equals("true")) { %>
               <div class="inputs" ><%=m.getCalendly() %></div>
          <%}%>
          </div>
       </div>
       <div  class="bkc">
           <button class="newc" type="button" onclick="back(event)">Back</button>
           <button class="inputs extr" id="butt" type="button" onclick="nextc(event)">Next</button>
        </div>
     </div>
     
     <div  class="coni" id="it3">
        <div>
        <p class="lab">Languages</p>  
        <div class="inputs" ><%=m.getLang() %></div>
        </div>
         <div>
        <p class="lab">Social media link</p>  
          <div class="inputs" ><%=m.getSocial() %></div>
        </div>
        <div>
        <p class="lab">About you</p>  
          <div class="inputs"  style="margin-bottom:5px;height:90px"><%=m.getAbout() %></div>
       </div>
       <div>
           <button class="newc" type="button" onclick="back3(event)">Back</button>
        </div>
     </div>
     
    </div>
</div>
</div>
</div>
<script>

</script>
</body>
</html>