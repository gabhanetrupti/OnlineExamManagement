<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="txt/html">
<title>Logout</title>
</head>
<body>
<%
	session.invalidate(); //destroys the session
	response.sendRedirect("login.jsp");
%>
</body>
</html>