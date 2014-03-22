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

        <script src="resources/js/jquery.min.js" type="text/javascript"></script>
        <script src="resources/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="resources/js/jquery.jeditable.js" type="text/javascript"></script>
        <script src="resources/js/jquery-ui.js" type="text/javascript"></script>
        <script src="resources/js/jquery.validate.js" type="text/javascript"></script>
        <script src="resources/js/jquery.dataTables.editable.js" type="text/javascript"></script>
        
        <script type="text/javascript">
        $(document).ready(function () {
            $("#companies").dataTable({"sPaginationType": "full_numbers",
 			   						   "bJQueryUI": true})
            .makeEditable({sDeleteHttpMethod: "GET",
                		   sDeleteURL: "/Company/DeleteCompany",
                		   sDeleteRowButtonId: "btnDeleteRow",
                		   sAddNewRowFormId: "formAddNewRow",
                           sAddNewRowButtonId: "btnAddNewRow",
                           sAddNewRowOkButtonId: "btnAddNewRowOk",
                           sAddNewRowCancelButtonId: "btnAddNewRowCancel",
                           sAddURL: "/Company/AddNewRow",
                           sAddHttpMethod: "POST",});
        });
        </script>
        
        
    </head>
    <body id="dt_example">
        <div id="container">
            <div id="demo_jui">
            <%@ include file="header.jsp"%>
	
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
                
                <button id="btnDeleteRow">Delete an entry</button>
                <button id="btnAddNewRow">Add an entry</button>
                
      			<form id="formAddNewRow" action="#" title="Add new row">
			        <input type="hidden" id="id" name="id" value="-1" rel="0" />
			        <label for="class_session">class_session</label><input type="text" 
			               name="class_session" id="class_session" class="required" rel="1" />
			        <br />
			        <label for="team_number">team_number</label>
			          <input type="text" name="team_number" id="team_number" rel="2" />
			        <br />
			        <label for="creation_date">creation_date</label>
			          <input type="text" name="creation_date" id="creation_date" rel="3"/>
			        <br />
			        <label for="due_date">due_date</label>
			          <input type="text" name="due_date" id="due_date" rel="4"/>
			        <br />
			        <label for="issue_status">issue_status</label>
			        	 <input type="text" name="issue_status" id="issue_status" rel="5"/>
			        <br />
			    	<button id="btnAddNewRowOk">Add</button>
			    	<button id="btnAddNewRowCancel">Cancel</button>
				</form>
      			
      			
         </div>
        </div> 
    </body>
</html>