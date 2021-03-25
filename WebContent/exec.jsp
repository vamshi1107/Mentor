<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mentor.topMentors" %>
<%@ page import="com.mentor.Mentor" %>


<div>
<style>
        @font-face {
            font-family: sui-light;
            src:
                local("Segoe UI Light"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/light/latest.woff2) format("woff2"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/light/latest.woff) format("woff"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/light/latest.ttf) format("truetype");
            font-weight: 100;
        }

        @font-face {
            font-family: sui-semi-light;
            src:
                local("Segoe UI Semilight"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/semilight/latest.woff2) format("woff2"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/semilight/latest.woff) format("woff"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/semilight/latest.ttf) format("truetype");
            font-weight: 200;
        }

        @font-face {
            font-family: sui;
            src:
                local("Segoe UI"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/normal/latest.woff2) format("woff2"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/normal/latest.woff) format("woff"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/normal/latest.ttf) format("truetype");
            font-weight: 400;
        }

        @font-face {
            font-family: sui-bold;
            src:
                local("Segoe UI Bold"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/bold/latest.woff2) format("woff2"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/bold/latest.woff) format("woff"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/bold/latest.ttf) format("truetype");
            font-weight: 600;
        }

        @font-face {
            font-family: sui-semi-bold;
            src:
                local("Segoe UI Semibold"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/semibold/latest.woff2) format("woff2"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/semibold/latest.woff) format("woff"),
                url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/semibold/latest.ttf) format("truetype");
            font-weight: 700;
        }

    </style>

<style>
@import url('https://fonts.googleapis.com/css2?family=Ubuntu:wght@500&display=swap');
</style>
<style>
 .con{
   width:90vw;
   margin-top:60px;
   margin-left:auto;
   margin-right:auto;
   height:500px;
   display:flex;
   flex-direction:row;
   padding-left:10px;
   padding-top:20px;
   overflow-x:auto;
   scroll-behavior: smooth;
 }
 .item{
    border-radius:10px;
    max-height:430px;
    min-width:300px;
    margin:10px;
    overflow:hidden;
    background-size:100% 100%;
 }
 .imp{
   position:relative;
   filter:brightness(98%)
 }
 .imp:hover{
   
 }
 .con::-webkit-scrollbar{
   width:0px;
  }
   #detail{
   position:relative;
   display:block;
   margin-left:12px;
   margin-right:auto;
   margin-top:270px;
   padding:10px;
   color:#FFFFFF;
   text-weight:bold;
   text-shadow: 2px 2px 10px white;
    font-family: 'sui-semi-bold';
   }
   
   #name{
   font-size:1.2rem;
   font-family: 'sui-semi-bold';
   text-transform:capitalize;
   }
   .ik{
        height:430px;
        width:300px;
        position:relative;
        border-radius:10px;
       
   }
   #det{
      margin-top:-433px;
      z-index:100;
   }
   #im{
    z-index:-1;
   }
   .item:hover  #det{
     filter:brightness(105%);
     background-image:linear-gradient(360deg,#000000,#f3f2f200);
   }
   .aitem:hover > #im{
     filter:brightness(95%);
   }
   .aitem:hover > #det{
     filter:brightness(105%);
   }
   #em{
     display:none;
   }
   
</style>

<%
ArrayList<Mentor> al=new ArrayList<Mentor>();
 
if(request.getAttribute("mentors")!=null){
	al= (ArrayList<Mentor>) request.getAttribute("mentors");
}
else{
	topMentors t= new topMentors();
	al=t.getList();
}
%>

<div class="con">
 <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
  AOS.init();
</script>
 <script>
 function check(event){
 d=document.cookie
 v=d.split(";")
 conks=[]
 stop=true
 v.forEach((x)=>{conks.push(x.split("="))})
 em=document.getElementById("em").innerHTML
 if(em.length<=4){
	 console.log(em)
	 event.preventDefault()
 }
 else{
 for(let i of conks){
	 if(i[0].replace(" ","")==="login"){
		 stop=false
		 if(i[1]==="false"){
			 event.preventDefault()
			 alertify.error("Please Login to View");
		 }
	 }
  }
 if(stop){
	 event.preventDefault()
	 alertify.error("Please Login to View");
 }
 }
 }
 </script>
  <%
  for(Mentor i : al) {
  %>
  <div class="item" >
  <a href="profile?user=<%=i.getemail()%>" class="aitem" onclick="check(event)">
    <div class="ik" id="im">
        <img class="imp" height=100% width=100% src=<%=i.getImage() %> style="background-color:black;">
        <p id="em"><%=i.getemail() %></p>
    </div>
    
    <div class="ik" id="det">
       <div id="detail">
            <p id="name">
                <%=i.getName()%>
            </p>
            <p style="text-transform:capitalize;">
                <%=i.getProfession()%>
            </p>
             <p>
                <%=i.getCategory() %>
            </p>
       </div>
     </div> 
     </a>
  </div>
  <%
  }
  %>
</div>
</div>