<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mentor</title>
</head>
<style>
  .con{
      margin-top:100px;
      width:80vw;
      height:70vh;
      display:flex;
      justify-content:center;
      align-items:center;
      margin-left:auto;
      margin-right:auto;
  }
  .inputs{
    width:250px;
    height: 60px;
    outline: none;
    font-size: 16px;
    padding: 0 20px;
    border-radius: 10px;
    box-shadow: none!important;
    border: 1px solid #e3e6ea;
    background-color: #fafafa;
    margin-bottom:20px;
    margin-top:15px;
  }
  .lab{
    margin-top:10px;
    font-family: 'Nunito', sans-serif;
  }
  .bu{
    margin-top:25px;
    background-color:#000000;
    color:#ffffff;
    font-family: 'Nunito', sans-serif;
    margin-left:auto;
    margin-right:auto;
    transition-property:all;
    transition:2s linear ease;
  }
  .bu:hover{
    background-color:#077f7f;
    box-shadow:0px 3px 90px 2px grey;
  }
  .dcon{
    display:flex;
    justify-content:center;
  }
</style>
<body>
<%@include file="header2.jsp" %>
<div class="con">
 <div>
  <form action="updatepass" method="post">
   <div class="lab">Enter new password</div>
   <div>
   <%
     String s=request.getParameter("email");
     String ver=request.getParameter("verify");
     if(ver!=null){
     if(!ver.equals("true")){
    	 response.sendRedirect("changepass.jsp");
     }
     }
     else{
    	 response.sendRedirect("changepass.jsp");
         
     }
   %>
      <input type="hidden" name="email" value="<%=s %>">
     <input type="password" class="inputs" name="pass">
    </div>
    <div class="dcon">
     <button class="inputs bu" id="btp" >Change</button>
     </div>
   </form>
 </div>
</div>
</body>
</html>