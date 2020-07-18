<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO1" class="myPackage.DatabaseClass" scope="page"/>
<!DOCTYPE html>
<html>
<head>
	<title>Let's Transform || Result</title>  
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
		<div class="col-xl-5">
			<div class="card">
                <div class="card-header">
                    <h5>Show Course wise Students Result</h5>
                </div>
                	<form action="allStudentsResult.jsp">
                		<div class="form-group">
	                    <br>
	                        <label for="exampleFormControlSelect1">&nbsp&nbsp Select Course</label>
	                        <input type="hidden" name="pgprt" value="5">
	                        <select name="coursename" class="form-control">
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
	                    <br>
	                    <center><button type="submit" class="btn_1 btn-primary">Show</button></center><br>
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