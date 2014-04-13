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
			<h4>Instructor Class Log (Rev. 8/21/13)</h4>
		</div>
	<form id="instructer_logs" action="addInstruction"  method="post">
		<div class="page_content">
			<div class="row-fluid">
				<div class="span6">
					<select name="select_instructor" title="Instructor">
						<option value="Marc">Marc</option>
						<option value="John">John</option>
						<option value="Maria">Maria</option>
						<option value="4" selected="selected">Select Instructor</option>				
					</select> 
					<select class="form-control" name="select_team">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option selected="selected">Select team</option>
					</select> <br> <input type="date" class="form-control"
						placeholder="Select Date" name="meeting_date">
				</div>
				<div class="span6">
					<p>This is recording a (Check one):</p>
					<input type="checkbox" name="meetingReason" value="Regular scrum">Regular
					scrum team meeting<br> <input type="checkbox"
						name="meetingReason" value="Extra team Meeting"> Extra
					team Meeting<br> <input type="checkbox" name="meetingReason"
						value="Teamwork Issue">Teamwork Issue<br> <input
						type="checkbox" name="meetingReason" value="Other">Other
				</div>
			</div>
			<hr>
			<div class="row-fluid">
				<div class="span6">
					<select name="Choose_absent_member" title="Choose Number" name="Choose_absent_member" >
						<option value="1" selected="selected">Select No. of absent member</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</div>
				<div class="span6">
					<textarea class="form-control" rows="2"  name="textarea_reason"></textarea>
				</div>
			</div>
			<hr>
			<div class="row-fluid">
				<div class="span6 radio-inline">
					<p>Team's effectiveness : (1 poor, 5 excellent)</p>
					 Below &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  
					 &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp At  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Above<br>
					 Expectataion &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Expectataion&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Expectataion<br>
					<label class="checkbox-inline">
					 <input type="radio" name="team_effectiveness" value="1"> 1 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
					 <input type="radio" name="team_effectiveness" value="2"> 2 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
					 <input type="radio" name="team_effectiveness" value="3"> 3 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
					 <input type="radio" name="team_effectiveness" value="4"> 4 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
					 <input type="radio" name="team_effectiveness" value="5"> 5
					</label>
				</div>
				
				<div class="span6 radio-inline">
					<p>Team Lead's effectiveness : (1 poor, 5 excellent)</p>
					 Below &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  
					 &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp At  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Above<br>
					 Expectataion &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Expectataion&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Expectataion<br>
					<label class="checkbox-inline">
					 <input type="radio" name="team_lead_effectiveness" value="1"> 1 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
					 <input type="radio" name="team_lead_effectiveness" value="2"> 2 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
					 <input type="radio" name="team_lead_effectiveness" value="3"> 3 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
					 <input type="radio" name="team_lead_effectiveness" value="4"> 4 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
					 <input type="radio" name="team_lead_effectiveness" value="5"> 5
					</label>
				</div>
			</div>
			<hr>
			<div class="row-fluid">
				<div class="span12">
					<a href="checkpoints"> Create/ Update / View existing
						checkpoint</a>
					<div class="icon-question-sign" title="help"></div>
				</div>
			</div>

			<div class="row-fluid">
				<div class="span12">
					<button class="btn-primary btn-center-login" type="submit">Insert
						Log</button>

				</div>
			</div>

		</div>
		<hr>
		<div class="page_content"></div>
		</form>
		<div id="modal-footer" class="modal-footer">
			<%@ include file="footer.jsp"%>
		</div>
	</div>
</body>
</html>