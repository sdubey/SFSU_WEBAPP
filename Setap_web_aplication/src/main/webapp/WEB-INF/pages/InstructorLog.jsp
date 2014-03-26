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
	<div id="container">
	<%@ include file="header.jsp"%>
		<div>
			Instructor Class Log (Rev. 8/21/13)
		</div>
		<form id="instructer_logs" action="addInstruction"  method="post">
			<div id="column_inner_" style="background-color:#FFFFFF;float:left;">
				<label>Instructor : <select name="select_instructor" title="Instructor">
				<option value="1">Sonal</option>
				<option value="2">Mayank</option>
				<option value="3">Rupal</option>
				<option value="4" selected="selected">Select Instructor</option>
			</select></label>
			<label> Team # : <select name="select_team" title="Instructor">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option selected="selected" value="6">Select Team</option>
			</select></label>
			<label>Meeting Date <input type="date" name="meeting_date"
				id="meeting_date"></label>
			</div>
		
		<div  id="column_inner_" style="background-color:#FFFFFF;float:right;">
			This is recording a (Check one):<br> 
			<input type="checkbox" name="meetingReason" value="Regular scrum">Regular scrum team meeting<br>
			<input type="checkbox" name="meetingReason" value="Extra team Meeting"> Extra team Meeting<br>
			<input type="checkbox" name="meetingReason" value="Teamwork Issue">Teamwork Issue<br>
			<input type="checkbox" name="meetingReason" value="Other">Other
	    </div>    
	    <hr>
		<div  id="column_" style="background-color:#FFFFFF;float:left;">
	    <label>select team absent member (Only for the record):
	    <select name="Choose_absent_member" title="Choose Number">
						<option value="1" selected="selected">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
	    </select>
	    </label>
		<label>Type Reason for absence here <textarea rows="2" cols="10" name="textarea_reason"></textarea></label>
		</div>
		<hr>
		
		<div  id="column_inner_" style="background-color:#FFFFFF;float:right;">
		<p>Team's effectiveness : (1 poor, 5 excellent)</p> 
		<input type="radio" name="team_effectiveness" value="1">1 
		<input type="radio" name="team_effectiveness" value="2">2 
		<input type="radio" name="team_effectiveness" value="3">3 
		<input type="radio" name="team_effectiveness" value="4">4
		<input type="radio" name="team_effectiveness" value="5">5
		 </div>
		
		<div  id="column_inner_" style="background-color:#FFFFFF;float:left;">
		<p>Team Lead's effectiveness : (1 poor, 5 excellent)</p> 
		<input type="radio" name="team_lead_effectiveness" value="1">1 
		<input type="radio" name="team_lead_effectiveness" value="2">2 
		<input type="radio" name="team_lead_effectiveness" value="3">3 
		<input type="radio" name="team_lead_effectiveness" value="4">4
		<input type="radio" name="team_lead_effectiveness" value="5">5
		</div>
	    <hr>
			
		<div  id="column_" style="background-color:#FFFFFF;float:left;">
		Checkpoints<br> <a href="checkpoints"> Create/
									Update / View existing check point</a>
		</div>
		
		<div  id="column_" style="background-color:#FFFFFF;float:left;">
			<input type="submit" value="Reset" align="right"> <input
			type="submit" value="Submit" align="right">
		</div>
			<%@ include file="footer.jsp"%>
			</form>
	</div>
</body>

</html>