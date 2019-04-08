<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
if(session.getAttribute("email")==null){
    response.sendRedirect("index.html");	
}

%>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<style>
*{
	font-family:cursive;
}
</style>
<div class='head'>
<center>
<h1><%=session.getAttribute("name") %></h1>
</center>
</div>
