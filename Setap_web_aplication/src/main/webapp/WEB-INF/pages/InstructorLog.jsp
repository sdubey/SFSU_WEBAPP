<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Instruction_Log</title>
<link href="resources/css/demo_page.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/demo_table.css" rel="stylesheet"
	type="text/css" />
</head>
</head>
<body id="dt_example">

	<%@ include file="header.jsp"%>

	<div id="container">
		<div id="column_">
			<h5 align="center">Instructor Class Log (Rev. 8/21/13)</h5>
			<p>Use this log to record pertinent observations of student team
				work during the development of the final class project. This form
				can be used to log observations during instructor meeting with teams
				(either regular scrum meetings during class or extra meetings
				outside the classroom), or at any time when instructor gets involved
				in resolving student team problems and issues. Please keep hard copy
				of all logs and group them by student teams. They will be used later
				for team evaluation, grading and research on teaching team work in
				SE education.</p>
		</div>
			<div id="column_inner_" style="background-color:#FFFFFF;float:left;">
				Instructor : <select name="Choose professor" title="Instructor">
				<option value="1">Sonal</option>
				<option value="2">Mayank</option>
				<option value="3" selected>Rupal</option>
			</select><br> Team # : <select name="Choose professor" title="Instructor">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">3</option>
				<option value="5">3</option>
			</select><br>
			Meeting Date <input type="date" name="meeting_date"
				id="meeting_date"><br> 
			</div>
		
		
		
		<div  id="column_inner_" style="background-color:#FFFFFF;float:right;">
			This is recording a (Check one):<br> <input
					type="checkbox" name="vehicle" value="Bike">Regular scrum
					team meeting<br> <input type="checkbox" name="vehicle"
					value="Car"> Extra team Meeting<br> <input
					type="checkbox" name="vehicle" value="Bike">Teamwork Issue<br>
					<input type="checkbox" name="vehicle" value="Car">Other
	    </div>
	   
	  
		
		<div  id="column_inner_" style="background-color:#FFFFFF;float:right;">
		<select name="Choose Number" title="Choose Number">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3" selected>3</option>
						<option value="4">4</option>
				</select> <br><textarea rows="2" cols="100">
                Type Reason here
                </textarea>
		 </div>
		
		<div  id="column_inner_" style="background-color:#FFFFFF;float:left;">
		<p>select team absect member </p>
		</div>
		
		
		<div  id="column_inner_" style="background-color:#FFFFFF;float:right;">
		<p>Team's effectiveness : (1 poor, 5 excellent)</p> <input
					type="radio" name="sex" value="male">1 <input type="radio"
					name="sex" value="female">2 <input type="radio" name="sex"
					value="female">3 <input type="radio" name="sex"
					value="female">4 <input type="radio" name="sex"
					value="female">5
		 </div>
		
		<div  id="column_inner_" style="background-color:#FFFFFF;float:left;">
		<p>Team Lead's effectiveness : (1 poor, 5 excellent)</p> <input
					type="radio" name="sex" value="male">1 <input type="radio"
					name="sex" value="female">2 <input type="radio" name="sex"
					value="female">3 <input type="radio" name="sex"
					value="female">4 <input type="radio" name="sex"
					value="female">5
		</div>
		
		<div  id="column_" style="background-color:#FFFFFF;float:left;">
		Checkpoints<br> <a href="checkpoints"> Create/
									Update / View existing check point</a>
		</div>
		
		<div  id="column_" style="background-color:#FFFFFF;float:left;">
			<input type="submit" value="Reset" align="right"> <input
			type="submit" value="Submit" align="right">
		</div>
			<%@ include file="footer.jsp"%>
	</div>
</body>

</html>