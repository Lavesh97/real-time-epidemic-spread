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

	<div class="page-content">
		<div class="form-v10-content">
			<form class="form-detail" action="add_hos_patient_con.jsp" method="post" id="myform">
				<div class="form-left">
					<h2>Patient Details</h2>
					
					<div class="form-row">
						<input type="text" name="pno" class="company" id="company" placeholder="Patient Number" required>
					</div>
					<div class="form-group">
						<div class="form-row form-row-1">
							<input type="text" name="fname" id="first_name" class="input-text" placeholder="First Name" required>
						</div>
						<div class="form-row form-row-2">
							<input type="text" name="lname" id="last_name" class="input-text" placeholder="Last Name" required>
						</div>
					</div>
					<div class="form-row">
						<select name="gender">
						    <option value="Male">Male</option>
						    <option value="Female">Female</option>
				     	</select>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					</div>
					<div class="form-row">
						<input type="text" name="age" class="company" id="company" placeholder="Age" required>
					</div>
					<div class="form-group">
						<div class="form-row form-row-3">
							<input type="text" name="weight" class="business" id="business" placeholder="Weight" required>
						</div>
						<div class="form-row form-row-4">
							<select name="disease">
							    <option value="null">Disease</option>
							    <option value="Dangue">Dangue</option>
							    <option value="Malaria">Malaria</option>
							    <option value="Typhoid">Typhoid</option>
							    <option value="Viral Fever">Viral Fever</option>
							</select>
							<span class="select-btn">
							  	<i class="zmdi zmdi-chevron-down"></i>
							</span>
						</div>
					</div>
				</div>
				<div class="form-right">
					<h2>Contact Details</h2>
					<div class="form-row">
						<input type="text" name="addr" class="street" id="street" placeholder="Address" required>
					</div>
					<div class="form-row">
						<input type="text" name="additional" class="additional" id="additional" placeholder="Additional Information" required>
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
							<input type="text" name="phone" class="phone" id="phone" placeholder="Phone Number" required>
						</div>
					</div>
					<div class="form-checkbox">
						<label class="container"><p>I do accept the <a href="#" class="text">Terms and Conditions</a> of your site.</p>
						  	<input type="checkbox" name="checkbox">
						  	<span class="checkmark"></span>
						</label>
					</div>
					<div class="form-row-last">
						<input type="submit" name="register" class="register" value="Add Patient">
					</div>
				</div>
			</form>
		</div>
	</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>