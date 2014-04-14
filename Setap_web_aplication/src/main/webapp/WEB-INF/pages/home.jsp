<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>template</title>
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/setap.css" rel="stylesheet">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript">

$(function(){

// The height of the content block when it's not expanded
var adjustheight = 80;
// The "more" link text
var moreText = "+  More";
// The "less" link text
var lessText = "- Less";

// Sets the .more-block div to the specified height and hides any content that overflows
$(".more-less .more-block").css('height', adjustheight).css('overflow', 'hidden');

// The section added to the bottom of the "more-less" div
$(".more-less").append('<p class="continued">[&hellip;]</p><a href="#" class="adjust"></a>');

$("a.adjust").text(moreText);

$(".adjust").toggle(function() {
		$(this).parents("div:first").find(".more-block").css('height', 'auto').css('overflow', 'visible');
		// Hide the [...] when expanded
		$(this).parents("div:first").find("p.continued").css('display', 'none');
		$(this).text(lessText);
	}, function() {
		$(this).parents("div:first").find(".more-block").css('height', adjustheight).css('overflow', 'hidden');
		$(this).parents("div:first").find("p.continued").css('display', 'block');
		$(this).text(moreText);
});
});

</script>
<style>
	body{
		background:#fefefe;
		font-family:Tahoma, Geneva, sans-serif; 
	}
	p{
		font-family:Tahoma, Geneva, sans-serif; 
		font-size:14px; 
		line-height:22px;
		margin-bottom:20px;
	}
	#container{
		width:700px;
		margin:auto;
	}
	a.adjust{
		padding:10px;
		display:block;
		font-weight:bold;
		background:#eee;
		color:#333;
		border-radius:12px;
		-webkit-border-radius:12px;
		-moz-border-radius:12px;
		width:80px;
		text-align:center;
		text-decoration:none;
	}
		a.adjust:hover{
			background:#333;
			color:#FFF;
			-webkit-transition: all 400ms; /*safari and chrome */
			-moz-transition: all 400ms ease; /* firefox */
			-o-transition: all 400ms ease; /* opera */
			transition: all 400ms ease;
		}
	p.continued{
		margin-top:0;
	}
	img{
		padding:10px;
		background:#FFF;
		border-radius: 12px;
		-webkit-box-shadow: 0 1px 13px rgba(0,0,0,.25);
		-moz-box-shadow: 0 1px 13px rgba(0,0,0,.25);
		box-shadow: 0 1px 13px rgba(0,0,0,.25);
		width:400px;
		margin-left:20px;
	}
</style>
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