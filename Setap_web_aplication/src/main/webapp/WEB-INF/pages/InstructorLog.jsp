<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Instruction_Log</title>
   <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
</head>
</head> 
<body>
	<table id="instruction_logs" border="3.0" class="display">
		<tr>
			<td colspan="2">
				<table border="4.0" >
					<tr>
						<td>
							<h5 align="center">Instructor Class Log (Rev. 8/21/13)</h5>
							<p>Use this log to record pertinent observations of student
								team work during the development of the final class project.
								This form can be used to log observations during instructor
								meeting with teams (either regular scrum meetings during class
								or extra meetings outside the classroom), or at any time when
								instructor gets involved in resolving student team problems and
								issues. Please keep hard copy of all logs and group them by
								student teams. They will be used later for team evaluation,
								grading and research on teaching team work in SE education.</p>

						</td>
					</tr>
				</table>
			</td>
		</tr>
		
		<tr>
			<td>
				<table border="4.0" width="100%">
					<tr>
						<td>
						Instructor : <input type="text"/><br>
						Team # : <input type="text"/><br>
						Date of meeting <input type="date" name="meeting_date" id="meeting_date"><br>
						</td>
						<td>
							This is recording a (Check one):<br>
							<input type="checkbox" name="vehicle" value="Bike">Regular scrum team meeting<br>
							<input type="checkbox" name="vehicle" value="Car"> Extra team Meeting<br>  
							<input type="checkbox" name="vehicle" value="Bike">Teamwork Issue<br>
							<input type="checkbox" name="vehicle" value="Car">Other
						</td>
					</tr>
				</table>
			</td>
		</tr>
		
		<tr>
			<td>
				<table border="4.0" width="100%">
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
				<table border="4.0" width="100%">
					<tr>

						<td>
							<p>Team's effectiveness : (1 poor, 5 excellent)</p> <input
							type="radio" name="sex" value="male">1 <input
							type="radio" name="sex" value="female">2 <input
							type="radio" name="sex" value="female">3 <input
							type="radio" name="sex" value="female">4 <input
							type="radio" name="sex" value="female">5
						</td>

						<td>
							<p>Team lead's effectiveness : (1 poor, 5 excellent)</p> <input
							type="radio" name="sex" value="male">1 <input
							type="radio" name="sex" value="female">2 <input
							type="radio" name="sex" value="female">3 <input
							type="radio" name="sex" value="female">4 <input
							type="radio" name="sex" value="female">5
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table border="4.0" width="100%">
					<tr>
						<td>
							<table>
								<tr>
									<td>
										Checkpoints<br>
								          <a href="checkpoints"> Create/ Update / View
											existing check point</a></td>
								</tr>
							</table>

						</td>
					</tr>
				</table>
			</td>
		</tr>

	</table>
	<input type="submit" value="Reset" align="right">
	<input type="submit" value="Submit" align="right">


</body>
<%@ include file="footer.jsp"%>

</html>