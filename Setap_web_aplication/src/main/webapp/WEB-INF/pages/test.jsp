<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="http://www.jeasyui.com/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="http://www.jeasyui.com/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="http://www.jeasyui.com/easyui/demo/demo.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<script type="text/javascript"
	src="http://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript">
	function doSearch() {
		$('#tt').datagrid('load', {
			cname : $('#cname').val(),
			region : $('#region').val()
		});
	}
</script>
</head>
<body>
	<table id="tt" class="easyui-datagrid"
		style="width: 500px; height: 250px" url="/BaseController/sfsu"
		title="Searching" iconCls="icon-search" toolbar="#tb"
		rownumbers="true" pagination="true">
		<thead>
			<tr>
				<th field="check_pointID" width="100">check_pointID</th>
				<th field="class_session" width="100">class_session</th>
				<th field="team_number" width="100" align="right">team_number</th>
				<th field="creation_date" width="140" align="right">creation_date</th>
				<th field="due_date" width="100">due_date</th>
				<th field="issue_status" width="100">issue_status</th>
				<th field="closed_date" width="100" align="closed_date">closed_date</th>
				<th field="description" width="140" align="right">description</th>
				<th field="email_notification" width="140"
					align="email_notification">Region</th>
			</tr>
		</thead>
	</table>
	<div id="tb" style="padding: 3px">
		<span>Continent:</span> <input id="cname"
			style="line-height: 26px; border: 1px solid #ccc"> <span>Region:</span>
		<input id="region" style="line-height: 26px; border: 1px solid #ccc">
		<a href="#" class="easyui-linkbutton" plain="true"
			onclick="doSearch()">Search</a>
	</div>
</body>
</html>