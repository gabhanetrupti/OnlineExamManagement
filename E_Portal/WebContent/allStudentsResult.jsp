<%@page import="myPackage.Answers"%>
<%@page import="myPackage.Exams"%>
<%@page import="myPackage.Questions"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO1" class="myPackage.DatabaseClass" scope="page"/>
<!DOCTYPE html>
<html>
<head>
	<title>Let's Transform || StudentResult</title>  
	<!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Datta Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
    <meta name="keywords" content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template, free admin theme, free dashboard template"/>

    <!-- Favicon icon -->
    <link rel="icon" href="images/app/favicon.ico" type="image/x-icon">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="css/fontawesome-all.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="css/animate.min.css">
    <!-- morris css -->
    <link rel="stylesheet" href="css/morris.css">
    <!-- vendor css -->
    <link rel="stylesheet" href="css/style.css">    
   
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/datta-icon.css">
    <link rel="stylesheet" href="css/feather.css">
    <link rel="stylesheet" href="css/jquery.scrollbar.min.css">
    <link rel="stylesheet" href="css/profile.css">	   
</head>
<body>
<div>	 
	<!------------ Student Menu Start------------->
          <%@ include file="adm_dash.jsp" %> 
  	<!------------- Student Menu End-------------->
  	<!------------- Necessary start -------------->
		<div class="pcoded-main-container">
	        <div class="pcoded-wrapper">
	            <div class="pcoded-content">
	                <div class="pcoded-inner-content"> 
	<!------------- Necessary end --------------->
	
	<!------------- Content start --------------->
	<%
         System.out.println("In AllStudentsResult");
         if(request.getParameter("coursename")!=null){
            String c = (request.getParameter("coursename"));
            System.out.println("In AllStudentsResult Inner");
     %> 
     <input type="hidden" name="page" value="showAllresults">
	<div class="row">
		<div class="col-xl-12">
			<div class="card">
	            <div class="card-header">
	                 <h5>Students Result</h5>
	            </div>
	            <div class="card-block table-border-style">
                    <div class="table-responsive">
                         <table class="table table-hover">
                         <colgroup>
    						 <col class="oce-first">
    					 </colgroup>
                               <thead>
                                   <tr>
                                       <th>Name</th>
                                       <th>Date</th>
                                       <th>Course</th>
                                       <th>Time</th>
                                       <th>ObtainMarks</th>
                                       <th>Status</th>
                                       <th>Action</th>
                                   </tr>
                               </thead>
                               <tbody>
                               <%
			        				ArrayList list=pDAO.getAllResultByCourse_Name(c);
			            			/* ArrayList list=pDAO.getAllResultsFromExams(Integer.parseInt(session.getAttribute("userId").toString())); */
			            			for(int i=0;i<list.size();i++)
			            			{
			            				System.out.println("In AllStudentsResult Inner 2");
			                			Exams e=(Exams)list.get(i);
			            		%>
                                   <tr>                                        
                                        <td><%=e.getFirstName()+" "+e.getLastName() %></td>
                                        <td><%=e.getDate() %></td>
			            				<td><%=e.getcName() %></td>
			            				<td><%=e.getStartTime()+" - "+e.getEndTime()%></td>
			            				<td><%=e.getObtMarks() %></td>
			            				
			            				<% if(e.getStatus()!=null)
			            				{
			                				if(e.getStatus().equals("Pass"))
			                				{%>
			                					<td style="background: #00cc33;color:white"><%=e.getStatus()%></td>
			            					<% }
			                				else{%>
			            					
			            						<td style="background: #ff3333;color:white"><%=e.getStatus()%></td>
			            						<% }
			            						}else{%>
			            						<td style="background: bisque ;">Terminated</td>
			            						<% } %>
			            						<td><a href="adm-page.jsp?pgprt=7&eid=<%=e.getExamId()%>" style="color:blue;">Details</a></td>
                                   </tr>  
                                   <% 
			       							}
			      				   %>                                                      
                               </tbody>
                          </table>
                          <%
				            		}
				           %>
                    </div>
                </div>
	        </div>
		</div>
	</div>
	<!-------------- Content end ---------------->
	
	<!------------- Necessary start -------------->                	
	  				</div>
	  			</div>
	  		</div>
	  	</div>
	<!------------- Necessary end --------------->
</div>
</body>
</html>