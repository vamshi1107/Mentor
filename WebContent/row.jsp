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
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Ubuntu:wght@500&display=swap');
</style>
<style>
 .con{
   width:90vw;
   margin-top:10px;
   margin-left:auto;
   margin-right:auto;
   height:300px;
   display:flex;
   flex-direction:column;
   overflow-y:auto;
   scroll-behavior: smooth;
   padding-left:0px;
 }

 .wel{
    text-align:left;
   font-size: 26px;
    font-weight: 600;
    width: 100%;
    line-height: 1.2;
    margin-bottom: 16px;
   font-family: 'sui-semi-bold';
   margin-top:10px;
   margin-bottom:10px;
   
 }
 .con::-webkit-scrollbar{
   width:0px;
  }
  .item{
    width:90%;
    display:flex;
    flex-direction:row;
    justify-content:space-between;
    min-height:50px;
    border:1px solid #000;
    margin-left:auto;
    margin-right:auto;
    margin-bottom:5px;
    border-radius:6px;
    align-items:center;
    padding-left:10px; 
    padding-right:10px; 
    flex-wrap:wrap;
  }
  .item > div{
    text-align:center;
    font-family:'sui-semi-bold';
    width:33%;
  }
  .lin:hover{
    color:#077f7f;
  }
  .item:hover{
    background-color:#fafafa;
  }
  .rk{
    display:flex;
    flex-direction:row;
    justify-content:space-between;
  }
  .remove{
    margin-right:30px;
    font-size:20px;
    cursor:pointer;
  }
  .wcon{
   width:90%;
   margin-left:auto;
   margin-right:auto;
   margin-bottom:20px;
   margin-top:20px;
   border:1px solid black;
   border-radius:20px;
   padding-left:10px;
   padding-right:10px;
   display:flex;
   justify-content:center;
   flex-direction:column;
   align-items:center;
   padding-bottom:10px;
  }
</style>
<script>
  AOS.init();
</script>
<script type="text/javascript">
  
  function remove(em){
	   c=confirm("Do you want to remove user ")
	   if(c){
		   console.log(em)
		   var url="removeuser?code=1107&email="+em;
		   fetch(url).then(res=>res.text()).then(data=>{
			   if(data=="true"){
				    alertify.success("Removed Successfully")
				    window.location.reload()
			   }
			   else{
				   alertify.error(" Unable Remove")
			   }
		   })
	   }
	   else{
		   alertify.error(" Unable Remove")
	   }
  }
 
</script>
<%

ArrayList<Mentor> mentors=new ArrayList<Mentor>();
topMentors t= new topMentors();
mentors=t.getList();

ArrayList<Mentor> students=new ArrayList<Mentor>();
students=t.getSt();

%>
<div class="wcon">
<div class="wel">Mentors</div>
<div class="con">
  <%
  for(Mentor i : mentors) {
  %>
   <div class="item">
      <div>
         <a href="details?user=<%=i.getemail()%>" class="lin">
           <%=i.getemail() %>
         </a>
      </div>
      <div>  
          <%=i.getName() %>
      </div>
      <div class="rk">
        <%=i.getCategory() %>
        <div class="remove" onclick="remove('<%=i.getemail() %>')">
           x
       </div>
      </div>
    </div>
  <%
  }
  %>
</div>
</div>
<div class="wcon">
<div class="wel">Students</div>
<div class="con">
  <%
  for(Mentor i : students) {
  %>
   <div class="item">
      <div>
         <a href="details?user=<%=i.getemail()%>" >
           <%=i.getemail() %>
         </a>
      </div>
      <div>  
          <%=i.getName() %>
      </div>
      <div class="rk">
        <%=i.getCategory() %>
         <div class="remove"  onclick="remove('<%=i.getemail() %>')">
           x
       </div>
      </div>
    </div>
  <%
  }
  %>
</div>
</div>
</div>