<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>
				<h5 align="center">Instructor Class Logs</h5>
				<p>Lorem Ipsum is simply dummy text of the printing and
					typesetting industry. Lorem Ipsum has been the industry's standard
					dummy text ever since the 1500s , when an unknown printer took a
					galley of type and scrambled it to make a type specimen book. It
					has survived not only five centuries, but also the leap into
					electronicv typesetting, remaining essentially</p>
			</td>
		</tr>
		<tr>
			<td>Instructor : <input type="text">
			</td>
		</tr>
		<tr>
			<td>Team # : <input type="text">
			</td>
		</tr>
		<tr>
			<td>Date of meeting <input type="text">
			</td>
		</tr>
		<tr>
			<td>
				<table border="1.5" width="100%">
					<tr>
						<td>
							<p>For Meeting only: Number of team members absent in the
								team</p>
						</td>
						<td><select name="Choose Number" title="Choose Number">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3" selected>3</option>
								<option value="4">4</option>
						</select> <br> <br> <textarea rows="2" cols="100">
		Type Reason here
		</textarea></td>
					</tr>
				</table>
			</td>
		</tr>


		<tr>
			<td>
				<table border="1.5" width="100%">
					<tr>
							
						   <td >
						    <p>Team's effectiveness : (1 poor, 5 excellent)</p>
						    <input type="radio" name="sex" value="male">1 <input
							type="radio" name="sex" value="female">2 <input
							type="radio" name="sex" value="female">3 <input
							type="radio" name="sex" value="female">4 <input
							type="radio" name="sex" value="female">5</td>
							
							<td>
							 <p>Team lead's effectiveness : (1 poor, 5 excellent)</p>
						    <input type="radio" name="sex" value="male">1 <input
							type="radio" name="sex" value="female">2 <input
							type="radio" name="sex" value="female">3 <input
							type="radio" name="sex" value="female">4 <input
							type="radio" name="sex" value="female">5</td>
					</tr>
				</table>
			</td>
		</tr>


		<tr>
			<td>

				<table border="1.5" width="100%">
					<tr>
						<td>
							<table>
								<tr>
									<td>
										<p>Checkpoints</p>
									</td>
								</tr>
								<tr>
									<td><a href="create_checkpoint"> Create a new Check point</a></td>
								</tr>

								<tr>
									<td><a href="checkpoints"> Update / View existing check point</a></td>
								</tr>
							</table>

						</td>
					</tr>
				</table>

			</td>
		</tr>

	</table>
	<input type ="submit" value="Reset" align="right">
	<input type ="submit" value="Submit" align="right">
	

</body>
<%@ include file="footer.jsp"%>

</html>