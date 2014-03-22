<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.stringpool.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Checkpoints</title>
        <link href="resources/css/demo_page.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/demo_table.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/demo_table_jui.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" media="all" />
        <link href="resources/css/themes/smoothness/jquery-ui-1.7.2.custom.css" rel="stylesheet" type="text/css" media="all" />
        <script src="resources/js/jquery-1.2.6.min.js" type="text/javascript"></script>
        <script src="resources/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script type="text/javascript">
        $(document).ready(function () {
            $("#companies").dataTable({
                "sPaginationType": "full_numbers",
                "bJQueryUI": true
            });
        });
        </script>
    </head>
    <body id="dt_example">
        <div id="container">
            <div id="demo_jui">
                <table id="companies" class="display">
                    <thead>
                        <tr>                       
                             <th>check_pointID </th>
							 <th>class_session</th>
							 <th>team_number</th>
							 <th>creation_date</th>
							 <th>due_date</th>
							 <th>issue_status</th>
					    </tr>
                    </thead>
                    <tbody>
                      <% for(CheckPointBean c: DBConnectionUtil.getDBData()){ %>
                    <tr>
                         <td><%=c.getCheck_pointID()%></td>
                         <td><%=c.getClass_session()%></td>
                         <td><%=c.getTeam_number()%></td>
                         <td><%=c.getCreation_date()%></td>
                         <td><%=c.getDue_date()%></td>
                         <td><%=c.getIssue_status()%></td>
                   </tr>
                <% } %>
                    </tbody>
                </table>
         </div>
        </div> 
    </body>
</html>