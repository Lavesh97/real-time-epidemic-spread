<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
if(session.getAttribute("email")==null){
    response.sendRedirect("index.html");	
}

%>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
*{
	font-family:cursive;
}
body{
	
	background-image:url("img/orgimg1.jpg");
	background-attachment:fixed;
	background-size:cover;
	
}
.head{
	margin-left:10px;
	
}
.navbar{
	
	background-color:lightskyblue;
	opacity:.8;
}
.navbar ul li {
	font-size:20px;
	margin:10px 20px;
	float:left;
	list-style:none;
	color:white;
}
.navbar ul li a{
	color:dark-blue;
	style:none;
}
.navbar ul li a:hover{
	color:white;
}
.main{
 font-size:20px;
 margin:20px;
 
}

.footer{
	font-size:20px;
	color:grey;
	text-align:right;
	padding:20px;
	
}


</style>
<div class='head'>
<center>
<h1><%=session.getAttribute("name") %></h1>
</center>
</div>

<div class="navbar">
			<ul>
				<li><a href="gov_org.jsp">Home</a></li>
				<li><a href="show_all_hospitals.jsp">Hospitals</a></li>
				<li><a href="show_all_ngos.jsp">NGO</a></li>
				<li><a href="death_graph.jsp">Death Rate</a></li>
				
				
				<li><a href="hoslogout.jsp">Logout</a></li>
				
			</ul>
		</div>
