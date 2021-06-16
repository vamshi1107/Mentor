<%@ page import="java.util.ArrayList" %>
<html>
<body>

<style typle="text/css">
@import url('https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,800;1,400;1,700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Newsreader:wght@200&display=swap');
  header{
    height:70px;
    border:1px solid grey;
    position:fixed;
    left:0px;
    top:0px;
    width:100vw;
    display:flex;
    flex-direction:row;
    justify-content:space-between;
    bottom:80px;
    background-color:white;
  }
  .name{
   padding:0px;
    margin-top:-15px;
    margin-left:40px;
    font-size:2rem;
    cursor:pointer;
    font-family: 'Newsreader';
    font-weight:bolder;
  }
  .but{
    align-self:center;
    width:105px;
    height:45px;
    border-radius:10px;
    margin-top:10px;
     margin-bottom:10px;
    margin-left:15px;
    border:1px solid grey;
    font-family: 'Nunito', sans-serif;
  }
  .btngrp{
  display:flex;
  flex-direction:row;
   margin-right:5vw;
  }
  #log{
  background-color:#FFFFFF;
  }
  #log:focus,:active{
    outline:none;
  }
  #sig:focus,:active{
    outline:none;
  }
  #log:hover{
  background-color:#000000;
  color:#FFFFFF;
  }
   #log:hover > #fp{
  background-color:#000000;
  color:#FFFFFF;
  }
  #sig:hover{
  background-color:#077f7f;
  color:#FFFFFF;
  box-shadow:0px 1px 90px 2px grey;
  }
  #sig{
    background-color:#000000;
    color:#FFFFFF;
    margin-left:20px;
  }
  #fm{
   align-self:center;
   text-decoration:none;
   font-family: 'Nunito', sans-serif;
   color:#000000;
  }
  a{
   text-decoration:none;
   color:#000000;
  }
  #fp{
    color:#000000;
    align-items:center;
  }
  .name{
   text-decoration:none;
  }
</style>

<header>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
if ( window.history.replaceState ) {
  window.history.replaceState( null, null, window.location.href );
}

function home(){
	window.location.href="page.jsp"
}

</script>
<a href="page.jsp" style="text-decoration:none;">
<div class="name">
<p>Mentor</p>
</div>
</a>
<div class="btngrp">
<script src="file.js">
  window.location.reload()
</script>

 <a href="mentors?cat=all" id="fm">Find a mentor</a>
 <% String log="";
 Boolean can=false;
 log=(String)request.getAttribute("login"); 
 if(log==null){
	 can=false;
 }
 else{
	 can=true;
 }
 %>
 
 <%
 Cookie l=null;
 Cookie[] c=request.getCookies();
 if(c!=null){
 for (Cookie k:c){
	 if(k.getName().equals("login")){
		 l=k;
	 }
 }
 }
 
if(l!=null){
 if(!l.getValue().equals("true")){
 %>
 <a id="fp" href="login.jsp"><button class="but" id="log" onclick="init()" href="login.jsp">Login</button></a>
 <a id="fp" href="details.jsp"><button  class="but" id="sig" onclick="init()" href="details.jsp">Signup</button></a>
 <% 
 } 
}
else{
	%>
	<a id="fp" href="login.jsp"><button class="but" id="log" onclick="init()" href="login.jsp">Login</button></a>
 <a id="fp" href="details.jsp"><button  class="but" id="sig" onclick="init()" href="details.jsp">Signup</button></a>
	<%
}
 %>
 
 <%
 String nm="Login";
 if(l!=null){
 if(l.getValue().equals("true") && l!=null  ) {
	 String s=(String)request.getSession().getAttribute("name");
	 if(s!=null && request.getSession().getAttribute("user")!=null){
		 String k[]=s.split(" ");
	     nm=k[0];
	 }
 %>
 <div id="fp">
  <a href="user"><button class="but" id="log"  href="user"><%=nm%></button></a>
 </div>
 
 <%
 }
 }
 %>
</div>
</header>
</body>
</html>
