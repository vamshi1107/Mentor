<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
@import url('https://fonts.googleapis.com/css2?family=Newsreader:wght@200&display=swap');
</style>
<style typle="text/css">
@import url('https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,800;1,400;1,700&display=swap');

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
   text-decoration:none;
  }
  .name{
   padding:0px;
    margin-top:-15px;
    margin-left:40px;
    font-size:2rem;
    cursor:pointer;
  }
  .but{
    width:105px;
    height:45px;
    border-radius:10px;
    margin-top:10px;
     margin-bottom:10px;
    margin-left:15px;
    border:1px solid grey;
    font-family: 'Nunito', sans-serif;
   font-size:14px;
  }
  .btngrp{
   margin-right:5vw;
  }
   #lou{
  background-color:#FFFFFF;
  }
  #lou:focus,:active{
    outline:none;
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
   #lou:hover{
  background-color:#000000;
  color:#FFFFFF;
  }
   #log:hover > a{
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
  #na{
   text-decoration:none;
   color:#000000;
     padding:0px;
    margin-top:20px;
    margin-left:0px;
    font-size:2rem;
    cursor:pointer;
  }  
</style>

</head>
<body>
<header>
<a href="page.jsp" id="na" style="text-decoration:none;margin-top:25px;color:#000000;font-family: 'Newsreader', serif;font-weight:bolder;">
<div class="name">
<p href="page.jsp">Mentor</p>
</div>
</a>
<div class="btngrp">
<script src="file.js">

</script>

 <a href="page.jsp"><button class="but" id="lou"  >Home</button></a>
 <a href="logout"><button class="but" id="log" >Logout</button></a>
</div>
</header>
</body>
</html>