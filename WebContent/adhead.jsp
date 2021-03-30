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
 <a id="fp" href="logout"><button class="but" id="log" onclick="init()">Logout</button></a>
</div>
</header>
</body>
</html>
