<%@page import="myPackage.Answers"%>
<%@page import="myPackage.Exams"%>
<%@page import="myPackage.Questions"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO1" class="myPackage.DatabaseClass" scope="page"/>
<!DOCTYPE html>
<html>
<head>
    <title>Let's Transform || Dashboard</title>
    
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
          <%@ include file="std_dash.jsp" %> 
  	<!------------- Student Menu End-------------->
  	
  	<!------------- Necessary start -------------->
		<div class="pcoded-main-container">
	        <div class="pcoded-wrapper">
	            <div class="pcoded-content">
	                <div class="pcoded-inner-content"> 
	<!------------- Necessary end --------------->                 
		
		<!------------- Content start --------------->           
		<div class="row">
			<div class="col-md-6 col-xl-4">
				<div class="col-md-12 col-xl-12 b-bg_1">
                      <div class="row d-flex align-items-center">                       
                         <div class="text-right">
                              <p class="m-b-0">Take a <br><h1>Exam</h1></p> 
                             <br>                             
                             <a href="std-page.jsp?pgprt=1" class="nav-link "><span class="pcoded-micon"><i class="feather icon-edit"></i></span>&nbsp<span class="pcoded-mtext">Start now</span></a>
                         </div>
                      </div>
                      <div class="progress m-t-30" style="height: 7px;">
                         <div class="progress-bar progress-c-theme" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                                         
	                <div class="absolute1">
	                	<img src="images/app/exam_pic.png">
	                </div>	                
                </div>
                
            </div>
            
            <div class="col-md-6 col-xl-4">
				<div class="col-md-12 col-xl-12 b-bg_2">
                      <div class="row d-flex align-items-center">                       
                         <div class="text-right m-b-0">
                              <p class="m-b-0">Online<br><h1>Study</h1></p> 
                             <br>
                             <a href="std-page.jsp?pgprt=7" class="nav-link "><span class="pcoded-micon"><i class="feather icon-target"></i></span>&nbsp<span class="pcoded-mtext">Study&nbspnow</span></a>
                         </div>
                      </div>
                      <div class="progress m-t-30" style="height: 7px;">
                         <div class="progress-bar progress-c-theme" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                                         
	                <div class="absolute2">
	                	<img src="images/app/study_pic.png">
	                </div>	                
                </div>
                
            </div> 
            <div class="col-md-6 col-xl-4">
				<div class="col-md-12 col-xl-12 b-bg_6">
                      <div class="row d-flex align-items-center">                       
                         <div class="text-right m-b-0">
                              <p class="m-b-0">See all<br><h1>&nbspResults</h1></p>
                             <br>
                             <a href="std-page.jsp?pgprt=2" class="nav-link "><span class="pcoded-micon"><i class="feather icon-award"></i></span>&nbsp<span class="pcoded-mtext">See now</span></a>
                         </div>
                      </div>
                      <div class="progress m-t-30" style="height: 7px;">
                         <div class="progress-bar progress-c-theme" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                                         
	                <div class="absolute2">
	                	<img src="images/app/results_pic.png">
	                </div>	                
                </div>
                
            </div>
            
                  
   		</div>     
   		
   		<br>
   		<div class="row">
   			<div class="col-xl-12">
            	<div class="card">
            	<form action="std_dash_c_r.jsp">
                    <div class="card-header">
                          <h5>Top 11 List</h5>
                          
	                      <input type="hidden" name="pgprt" value="5">
	                      <button style="float:right; margin-top: .5rem; margin-left: .5rem;" type="submit" class="btn btn-primary">Select Course</button>
	                      <!-- <label style="float:right; margin-top: .5rem;">&nbspSelect Course</label> -->
	                          <select name="coursename" class="form-control" style="max-width: 40px; background-color: #efebf3; font-size: 17px; float:right;" title="Click" data-toggle="tooltip" required>
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