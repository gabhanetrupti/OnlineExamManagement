<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO1" class="myPackage.DatabaseClass" scope="page"/>
<!DOCTYPE html>
<html>
<head>
	<title>Let's Transform || Question</title>  
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
	<div class="row">   
			<div class="col-xl-4">
            	<div class="card">
            		<form action="adm-page.jsp">
	                    <div class="card-header">
	                         <h5>Show Questions</h5>
	                    </div>
	                    <div class="form-group">
	                    <br>
	                        <label for="exampleFormControlSelect1">&nbsp&nbsp Select Course</label>
	                        <input type="hidden" name="pgprt" value="4">
	                        <select name="coursename" class="form-control">
		                        <% 
						            ArrayList list1=pDAO.getAllCourses();
						            
						            for(int i=0;i<list1.size();i=i+2){
						        %> 
	                            <option value="<%=list1.get(i)%>"><%=list1.get(i)%></option>  
								<%
	            					}
	            				%>                        
	                        </select>
	                    </div>
	                    <br>
	                    <center><button type="submit" class="btn_1 btn-primary">Show</button></center><br>
                    </form>
                </div>
            </div>			
            <div class="col-xl-8">
            	<div class="card">
                    <div class="card-header">
                         <h5>Add New Question</h5>
                    </div>
                    <form action="controller.jsp" style="padding-top: 30px;">
	                    <div class="input-group input-group-lg">
	                        <div class="input-group-prepend">
	                            <span class="input-group-text" id="inputGroup-sizing-lg">Course Name</span>
	                        </div>
	                        <select name="coursename" class="form-control" id="exampleFormControlSelect1">
	                        <% 
					            ArrayList list=pDAO.getAllCourses();
					            
					            for(int i=0;i<list.size();i=i+2){
					        %>
	                        <option value="<%=list.get(i)%>"><%=list.get(i)%></option>
	                        <%
	            				}
	           			 	%>
	                        </select>
	                    </div>
	                    <br>
	                    <div class="input-group input-group-lg">
	                        <div class="input-group-prepend">
	                            <span class="input-group-text">Enter Question</span>
	                        </div>
	                        <textarea name="question" class="form-control" placeholder="Type question here" rows="3" required></textarea>
	                    </div>
	                    <br>
	                    <div class="input-group input-group-lg">
	                        <div class="input-group-prepend">
	                            <span class="input-group-text">Options</span>
	                        </div>
	                        <div>
	                        
	                        <input type="text" name="opt1" class="form-control" placeholder="Enter First Option" style="width: 560px;" required>  
	                        <input type="text" name="opt2" class="form-control" placeholder="Enter Second Option" style="width: 560px;" required>
	                        <input type="text" name="opt3" class="form-control" placeholder="Enter Third Option" style="width: 560px;" required>
	                        <input type="text" name="opt4" class="form-control" placeholder="Enter Fourth Option" style="width: 560px;" required> 
	                        </div>                          
	                    </div>
	                    <br>
	                    <div class="input-group input-group-lg">
	                        <div class="input-group-prepend">
	                            <span class="input-group-text">Correct Answer</span>
	                        </div>
	                        <input type="text" name="correct" class="form-control" placeholder="Enter Correct Answer" style="width: 560px;" required> 
	                    </div>
	                    <br>
	                    <input type="hidden" name="page" value="questions">
	                    <input type="hidden" name="operation" value="addnew">
	                    <center><button type="submit" class="btn_1 btn-primary">Add</button></center>
	                    <br>
                    </form>
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