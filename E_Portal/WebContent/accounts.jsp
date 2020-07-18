<%@page import="myPackage.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO1" class="myPackage.DatabaseClass" scope="page"/>
<!DOCTYPE html>
<html>
<head>
	<title>Let's Transform || Users</title>  
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
		<div class="col-xl-12">
            	<div class="card">
                    <div class="card-header">
                         <h5>Registered Students</h5>
                    </div>
                    <div class="card-block table-border-style">
                    	<div class="table-responsive">
                    		<table class="table table-hover">
                    			<colgroup>
    								<col class="oce-first">
    							</colgroup>
                                                    <thead>
                                                        <tr>
                                                        	<th><center>Profile</center></th>
                                                            <th><center>Name</center></th>
                                                            <th><center>Email</center></th>
                                                            <th><center>Center</center></th>
                                                            <th><center>Address</center></th>
                                                            <th><center>Action</center></th>
                                                        </tr>
                                                    </thead>                                                 
                                                    
                                                    <%
											              ArrayList list=pDAO1.getAllUsers();
											              /* User user; */
											              for(int i=0;i<list.size();i++){
											                  user=(User)list.get(i);
											                  if(user.getUserId()!= Integer.parseInt(session.getAttribute("userId").toString())){
               										%>              										
               										
                                                    <tbody>
                                                        <tr>
                                                        	<td><center><div class="MuiAvatar-root-87 MuiAvatar-circle-89"><img src="<%=request.getContextPath()%>/images/<%= user.getImage() %>"></div></center></td>
                                                            <td><center><%=user.getFirstName()+" "+user.getLastName() %></center></td>
                                                            <td><center><%=user.getEmail() %></center></td>
                                                            <td><center><%=user.getCity() %></center></td>
                                                            <td><center><%=user.getAddress() %></center></td>
                                                            <td>
	                                                            <center>
	                                                            	<a href="controller.jsp?page=accounts&operation=del&uid=<%=user.getUserId() %>" 
													                  onclick="return confirm('Are you sure you want to delete this ?');">
													                <div class="delete-btn" style="max-width: 40px;font-size: 17px; padding: 3px">X</div>
													                </a>
	                                                            </center>
                                                            </td>
                                                        </tr>                                                       
                                                    </tbody>
                                                    <%
										                  }
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