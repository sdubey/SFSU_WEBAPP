<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="resources/css/demo_page.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/demo_table.css" rel="stylesheet"
	type="text/css" />
<script
	src="<c:url value="/resources/core/jquery.autocomplete.min.js" />"></script>
</head>
<body id="dt_example">
	<div id="container">
		<h1>SETAP Login</h1>
		<div id="column" style="background-color:#FFFFFF;float:left;">
			<p>
				About SETAP: Lorem Ipsum is simply dummy text of the printing and
				typesetting industry. Lorem Ipsum has been the industry's standard
				dummy text ever since the 1500s , when an unknown printer took a
				galley of type and scrambled it to make a type specimen book. It has
				survived not only five centuries, but also the leap into electronicv
				typesetting, remaining essentially unchanged. It was popularised in
				the 1960s with the release of Letraset sheets containing Lorem Ipsum
				passages, and more recently with desktop publishing software like
				Aldus PageMaker including versions of Lorem Ipsum.<br>
				<br> for more information about SETAP
			</p>
			<ul>
				<li><a href="about_setap">Click here !!</a></li>
			</ul>
		</div>
		<div  id="column" style="background-color:#FFFFFF;float:right;">
			<form action="validate" method="post">
				<h2>LogIn in to continue</h2>
				<label>User name :<input type="text" name="username" size="20"><br></label>
				<label>Password :<input type="password" name="password" size="20"><br></label>
				<input type="submit" value="   Sign In  "><br> 
				<a>Cannot access account?</a><br> 
				<input type="Submit" value="Create New Account">
			</form>
	   </div>
	   <hr>
    	<div id="footer"><%@ include file="footer.jsp"%></div>
	</div>
</body>
</html>