<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<%@include file="ngo_head.jsp" %>
<div class="main">
<form action="add_ngo_patient_con.jsp" >
<b>Disease Name</b><select class="form-control" name="disease">
							  
							    <option value="Dangue">Dangue</option>
							    <option value="Malaria">Malaria</option>
							    <option value="Typhoid">Typhoid</option>
							    <option value="Viral Fever">Viral Fever</option>
							</select>
							
<br><b>Patient Count</b><input  class="form-control" type="text" name="count">
<br><input type="submit"  class="btn btn-primary" value="Add" >

</form>

</div>
<%@include file="footer.jsp" %>

</div>


</body>
</html>