<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mentor.Mentor" %>
<%@ page import="com.mentor.linker" %>

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

<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">
      About
    </button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">
        <%if(m.getMentor().equals("true")){ %>
           Mentees
        <%}else{ %>
           Mentors
        <%} %>
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
  <style>
    .im{
      height:60px;
      width:60px;
      border-radius:30px;
      overflow:hidden;
    }
    .lk{
      display:flex;
      flex-direction:row;
      justify-content:space-between;
    }
    .ilm{
      align-self:center;
      font-family:'Nunito', sans-serif;
    }
    .ico{
      
      width:auto;
    }
    .i_con{
      margin-left:35vw;
      display:flex;
      justify-self:flex-end;
      width:auto;
    }
    a{
      text-decoration:none;
      color:#000000;
    }
    #lg{
      overflow-y:auto;
    }
  </style>
  <script>
    function rm(u,v,men){
    	var v="remel?e1="+u+"&e2="+v+"&what="+men
    	fetch(v).then(res=>res.text()).then(data=>{
    		setTimeout(()=>{}
    		,2000)
    		window.location.reload()
    })
    }
  </script>
   <%
   ArrayList<Mentor> am=null;
   linker lk=new linker();
   am=lk.getLinked(m.getemail(),m.getMentor());
  %>
         <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
               <div class="list-group" style="margin-top:25px;" id="lg">
               <%if(am.size()>0){ %>
                <%for(Mentor j:am){ %>
                      <div  class="list-group-item list-group-item-action" style="width:40vw;display:flex;flex-direction:auto;justify-content:space-between;" title="<%=j.getCategory() %>">
                      <a href="profile?user=<%=j.getemail()%>" >
                      <div class="lk" style="width:23vw;display:flex;flex-direction:auto;justify-content:space-between;">
                        <div class="im">
                           <img src="<%=j.getImage()%>" height="100%" width="100%" >
                        </div>
                        <span class="ilm"></span>
                        <span class="ilm">  <%=j.getName() %> </span>
                      </div>
                      </a> 
                      <div style="margin-top:15px;" title="remove">
                      <svg class="ico" onclick="rm('<%=m.getemail() %>','<%=j.getemail()%>','<%=m.getMentor() %>')" xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-person-x-fill" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6.146-2.854a.5.5 0 0 1 .708 0L14 6.293l1.146-1.147a.5.5 0 0 1 .708.708L14.707 7l1.147 1.146a.5.5 0 0 1-.708.708L14 7.707l-1.146 1.147a.5.5 0 0 1-.708-.708L13.293 7l-1.147-1.146a.5.5 0 0 1 0-.708z"/>
                     </svg>
                     </div>
                      </div>
                 <%}}
               else{ %>
                 <%if(m.getMentor().equals("true")){ %>
                  <a href="#" class="list-group-item list-group-item-action" style="width:40vw;">
                      No mentees found
                     </a>
                 <%}else{ %>
                   <a href="mentors?cat=all" class="list-group-item list-group-item-action" style="width:40vw;">
                      Add Mentors
                 <%} %>
                  </a>
                  <%} %>
               </div>
            </div>
  
 
</div>
</body>
</html>