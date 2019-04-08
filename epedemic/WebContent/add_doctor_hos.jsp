<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta charset="utf-8">
	
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="css/montserrat-font.css">
	<link rel="stylesheet" type="text/css" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="css/style3.css"/>
</head>

<body class="form-v10">
<%@include file="head.jsp" %>
<%@include file="menu.jsp" %>

	<div style="margin:100px; margin-left:200px">
		<div class="form-v10-content">
			<form class="form-detail" action="add_hos_doctor_con.jsp" method="post" id="myform">
				<div class="form-right">
					<h2>Doctor Details</h2>
					<div class="form-row">
						<input type="text" name="doc_name" class="street" id="street" placeholder="Name" required>
					</div>
					<div class="form-row">
						<input type="text" name="doc_spec" class="additional" id="additional" placeholder="Specialization" required>
					</div>
					<div class="form-group">
						<div class="form-row form-row-1">
							<input type="text" name="pin" class="zip" id="zip" placeholder="PinCode" required>
						</div>
						<div class="form-row form-row-2">
							<select name="city">
							    <option value="Bhopal">Bhopal</option>
							    <option value="Indore">Indore</option>
							    <option value="Jabalpur">Jabalpur</option>
							    <option value="Vidisha">Vidisha</option>
							    <option value="Rewa">Rewa</option>
							</select>
							<span class="select-btn">
							  	<i class="zmdi zmdi-chevron-down"></i>
							</span>
						</div>
					</div>
					<div class="form-group">
						<div class="form-row form-row-1">
							<input type="text" name="code" class="code" id="code" placeholder="Code +" required>
						</div>
						<div class="form-row form-row-2">
							<input type="text" maxlength=10 name="doc_contact" class="phone" id="phone" placeholder="Phone Number" required>
						</div>
					</div>
					<div class="form-checkbox">
						<label class="container"><p>I do accept the <a href="#" class="text">Terms and Conditions</a> of your site.</p>
						  	<input type="checkbox" name="checkbox">
						  	<span class="checkmark"></span>
						</label>
					</div>
					<div class="form-row-last">
						<input type="submit" name="register" class="register" value="Add Doctor">
					</div>
				</div>
			</form>
		</div>
	</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>