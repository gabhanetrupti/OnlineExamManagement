<%@page import="myPackage.Questions"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO1" class="myPackage.DatabaseClass" scope="page"/>
<!DOCTYPE html>
<html>
<head>
	<title>Let's Transform || Questions</title>  
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
	                  <h5>Show Questions</h5>
	             </div>
	             <%
			           if(request.getParameter("coursename")!=null){
			               ArrayList list=pDAO.getAllQuestions(request.getParameter("coursename"));
			               for(int i=0;i<list.size();i++){
			                   Questions question=(Questions)list.get(i);
			     %>
	             <div class="card-block table-border-style">
                     <div class="table-responsive">
                     	<div class="input-group mb-3">
                             <div class="input-group-prepend">
                                  <button class="btn btn-primary" type="button"><%=i+1 %></button>
                              </div>
                              <span type="text" class="form-control"><%=question.getQuestion() %></span>
                              <a href="controller.jsp?page=questions&operation=delQuestion&qid=<%=question.getQuestionId() %>" onclick="return confirm('Are you sure you want to delete this Question ?');">
								  <div class="delete-btn" style="max-width: 40px;font-size: 17px; float:right; padding: 3px">X</div>
							  </a>
                        </div>
				                        <td><span type="text" class="form-control"><%=question.getOpt1() %></span></td>
				                        <td><span type="text" class="form-control"><%=question.getOpt2() %></span></td>
				                        <td><span type="text" class="form-control"><%=question.getOpt3() %></span></td>
				                        <td><span type="text" class="form-control"><%=question.getOpt4() %></span></td> 	                                    
                                    
                                      	<td><span type="text" class="form-control show-correct"><%=question.getCorrect() %></span></td>
                                      
                     </div>
                 </div>
                 <%
		               }
		          } %>
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