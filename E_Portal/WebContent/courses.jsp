<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO1" class="myPackage.DatabaseClass" scope="page"/>
<!DOCTYPE html>
<html>
<head>
	<title>Let's Transform || Course</title>  
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
	<div class="row">   
			<div class="col-xl-6">
            	<div class="card">
                    <div class="card-header">
                         <h5>Register New Course</h5>
                    </div>
                    <form action="CourseUploadServlet" method="post" enctype="multipart/form-data">
                    <div class="card-block table-border-style">
                    	<div class="input-group input-group-lg">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-lg">Course Name</span>
                            </div>
                            <input type="text" name="coursename" placeholder="Enter course name" class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm" required>
                         </div>
                         <br>
                         <div class="input-group input-group-lg">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-lg">Total Marks</span>
                            </div>
                            <input type="text" name="totalmarks" placeholder="Enter total marks" class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm pattern="[1-9]{1}[0-9]*" title="Please enter valid Marks"  required">
                         </div>
                         <br>
                         <div class="input-group input-group-lg">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-lg">Exam Time</span>
                            </div>
                            <input type="text" name="time" placeholder="Enter time in minutes" class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm" pattern="[1-9]{1}[0-9]*" title="Please enter valid Time In Minutes"  required>
                         </div>
                         <br><hr><br>
                         <div class="input-group input-group-lg">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-lg">Course Doc</span>
                            </div>
                            <input type="file" name="doc" class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm" title="Please select a course pdf" required>
                         </div>
                         <br>
                         <div class="input-group input-group-lg">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-lg">Course Audio</span>
                            </div>
                            <input type="file" name="audio" class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm" title="Please select a course audio" required>
                         </div>
                         <br>
                         <div class="input-group input-group-lg">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-lg">Course Video</span>
                            </div>
                            <input type="file" name="video" class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm" title="Please select a course video" required>
                         </div>
                         <br>
                         <input type="hidden" name="page" value="courses">
                    	 <input type="hidden" name="operation" value="addnew">
                         <!-- <center><button type="submit" name="submit" class="btn_1 btn-primary">Add</button></center> -->
                         <center><button type="submit" value="Done" class="btn_1 btn-primary">Add</button></center><br>
                    </div>
                    </form>
                </div>
            </div>			
            <div class="col-xl-6">
            	<div class="card">
                    <div class="card-header">
                         <h5>Registered Courses</h5>
                    </div>
                    <div class="card-block table-border-style">
                    	<div class="table-responsive">
                    		<table class="table table-hover">
                    			<colgroup>
    								<col class="oce-first">
    							</colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th><center>Courses</center></th>
                                                            <th><center>Total Marks</center></th>
                                                            <th><center>Action</center></th>
                                                        </tr>
                                                    </thead>
                                                    <% 
											            ArrayList list=pDAO.getAllCourses();
											            for(int i=0;i<list.size();i=i+2){
											        %>
                                                    <tbody>
                                                        <tr>
                                                            <td><center><%=list.get(i)%></center></td>
                                                            <td><center><%=list.get(i+1)%></center></td>
                                                            <td><center>
                                                            	<a  href="controller.jsp?page=courses&operation=del&cname=<%=list.get(i)%>" 
													                onclick="return confirm('Are you sure you want to delete this ?');" class="del">
													                <div class="delete-btn" style="max-width: 40px;font-size: 17px; padding: 3px">X</div>
													            </a></center>
                                                            </td>
                                                        </tr>                                                       
                                                    </tbody>
                                                    <%
											            }
											         %>
                                                </table>
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