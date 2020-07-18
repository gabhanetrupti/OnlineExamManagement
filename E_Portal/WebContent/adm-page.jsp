
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<!DOCTYPE html>
<html>
<head>
	<title>Let's Transform || Admin</title>
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
            //pgpart = pagepart, accounts=1,courses=2,questions=3 and profile is default
            if(request.getParameter("pgprt").equals("1")){
                
            %>
            
                <jsp:include page="accounts.jsp"/>
            
            <%
                
            }else if(request.getParameter("pgprt").equals("2")){
            
                %>
            
                <jsp:include page="courses.jsp"/>
                
                <%
                
            }else if(request.getParameter("pgprt").equals("3")){
                %>
            
                <jsp:include page="questions.jsp"/>
            <%
            }else if(request.getParameter("pgprt").equals("4")){// if( 4 == 4 )
                %>
            
                <jsp:include page="showall.jsp"/>
            <%
            }
            else if(request.getParameter("pgprt").equals("5")){
                %>
            
                <jsp:include page="allResults.jsp"/>
            <%
            }
            
            else if(request.getParameter("pgprt").equals("6")){
                %>
            
                <jsp:include page="adm_profile.jsp"/>
            <%
            }
			else if(request.getParameter("pgprt").equals("7")){
                
                %>
            
                <jsp:include page="adm_result.jsp"/>
                
                <%
                
            }
            else{
                %>
                       	<jsp:include page="adm_dash_c.jsp"/>
                      
            <%
            }
            %>
            
            <%
            }else response.sendRedirect("login.jsp");
            }else response.sendRedirect("login.jsp");
                %>
              

</body>
</html>