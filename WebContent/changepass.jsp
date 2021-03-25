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
  #two{
    display:none;
  }
  .tfi{
    display:flex;
    flex-direction:column;
  }
</style>
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
<script>
function val(e){
	 var email=document.getElementById("email").value
	 fetch("validate?email="+email).then(res=>res.text()).then(data=>{
		 if(data=="true"){
			 document.getElementById("email").style.border="1px solid #e3e6ea";
			 document.querySelector("#btp").disabled=false
		 }
		 else{
			 document.getElementById("email").style.border="1px solid red";
		     document.querySelector("#btp").disabled=true
		 }
	 })
}
 var otp;
 function send(e){
	 var one=document.getElementById("one")
	 var two=document.getElementById("two")
	 var email=document.getElementById("email").value
	 document.querySelector("#btp").disabled=true
	 otp=Math.floor(100000 + Math.random() * 900000)
	 var url="http://localhost:1107/otp/"+email+"/"+otp
     fetch(url).then(res=>res.text()).then(data=>{4
    	    console.log(data)
    		if(data=="true"){
    			 two.style.display="flex"
    			 two.style.flexDirection="column"
    			 one.style.display="none"
    		}
    		else{
    			alertify.error("Unable to sent")
    		}
    	})
	     
 }
 function ver(e){
	 var v=document.getElementById("verify").value
	 if(v!="true"){
		 e.preventDefault()
		 console.log("verify")
	 }
}	

function validate(e){
	 var o=document.getElementById("otp").value
	 var form=document.getElementById("vform")
	 if(o==otp){
		 document.getElementById("verify").value="true"
		 form.submit()
	 }
	 else{
		 window.location.reload()
	 }
}
</script>
<body>
<%@include file="plainheader.jsp" %>
<div class="con">
 <div id="one">
  <form action="forgotpass" method="post" autocomplete="off" id="vform" onsubmit="ver(event)">
   <div class="lab" style="margin-bottom:15px;">Enter email</div>
   <div>
     <input type="text" class="inputs" id="email" name="email" required onchange="val(event)" oninput="val(event)">
     <input type="hidden" name="verify" value="false" id="verify">
   </div>
   <div class="dcon">
     <button class="inputs bu" id="btp" onclick="send(event)">Send OTP</button>
   </div>
   </form>
 </div>
 <div id="two">
    <div class="lab" style="margin-bottom:15px;">Enter OTP</div>
   <div>
     <input type="password" class="inputs" id="otp" required onchange="val(event)">
   </div>
   <div class="dcon">
     <button class="inputs bu" id="bver" onclick="validate(event)">Verify OTP</button>
   </div>
 </div>
</div>
</body>
</html>