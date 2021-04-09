<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
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
    font-weight:bold;
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
  }
  .btngrp{
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
  a{
   text-decoration:none;
   color:#000000;
  }
  .whole{
    display:flex;
    margin-top:80px;
    width:100%;
    height:80vh;
    justify-content:center;
    align-items:center;
  }
  .logd{
    display:flex;
    flex-direction:column;
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
  .lab{
    margin-top:10px;
    font-family: 'Nunito', sans-serif;
  }
  .infor{
    text-align:center;
    font-family: 'Nunito', sans-serif;
    font-size:1.5rem;
  }
  .cra{
   color:#077f7f;
   top:25px;
  }
  #suthi{
    font-family: 'Nunito', sans-serif;
    
  }
  #forp{
    color:black; 
     font-family: 'Nunito', sans-serif;
  }
  #forcon{
    width:100%;
    text-align:center;
    display:flex;
    justify-content:flex-start;
  }
</style>

</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
function home(){
	window.location="http://localhost:1806/myMentor/page.jsp";
}


</script>
<header>
<a href="page.jsp">
<div class="name">
<p >Mentor</p>
</div>
</a>
<div class="btngrp">
<script src="file.js">

</script>
 <a href="page.jsp"><button class="but" id="log"  >Home</button></a>
</div>
</header>
<div class="whole">
<div >
  <p class="infor">Add category</p>
  <form  class="logd" method="post" action="addc" autocomplete="off" >
      <div>
        <p class="lab">Name</p>  
        <input type="text"  name="name"  class="inputs" id="em" required>
      </div>
       <div>
         <p class="lab">URL</p>
          <input type="password" name="url" class="inputs" id="pa" required>
       </div>
      <button type="submit" class="inputs" id="bu">Add</button>
  </form>
</div>

</div>
</body>
</html>