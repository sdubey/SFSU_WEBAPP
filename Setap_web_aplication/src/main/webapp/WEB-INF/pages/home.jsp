<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>template</title>
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/setap.css" rel="stylesheet">
</head>
<body>
	<div id="container">
		<div id="modal-header" class="modal-header">
			<%@ include file="header.jsp"%>
			<h3>SETAP Home</h3>		
		</div>
		<div class="page_content">
			<h4>How to use this application :</h4>
			<p>	
			Some steps in the process of SETAP are currently performed manually on paper.
			This SETAP project allows electronic-form-based entry of instructer's logs after each class.
			Specifically, the in-class observation data, so there is some manual repetitive
			effort involved in the project. Also it provides teh features to export/print/view the logs. <br><br>
			
			The project mainly provides two functionalities :<br><br>
			
			a)	<a href="InstructorLog">Enter Class logs</a> This feature allows to enter the 
			class logs through electronic form based entries. <br><br>
			b)  <a href="export_logs"> View/Export Class logs</a> This feature allows to do the export/print
			the data of all the logs entered by the instructer. <br><br>
			</p>		
		</div>
		
		<div id="modal-footer" class="modal-footer">
			<%@ include file="footer.jsp"%>
		</div>
	</div>
</body>
</html>