<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>DataTables example</title>
<style type="text/css" title="currentStyle">
@import "resources/css/demo_table.css";
</style>
<script type="text/javascript" language="javascript"
	src="resources/js/jquery.js"></script>
<script type="text/javascript" language="javascript"
	src="resources/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		var oTable = $('#example').dataTable(
						{
							"processing" : true,
							"ajax" : {
								"url" : "data1",
								"dataSrc" : "demo",
								"type" : "GET"
							}
						});
	});
</script>
</head>
<body id="dt_example">

	<div id="dynamic">
		<table cellpadding="0" cellspacing="0" border="0" class="display"
			id="example">
			<thead>
				<tr>			
					<th width="10%">check_pointID</th>
					<th width="10%">class_session</th>
					<th width="10%">team_number</th>
					<th width="10%">creation_date</th>
					<th width="10%">due_date</th>
					<th width="10%">issue_status</th>
					<th width="10%">closed_date</th>
					<th width="10%">description</th>
					<th width="10%">email_notification</th>


				</tr>
			</thead>
		</table>
	</div>
</body>

</html>