<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mentor.Mentor" %>
<%@ page import="com.mentor.linker" %>
<%@ page import="com.mentor.review" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
</head>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>

<style>
 .hspan{
   font-size:17px;
 }

 #rebu{
    font-family: 'Poppins', sans-serif;
    border:none;
    color:#000000;
    background-color:white;
    outline:none;
    font-size:15px;
    font-weight:bold;
  }
  #rebu:hover{
    color:#077f7f;
  }
  #rebu:focus,:active{
     outline:none;
  }
  .rw{
   visibility:hidden;
   display:none;
  }
  .reb{
     visibility:visible;
     display:flex;
  }
  #rew{
  height:40px;
  width:50px;
  background-color:white;
  outline:none;
  border:none;
  }
   #rew2{
  margin-top:15px;
  height:40px;
  width:50px;
  background-color:white;
  outline:none;
  border:none;
  }
   #em{
  display:flex;
  justify-content:flex-start;
  align-items:center;
  }
  #review{
    height:40px;
    width:20vw;
    border-radius:5px;
    border:2px solid grey;
    margin-left:8px;
  }
  .emin{
     width:70%;
     position:relative;
     height:180px;
     border-radius:30px;
     outline:none;
     margin-top:30px;
  }
 .emin::-webkit-scrollbar{
   width:0px;
 }
 .re_name{
   font-family: 'Poppins', sans-serif;
   font-weight:bold;
   margin-left:10px;
   text-decoration:none;
   color:black;
   width:50%;
 }
 .re_d{
   word-wrap:break-word;
   display:block;
   width:50%;
   text-decoration:none;
   color:black;
 }
</style>
<script type="text/javascript">
  function tog(){
	  document.querySelector(".rw").classList.toggle("reb")
  }
  function serew(men,us){
	  var rev=document.getElementById("review").value;
	  console.log(men,us,rev)
	  var url="sendreview?mentor="+men+"&user="+us+"&review="+rev
	  fetch(url).then(res=>res.text()).then(data=>{
		  if(data=="true"){
			 window.location.reload() 
		  }
		  else{
			  alertify.error("unable to send")
		  }
	  })
  }
</script>

<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">
      <span class="hspan">About</span>
    </button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">
      <span class="hspan">Reviews</span>
    </button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">
      Email
    </button>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
     <div id="about">
          <p id="abh">About</p>
          <div id="yh">
             <%=m.getAbout() %>
          </div>
          <div class="ext">
          <p id="exp"><span id="exph">my expertise   </span><span id="cat"><%=m.getCategory() %></span></p>
          <p id="exp"><span id="exph">I speak  </span><span id="cat"><%=m.getLang() %></span></p>
          </div>
        </div>
  </div>
   <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
    <div>
      <%if(!loguser.getMentor().equals("true")){ %>
      <div style="width:38vw;display:flex;justify-content:flex-end;margin:10px;">
      <button id="rebu" onclick="tog()">+ Review</button>
      </div>
      <%} %>
      <div class="rw">
        <input type="text" id="review">
        <button style="" id="rew" onclick="serew('<%=m.getemail()%>','<%=loguser.getemail()%>')">
          <img height="100%" width="100%" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUzNS41IDUzNS41IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MTIgNTEyIiB4bWw6c3BhY2U9InByZXNlcnZlIiBjbGFzcz0iIj48Zz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KCTxnIGlkPSJzZW5kIj4KCQk8cG9seWdvbiBwb2ludHM9IjAsNDk3LjI1IDUzNS41LDI2Ny43NSAwLDM4LjI1IDAsMjE2Ljc1IDM4Mi41LDI2Ny43NSAwLDMxOC43NSAgICIgZmlsbD0iIzBmYTA4MyIgZGF0YS1vcmlnaW5hbD0iIzAwMDAwMCIgc3R5bGU9IiIgY2xhc3M9IiI+PC9wb2x5Z29uPgoJPC9nPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjwvZz48L3N2Zz4=" />
        </button>
      </div>
    </div>
    <%
    linker ln=new linker();
    ArrayList<review> rs=ln.getReview(m.getemail());
    %>
    <div style="margin-top:20px;" id="revcon">
    <%
    if(rs.size()>0){	
    for(review i:rs){ %>
       <div  class="list-group-item list-group-item-action" style="width:40vw;display:flex;flex-direction:auto;justify-content:space-between;">
      <a class="re_name" href="profile?user=<%=i.getEmail()%>"> <%=i.getName() %></a>                
      <div class="re_d"><%=i.getReview() %></div>
       </div>
       <div style="height:5px;"></div>
    <%} 
    }else{ 
    %>
   <div class="accordion">
     No Reviews found
   </div>
    <%} %>
  </div>
  </div>
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
  <div id="em">
       <textarea class="emin"  id="emcon">
     </textarea>
      <button style="margin-left:20px;" id="rew2" onclick="sendEmail('<%=m.getemail()%>','<%=loguser.getemail()%>','<%=loguser.getName()%>')">
          <img height="100%" width="100%" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUzNS41IDUzNS41IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MTIgNTEyIiB4bWw6c3BhY2U9InByZXNlcnZlIiBjbGFzcz0iIj48Zz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KCTxnIGlkPSJzZW5kIj4KCQk8cG9seWdvbiBwb2ludHM9IjAsNDk3LjI1IDUzNS41LDI2Ny43NSAwLDM4LjI1IDAsMjE2Ljc1IDM4Mi41LDI2Ny43NSAwLDMxOC43NSAgICIgZmlsbD0iIzBmYTA4MyIgZGF0YS1vcmlnaW5hbD0iIzAwMDAwMCIgc3R5bGU9IiIgY2xhc3M9IiI+PC9wb2x5Z29uPgoJPC9nPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjwvZz48L3N2Zz4=" />
        </button>
  </div>
  </div>
</div>
 
<script>
    function sendEmail(to,from,name){
    	var msg=document.getElementById("emcon").value
    	var url="http://localhost:1107/sug/"+to+"/"+from+"/"+name+"/"+msg
    	fetch(url).then(res=>res.text()).then(data=>{
    		if(data=="true"){
    			document.getElementById("emcon").value=""
    			alertify.success("Email sent")
    		}
    		else{
    			document.getElementById("emcon").style.border="0px 0px 10px red";
    			alertify.error("Can't sent")
    		}
    	})
    	
    }
</script>
</body>
</html>