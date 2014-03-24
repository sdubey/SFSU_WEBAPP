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
                		   sDeleteURL: "deleteRecord",
                		   sDeleteRowButtonId: "btnDeleteRow",
                		   sAddNewRowFormId: "formAddNewRow",
                           sAddNewRowButtonId: "btnAddNewRow",
                           sAddNewRowOkButtonId: "btnAddNewRowOk",
                           sAddNewRowCancelButtonId: "btnAddNewRowCancel",
                           sAddURL: "addRecord",
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
                        	 <th>issue_status</th>                       
                         	 <th>team</th>
							 <th>creation_date</th>
							 <th> due_date__</th>
							 <th>closed_date</th>
							 <th>description</th>
							  <th>email</th>
							 <th>Send Email</th>
					    </tr>
                    </thead>
                    <tbody>
                      <% for(CheckPointBean c: DBConnectionUtil.getDBData(DBConnectionUtil.getConnection())){ %>
	                    <tr id="<%=c.getCheck_pointID()%>">
	                         <td><%=c.getIssue_status()%></td>
	                         <td><%=c.getTeam_number()%></td>
	                         <td><%=c.getCreation_date()%></td>
	                         <td><%=c.getDue_date()%></td>
	                         <td><%=c.getClosed_date()%></td>
	                         <td><%=c.getDescription()%></td>
	                         <td><%=c.getEmail_notification()%></td>
	                         <td><button id="btnmail">Send Mail</button></td>
	                   </tr>
	                <% } %>
                    </tbody>
                </table>
                
                <button id="btnDeleteRow">Delete an entry</button>
                <button id="btnAddNewRow">Add an entry</button>
                
      			<form id="formAddNewRow" action="#" title="Add new row">
			        <label for="issue_status">Status :</label>
			        <input type="text" name="issue_status" id="issue_status" rel="0" />
					<br />
					
			        <label for="team_number">team_number</label>
			          <input type="text" name="team_number" id="team_number" rel="1" />
			        <br />
			        
			        <label for="creation_date">creation_date</label>
			          <input type="text" name="creation_date" id="creation_date" rel="2">
			        <br />
			        
			        <label for="due_date">due_date</label>
			        	<input type="text" name ="due_date" id="due_date" rel="3">
			        <br />
			        
			        <label for="closed_date">closed_date</label>
			        	<input type="text" name="closed_date" id="closed_date" rel="4">
			        <br />
					 
					<label for="description">Description</label>
			        	 <input type="text" name="description" id="description" rel="5" />
			        <br />
			        
			        <input type="hidden" id="id" name="id" value="N" rel="6" />
			        <input type="hidden" id="id" name="id" value="<button id='btnmail'>Send Mail</button>" rel="7" />		        
			        
			       	<button id="btnAddNewRowOk">Add</button>
			    	<button id="btnAddNewRowCancel">Cancel</button>
				</form>
      			
      			
         </div>
        </div> 
    </body>
</html>