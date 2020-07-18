<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>

<%@page import="myPackage.User"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Let's Transform || Dashboard</title>
    
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Datta Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
    <meta name="keywords" content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template, free admin theme, free dashboard template"/>
        
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
	<%
		User user = pDAO.getUserDetails(session.getAttribute("userId").toString());
		int u_id = Integer.parseInt(session.getAttribute("userId").toString());
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =   DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_system","root","root");
			Statement st = con.createStatement();
			String sql = "select image from users where user_id=" + u_id + "";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				String image = rs.getString("image");				
     %>
    <!-- [ Pre-loader ] start -->
    <div class="loader-bg">
        <div class="loader-track">
            <div class="loader-fill"></div>
        </div>
    </div>
    <!-- [ Pre-loader ] End -->

    <!-- [ navigation menu ] start -->
    <nav class="pcoded-navbar">
        <div class="navbar-wrapper">
            <div class="navbar-brand header-logo">
               <a href="std-page.jsp?pgprt=0" class="b-brand">
               	   <div class="b-bg">               	   		
                   		<img src="images/app/Let's Transform.png">
                   </div>
                   <span class="b-title"><b>Let's Transform</b></span>               
               </a>
               <a class="mobile-menu" id="mobile-collapse" href="javascript:"><span></span></a>
           </div>
            <div class="navbar-content scroll-div">
            
			<header class="MuiPaper-root-295 MuiAppBar-root-284 jss356 MuiAppBar-positionStatic-288 MuiAppBar-colorPrimary-291 user relative flex flex-col items-center justify-center pt-24 pb-64 mb-32 z-0 MuiPaper-elevation0-298">
				<p class="MuiTypography-root-325 username text-16 whitespace-no-wrap MuiTypography-body1-327 MuiTypography-colorInherit-347"><%=user.getFirstName() %> <%=user.getLastName() %></p>
				<p class="MuiTypography-root-325 email text-13 mt-8 opacity-50 whitespace-no-wrap MuiTypography-body1-327 MuiTypography-colorInherit-347">Student</p>
				<div class="MuiAvatar-root-358 MuiAvatar-circle-360 jss357 avatar">					
					<img src="images/<%=image%>"> 
				</div>
			</header>
          
                <ul class="nav pcoded-inner-navbar">
					<br>
                    <li data-username="dashboard Default Ecommerce CRM Analytics Crypto Project" class="nav-item">
                        <a href="std-page.jsp?pgprt=0" class="nav-link "><span class="pcoded-micon"><i class="feather icon-grid"></i></span><span class="pcoded-mtext">Dashboard</span></a>
                    </li>
                    
                    <li data-username="form elements advance componant validation masking wizard picker select" class="nav-item">
                        <a href="std-page.jsp?pgprt=6" class="nav-link "><span class="pcoded-micon"><i class="feather icon-user"></i></span><span class="pcoded-mtext">Profile</span></a>
                    </li>
                    
                    <li data-username="form elements advance componant validation masking wizard picker select" class="nav-item">
                        <a href="std-page.jsp?pgprt=7" class="nav-link "><span class="pcoded-micon"><i class="feather icon-target"></i></span><span class="pcoded-mtext">Study</span></a>
                    </li>
                  
                    <li data-username="form elements advance componant validation masking wizard picker select" class="nav-item">
                        <a href="std-page.jsp?pgprt=1" class="nav-link "><span class="pcoded-micon"><i class="feather icon-edit"></i></span><span class="pcoded-mtext">Exam</span></a>
                    </li>
                    <li data-username="Table bootstrap datatable footable" class="nav-item">
                        <a href="std-page.jsp?pgprt=2" class="nav-link "><span class="pcoded-micon"><i class="feather icon-award"></i></span><span class="pcoded-mtext">Result</span></a>
                    </li>
                    
                  </ul>
            </div>
        </div>
    </nav>
    <!-- [ navigation menu ] end -->

    <!-- [ Header ] start -->
    <header class="navbar pcoded-header navbar-expand-lg navbar-light">
        <div class="m-header">
            <a class="mobile-menu" id="mobile-collapse1" href="javascript:"><span></span></a>
            	<a href="std-page.jsp?pgprt=0" class="b-brand">
            		<div class="b-bg">
            			<img src="images/app/Let's Transform.png">                 		
                	</div>
                   <span class="b-title">Let's Transform</span>                   
                </a>
        </div>
        <a class="mobile-menu" id="mobile-header" href="javascript:">
            <i class="feather icon-more-horizontal"></i>
        </a>
        <div class="collapse navbar-collapse">
        
        
                 
            
            <header class="MuiPaper-root-27 MuiAppBar-root-16 MuiAppBar-positionFixed-17 MuiAppBar-colorDefault-22 flex relative z-10 mui-fixed MuiPaper-elevation4-34" id="fuse-toolbar" style="background-color: rgb(247, 247, 247);">
            	<div class="MuiToolbar-root-55 MuiToolbar-regular-57 p-0 MuiToolbar-gutters-56">
            		<div class="flex flex-1">
            		</div>
            		<div class="flex">
            			<button class="MuiButtonBase-root-86 MuiButton-root-59 MuiButton-text-61 h-64" tabindex="0" type="button">
            				<span class="MuiButton-label-60">
            					
            					<div class="MuiAvatar-root-87 MuiAvatar-circle-89"><a href="std-page.jsp?pgprt=6">
            						<img src="images/<%=image%>"></a>
            					</div>
            					<div class="hidden md:flex flex-col mx-12 items-start"><a href="std-page.jsp?pgprt=6">
            						<span class="MuiTypography-root-94 normal-case font-600 flex MuiTypography-body1-96"><%=user.getFirstName() %> <%=user.getLastName() %></span>
            						<p class="MuiTypography-root-94 text-11 capitalize MuiTypography-body1-96 MuiTypography-colorTextSecondary-120"></p></a>
            					</div>
            					<a href="std-page.jsp?pgprt=6"><i class="feather icon-eye mx-4_1" style="font-size:15px;"></i></a>
            					
            				</span>
            				<span class="MuiTouchRipple-root-635"></span>
            			</button>
            			<div class="jss15"></div>
            			<div class="jss135 flex"></div>
            			<button class="MuiButtonBase-root-86 MuiButton-root-59 MuiButton-text-61 h-64 w-64_1" tabindex="0" type="button">
            				<span class="MuiButton-label-60">
            					<!-- <img class="mx-4_1 min-w-20" src="images/flag/us.png" alt="English">
            					<p class="MuiTypography-root-94 mx-4_1 font-600 MuiTypography-body1-96">en</p> -->
            					
            					<!-- language translator start -->
            					<div id="google_translate_element"></div>
							<script type="text/javascript">
							  function googleTranslateElementInit() {
							    new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE, autoDisplay: false}, 'google_translate_element');
							  }
							</script>
							<script src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit" type="text/javascript"></script>
							
							<!-- Flag click handler -->
							<script type="text/javascript">
							    $('.translation-links a').click(function() {
							      var lang = $(this).data('lang');
							      var $frame = $('.goog-te-menu-frame:first');
							      if (!$frame.size()) {
							        alert("Error: Could not find Google translate frame.");
							        return false;
							      }
							      $frame.contents().find('.goog-te-menu2-item span.text:contains('+lang+')').get(0).click();
							      return false;
							    });
							</script>
							<!-- language translator end -->
            					
            				</span>
            				<span class="MuiTouchRipple-root-635"></span>
            			</button>
            			<div class="jss15"></div>
            			<button class="MuiButtonBase-root-86 MuiIconButton-root-152 w-64 h-64" tabindex="0" type="button">
            				<span class="pcoded-micon">
            					<a href="logout.jsp" title="Logout" data-toggle="tooltip"><i class="feather icon-log-out" style="font-size:17px;color:red;"></i></a>
            				</span>
            				<span class="MuiTouchRipple-root-635"></span>
            			</button>
            		</div>
            	</div>
            </header>
            
            
        </div>
    </header>
    <!-- [ Header ] end -->
<%
		}
	}catch(Exception e){
		System.out.println(e);
	}
%>
    

    <!-- Required Js -->
	<script src="js/vendor-all.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/pcoded.min.js"></script>


    <!-- chart-morris Js -->
    <script src="js/raphael.min.js"></script>
    <script src="js/morris.min.js"></script>
    <script src="js/chart-morris-custom.js"></script>

</body>
</html>
