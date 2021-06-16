<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup</title>
<style>
  #signup{
    display:flex;
    margin-top:80px;
    width:100%;
    height:80vh;
    justify-content:center;
    align-items:center;
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
  }
  .logd{
    display:flex;
    flex-direction:column;
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
  .infor{
    text-align:center;
    font-family: 'Nunito', sans-serif;
    font-size:1.5rem;
  }
</style>
</head>
<body>
<script type="text/javascript">
function home(){
	window.location="http://localhost:1806/myMentor/page.jsp";
}


</script>
  <%@include file="header2.jsp" %>
  <div id="signup">
    <div >
  <p class="infor">Join today</p>
  <form  class="logd" method="post" action="signup"  autocomplete="off">
     <div>
         <p class="lab">Name</p>
          <input type="text" name="name" autocomplete="off" class="inputs" >
       </div>
      <div>
        <p class="lab">Email</p>  
        <input type="text" name="email" autocomplete="off" class="inputs" id="em">
      </div>
       <div>
         <p class="lab">Password</p>
          <input type="password" name="pass" autocomplete="off" class="inputs" id="pa">
       </div>
      <button type="submit" class="inputs" id="bu">Next</button>
  </form>
</div>
    
  </div>
</body>
</html>