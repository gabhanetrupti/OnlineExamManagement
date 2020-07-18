<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Let's Transform || Student</title>
	<!-- Favicon icon -->
    <link rel="icon" href="images/app/favicon.ico" type="image/x-icon">
	</head>
<body>
<%
 	response.setHeader("Cache-Control" , "no-cache, no-store, must-revalidate");
 %>
    
    <%
            if(session.getAttribute("userStatus")!=null){
           if(session.getAttribute("userStatus").equals("1")){
            %>
            	
            <% 
            //pgpart = pagepart, exams=1,results=2 and profile is default
            if(request.getParameter("pgprt").equals("1")){
                
            %>
            
            <jsp:include page="exam.jsp"/>
            
            <%
                
            }else if(request.getParameter("pgprt").equals("2")){
            
                %>
            
                <jsp:include page="results.jsp"/>
                
                <%
                
            }else if(request.getParameter("pgprt").equals("6")){
            
                %>
            
                <jsp:include page="std_profile.jsp"/>
                
                <%
           
           }else if(request.getParameter("pgprt").equals("7")){
               
               %>
           
               <jsp:include page="study.jsp"/>
               
               <%
               
           }
            
            else{
                %>
            
                <jsp:include page="std_dash_c.jsp"/>
            
            <%
            }
            %>
            
            <%
           }else response.sendRedirect("login.jsp");
            }else response.sendRedirect("login.jsp");
            
          
           %>
            
           </body>
</html>



