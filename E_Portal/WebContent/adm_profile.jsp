<%@page import="myPackage.User"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="pDAO2" class="myPackage.DatabaseClass" scope="page"/>
<!DOCTYPE html>
<html>
<head>
	<title>Let's Transform || Profile</title>  
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
	<%
        User user1=pDAO2.getUserDetails(session.getAttribute("userId").toString());
       
     %>
	 
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
	<div class="main-body">
                        <div class="page-wrapper">
                            <!-- [ Main Content ] start -->
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="card">
                                    <form action="ImageUploadServlet" method="post" enctype="multipart/form-data">
                                        <input type="hidden" name="page" value="profile"> 
                        				<input type="hidden" name="utype" value="<%=user.getType()%>">
                                        <div class="card-header">
                                            <h5>Edit Profile</h5>
                                            <%-- <div class="card-profile">
	                                            <div class="card-avatar">
	                  								<a href="javascript:;">
	                    								<!-- <img class="img" src="images/Velazquez.jpg"> -->
	                    								<img class="img" src="<%=request.getContextPath()%><%= user.getImage() %>"> 
	                    								<input type="file" name="image" class="feedback-input" required><br>
														<label class="file">Upload your passport size photo</label>

	                  								</a>
	                							</div>
                							</div> --%>
                                        </div>
                                        <div class="card-body">
                                            	<input type="hidden" name="page" value="profile"> 
                        						<input type="hidden" name="utype" value="<%=user.getType()%>">
                        						
                        						<div class="row">
                        						&nbsp&nbsp&nbsp&nbsp<label class="file">Profile Picture</label>
	                    						&nbsp<input style=" float: right;" type="file" name="file"> 
	                        					</div>
	                        					<br>
	                        					<hr>
	                        					
	                        					<p><input style="color:white" name="u_id" value="<%=user1.getUserId() %>"></p>
                        						
                                            <div class="row">
                                                <div class="col-md-6">
                                                
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">First Name</label>
                                                            <input type="text" name="fname" value="<%=user1.getFirstName() %>" class="form-control" aria-describedby="emailHelp" placeholder="Enter First Name" pattern="[A-Za-z]{1,32}" title="only alphabets" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Last Name</label>
                                                            <input type="text"  name="lname" value="<%=user1.getLastName() %>" class="form-control" placeholder="Last Name" pattern="[A-Za-z]{1,32}" title="only alphabets" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">User Name</label>
                                                            <input type="text" name="uname" value="<%=user1.getUserName() %>" class="form-control" placeholder="User Name" required disabled>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Email</label>
                                                            <input type="email" name="email" value="<%=user1.getEmail() %>" class="form-control" placeholder="Email" pattern="[a-zA-Z0-9!#$%&'*+\/=?^_`{|}~.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*" title="Contact's email (format: xxx@xxx.xxx)" TextMode="Email" validate="required:true" required disabled>
                                                        </div>
                                                  
                                                </div>
                                                <div class="col-md-6">
                                                    
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Contact No (optional)</label>
                                                            <input type="text" name="contactno" value="<%=user1.getContact() %>" class="form-control" placeholder="Contact No" pattern="[7-9]{1}[0-9]{9}" title="Please enter 10 digits valid Contact number">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Center Name</label>
                                                            <input type="text" name="city" value="<%=user1.getCity() %>" class="form-control" placeholder="Center Name" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Address</label>
                                                            <input type="text" name="address" value="<%=user1.getAddress() %>" class="form-control" placeholder="Address" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Choose a password</label>
                                                            <input type="password" name="pass" value="<%=user1.getPassword() %>" class="form-control" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                                                        </div>                                                                                                                                                                        
                                                    
                                                </div>
                                               
                                            </div>
                                          
                                          </div>
                                          <center><button type="submit" value="Done" class="btn_1 btn-primary">Submit</button></center><br>
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