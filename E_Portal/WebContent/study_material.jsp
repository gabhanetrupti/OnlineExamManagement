<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>

<%@page import="myPackage.Courses"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="pDAO1" class="myPackage.DatabaseClass" scope="page"/>
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
	<% 		
		Courses c = pDAO1.getCourseDetails(request.getParameter("coursename").toString());
		
		if(request.getParameter("coursename")!=null){
			String c_name = (request.getParameter("coursename"));
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =   DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_system","root","root");
			Statement stt = conn.createStatement();
			String c_sql = "select * from courses where course_name=" + c_name + "";
			ResultSet rst = stt.executeQuery(c_sql);
			while(rst.next()){
				String course_pdf = rst.getString("c_pdf");
				String course_audio = rst.getString("c_audio");
				String course_video = rst.getString("c_video");
     %>
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
                            <!-- <div class="row"> -->
                            <div class="col">
                            	<div class="col-xl-12 col-md-12">
                                    <div class="card Recent-Users">
                                        <div class="card-header">
                                            <h5>Video Class</h5>
                                        </div>
                                        <div class="card-block px-0 py-3">
                                            <div class="table-responsive">                                                
                                                <center><video width="800" controls>
													<source src="Course/video/<%=course_video%>" type="video/mp4">														  
													Your browser does not support HTML video.
												</video></center>                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-xl-12 col-md-12">
                                    <div class="card Recent-Users">
                                        <div class="card-header">
                                            <h5>Audio Class</h5>
                                        </div>
                                        <div class="card-block px-0 py-3">
                                            <div class="table-responsive">
                                                <center>                                            
                                                <audio controls>
													<source src="Course/audio/<%=course_audio%>" type="audio/ogg">														  
													Your browser does not support the audio element.
												</audio>  
												</center>                                              
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                               
                                <div class="col-xl-12 col-md-12">
                                    <div class="card Recent-Users">
                                        <div class="card-header">
                                            <h5>Read</h5>
                                        </div>
                                        <div class="card-block px-0 py-3">
                                            <div class="table-responsive">                                                
                                                <iframe src="Course/doc/<%=course_pdf%>" type="pdf" width="100%" height="500px">
    											</iframe>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                           <!--  </div> -->
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
 <%
		}
	}catch(Exception e){
		System.out.println(e);
	}
		}
%>   
</body>
</html>