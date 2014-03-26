<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link href="resources/css/demo_page.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/demo_table.css" rel="stylesheet"
	type="text/css" />

</head>
<body id=dt_example>
	<div id="container">

		<%@ include file="header.jsp"%>
		<div id="demo_jui">
			<p>How to use this application :</p>
			<p>Lorem Ipsum is simply dummy text of the printing and
				typesetting industry. Lorem Ipsum has been the industry's standard
				dummy text ever since the 1500s , when an unknown printer took a
				galley of type and scrambled it to make a type specimen book. It has
				survived not only five centuries, but also the leap into electronicv
				typesetting, remaining essentially</p>
		</div>
			<a href="InstructorLog"> Enter class logs for SETAP</a><br>
			<a href="export_logs"> View/Export Data</a>
	<%@ include file="footer.jsp"%>
	</div>
	
</body>
</html>