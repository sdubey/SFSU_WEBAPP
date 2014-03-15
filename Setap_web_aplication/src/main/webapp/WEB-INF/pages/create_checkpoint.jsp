<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<table>
		<tr>
			<td>Creation Date : <input type="date" name="bday">
			</td>
		</tr>
		<tr>
			<td>Due Date : <input type="date" name="bday">
			</td>
		</tr>
		<tr>
			<td>Status : <select name="Choose Number" title="Choose Number">
					<option value="1">Open</option>
					<option value="2">New</option>
					<option value="3" selected>Closed</option>
					<option value="4">Reopen</option>
			</select>
			</td>
		</tr>
		<tr>
			<td>Closed Date : <input type="date" name="bday">
			</td>
		</tr>
		<tr>
			<td>Description :
			 <textarea rows="2" cols="100">Add Commenst ablot the check point</textarea>
			</td>
		</tr>
			
	</table>
	<input type ="submit" value="Cancel" align="right">
	<input type ="submit" value="Create Check point" align="right">
	
	<%@ include file="footer.jsp"%>
</body>
</html>