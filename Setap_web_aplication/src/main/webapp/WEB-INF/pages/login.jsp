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
		<h3>SETAP Login</h3>
		</div>
		
		<div class="pagination-centered page_content">
		
			<form class="form-signin" role="form" action="validate"  action="validate" method="post">
				<h2 class="form-signin-heading">Please sign in</h2>
				    <input type="email" name="username" class="form-control" placeholder="Email address" required autofocus><br> 
					<input type="password" name="password" class="form-control" placeholder="Password" required> 
				<button class="btn-primary btn-center-login" type="submit">Sign in</button>
			</form>
			
		</div>
		
		<div id="modal-footer" class="modal-footer">
			<%@ include file="footer.jsp"%>
		</div>
	</div>
</body>
</html>