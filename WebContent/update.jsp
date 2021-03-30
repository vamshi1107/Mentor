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
    margin-bottom:20px;
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
</style>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.0.1/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.0.1/firebase-storage.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.0.1/firebase-analytics.js"></script>
<script>
      var firebaseConfig = {
           apiKey: "AIzaSyBsxMIXmRJebSOc5i7gYlYFT42TdOw6DcA",
           authDomain: "myproject-d9de9.firebaseapp.com",
           databaseURL: "https://myproject-d9de9.firebaseio.com",
           projectId: "myproject-d9de9",
           storageBucket: "myproject-d9de9.appspot.com",
           messagingSenderId: "403604530600",
           appId: "1:403604530600:web:60d9c6b109832036daa99d",
           measurementId: "G-NHJSQNBL1H"
      };
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
  function submit(){
      var input = document.getElementById("inpu");
      ref=firebase.storage().ref()
       var file=input.files[0];
       var name=new Date() + file.name
       meta={
           contentType:file.type
        }
       task=ref.child(name).put(file,meta);
       task.then(snap=>snap.ref.getDownloadURL()).then(url=>{
    	   var img=document.createElement("img")
    	   img.src=url
    	   img.style.width="100%"
    	   img.style.height="100%"
    	   var cs=document.getElementById("im").childNodes
    	document.getElementById("im").removeChild(document.getElementById("star"))
         document.getElementById("im").appendChild(img)
        document.getElementById("imin").value=url
       })
     }
  function proc(){
	  document.getElementById("inpu").click()
	  console.log(document.getElementById("inpu"))
  }
 function run(){
	  submit()
  }
 function val(e){
	 var email=document.getElementById("email").value
	 fetch("validate?email="+email).then(res=>res.text()).then(data=>{
		 if(data=="true"){
			 document.getElementById("email").style.border="1px solid red";
		     document.querySelector(".first").disabled=true
		 }
		 else{
			 document.getElementById("email").style.border="1px solid #e3e6ea";
			 document.querySelector(".first").disabled=false
		 }
	 })
 }
 setTimeout(()=>{console.clear()},1000)
 
 $(document).on('keyup keypress', 'form input[type="text"]', function(e) {
  if(e.which == 13) {
    e.preventDefault();
    return false;
  }
});
</script>
<script>
  function next(e){
	   document.getElementById(e.srcElement.parentElement.id).style.marginLeft="-60vw";
	   
  }
  function next1(e){
	  var k=document.getElementById("scat")
	   if(k.value != "Select Category"){
	   document.getElementById(e.srcElement.parentElement.parentElement.id).style.marginLeft="-60vw";
	   }
	   else{
		   k.style.border="1px solid red"
	   }
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
  function calend(e){
	  if(e.checked==true){
		  document.getElementById("calendly").style.visibility="visible";
		  document.querySelector("#butt").disabled=true
	  }
	  else{
		  document.getElementById("calendly").style.visibility="hidden";
		  document.querySelector("#butt").disabled=false
	  }
  }
  function cal(){
	  if(document.getElementById("calendly").value.length > 6){
		  document.querySelector("#butt").disabled=false
	  }
	  else{
		  document.querySelector("#butt").disabled=true
	  }
  }
  function move(e){
	  var email=document.getElementById("email").value
	  if(email!="" && email !=null){
		  document.getElementById(e.srcElement.parentElement.id).style.marginLeft="-60vw";
		   
	  } 
  }
  function ck(){
		console.log(document.getElementById("calen").value)
		  if(eval(document.getElementById("calen").value))
		  {
			  document.getElementById("calendly").style.visibility="visible";
		  }
		  else{
			  document.getElementById("calendly").style.visibility="hidden";
			 
		  }
	}
</script>
<%@include file="header2.jsp" %>
<% 
    if(request.getSession().getAttribute("name") ==null || request.getSession().getAttribute("user") ==null ){
    	response.sendRedirect("login.jsp");
    }
 
 %>
<% Mentor m=(Mentor)request.getSession().getAttribute("user"); %>
<div id="pg">
  <div id="signup">
   <div >
  <p class="infor">Join today</p>
  <form   method="post" action="updateuser"  id="form">
  <div class="container">
   <div class="coni" id="it">
        <div>
         <p class="lab">Name</p>
          <input type="text" name="name" autocomplete="off" class="inputs" value="<%=m.getName()%> ">
       </div>
      <div>
        <p class="lab" style="display:none;">Email</p>  
        <input type="hidden" name="email" autocomplete="off" class="inputs" id="email" value="<%=m.getemail()%>" >
      </div>
       <div>
         <p class="lab">Password</p>
          <input type="password" name="password" autocomplete="off" class="inputs" id="pa" value="<%=m.getPass() %>">
       </div>
           <button class="inputs first" id="bu" type="button" onclick="move(event)">Next</button>     
   </div>
   
    <div class="coni" id="it1">
       <div>
         <p class="lab">Category</p>
           <select  name="category"  class="inputs" id="scat" required style="width:290px;padding:5px;">
            <option >Select Category</option>
             <% 
            catMain cm=new catMain();
            ArrayList<category> cats=cm.getCat();
           %>
           <%
           for(category i :cats){
           	 String t= i.getCat();
              %>
            <option value="<%=t%>"><%=t%></option>
            <%} %>
          </select>
       </div>
       <div>
        <p class="lab">Profession</p>  
        <input type="text" name="profession" autocomplete="off" class="inputs" id="em" value="<%=m.getProfession() %>">
       </div>
       <div>
         <p class="lab">Company / College</p>
          <input type="text" name="company" autocomplete="off" class="inputs" value="<%=m.getCompany() %>">
       </div>
       <div>
           <button class="newc"
            type="button" onclick="back2(event)">Back</button>
          <button class="inputs  extr" id="bu" type="button" onclick="next1(event)">Next</button>
       </div>
        
      </div>
      
      
     <div  class="coni" id="it2">
       <div>
         <input type="file" id="inpu" style="visibility:hidden;" onchange="run()" >
         <div id="im">
              <p onclick="proc()" style="cursor:pointer;" id="star">Change photo</p>
         </div>
       </div>
       <input type="text" name="image" id="imin" style="visibility:hidden;" value="<%=m.getImage()  %>">
       <div id="menin" style="margin-bottom:10px;">
          <div class="lab">Do you want to be mentor ?</div>
          <div>
          <% if(m.getMentor().equals("true")) { %>
             <input type="checkbox" name="mentor" onchange="calend(this)" id="calen" autocomplete="off" class="men" value="true" checked>
          <%} else{ %>
             <input type="checkbox" name="mentor" onchange="calend(this)" id="calen" autocomplete="off" class="men" value="false">
          <%} %>
          </div>
       </div>
       <div>
          <input type="text" name="calendly" autocomplete="off" class="inputs" id="calendly" placeholder="Calendly link" oninput="cal()" onchange="cal()" value="<%=m.getCalendly() %>">
       </div>
       <div>
           <button class="newc" type="button" onclick="back(event)">Back</button>
           <button class="inputs extr" id="butt" type="button" onclick="nextc(event)">Next</button>
        </div>
     </div>
     
     <div  class="coni" id="it3">
        <div>
        <p class="lab">Languages</p>  
        <input type="text" name="language" autocomplete="off" class="inputs" value="<%=m.getLang() %>" >
        </div>
         <div>
        <p class="lab">Social media link</p>  
        <input type="text" name="social" autocomplete="off" class="inputs" value="<%=m.getSocial() %>">
        </div>
        <div>
        <p class="lab">About you</p>  
        <input type="text" name="about" autocomplete="off" class="inputs"  style="margin-bottom:5px;height:90px" value="<%=m.getAbout() %>">
       </div>
       <div>
           <button class="newc" type="button" onclick="back3(event)">Back</button>
           <button class="inputs extr" id="bu" type="submit" >Update</button>
        </div>
     </div>
     
    </div>
  </form>
</div>
</div>
</div>
<script>
ck()
</script>
</body>
</html>