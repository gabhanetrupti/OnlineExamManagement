<%@page import="myPackage.User"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="pDAO2" class="myPackage.DatabaseClass" scope="page"/>
<!DOCTYPE html>
<html>
<head>
	<title>Let's Transform || Study</title>  
	<!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Datta Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
    <meta name="keywords" content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template, free admin theme, free dashboard template"/>
   
	<meta http-equiv="ContentType" content="text/html; charset=UTF-8">

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
  <!-- CSS Files -->
  <link href="css/profile1/material-dashboard.min.css" rel="stylesheet">
  
</head>
<body>
	<div>
	<!------------ Student Menu Start------------->
          <%@ include file="std_dash.jsp" %> 
  	<!------------- Student Menu End-------------->
  	<!------------- Necessary start -------------->
		<div class="pcoded-main-container">
	        <div class="pcoded-wrapper">
	            <div class="pcoded-content">
	                <div class="pcoded-inner-content"> 
	<!------------- Necessary end --------------->
	
	<!------------- Content start --------------->	
	<div class="main-body">
                        <div class="page-wrapper">
                            <!-- [ Main Content ] start -->
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="card">
                                    <form action="study_material.jsp" enctype="multipart/form-data">
                                        <!-- <input type="hidden" name="page" value="study"> --> 
                        				<%-- <input type="hidden" name="utype" value="<%=user.getType()%>"> --%>
                                        <div class="card-header">
                                            <h5>Study</h5>                                            
                                        </div>
                                        <div class="card-body">
                                                                						
                                            <div class="row">
                                                <div class="col-md-12">
                                                 	 
								                      
								                      <label for="exampleFormControlSelect1">Select Course</label>
								                          <select name="coursename" class="form-control" style=" background-color: #efebf3; font-size: 17px;" title="Click" data-toggle="tooltip" required>
									                        <% 
													        	ArrayList list1=pDAO.getAllCourses();
													            
													            for(int i=0;i<list1.size();i=i+2){
													        %>
								                            <option value="<%=list1.get(i)%>"><%=list1.get(i)%></option>  
															<%
												                        }
												            System.out.println("In AllResults");
												            %>                       
								                         </select>   
                                                        
                                                  
                                                </div>                                               
                                            </div>
                                          
                                        </div>
                                        <center><button type="submit" value="Done" class="btn_1 btn-primary">Study Now</button></center><br>
                                        </form>
                                    </div>
                                    <!-- Input group -->
           
                                </div>
                            </div>
                            <!-- [ Main Content ] end -->
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