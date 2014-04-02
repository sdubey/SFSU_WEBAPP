package com.stringpool.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class DBConnectionUtil {

	/**
	 * @param args
	 * @throws SQLException 
	 * @throws ClassNotFoundException 
	 */
	
	
	public static int addRecordInstruction(Connection connection, InstructionLogBean instructor_log)
	{
		int autoIncKeyFromFunc = -1;
		PreparedStatement preparedStatement = null;
		Statement stmt = null;
		ResultSet rs = null;

		String inserStatement= "insert into InstructionLogs values(null,'f2014',?,?,?,?,?,?,?,?)";

		try {
			preparedStatement = connection
				      .prepareStatement(inserStatement);
			
			stmt = connection.createStatement();
			
		//  insert into InstructionLogs values(null,'f2014','Sonal',6,'2014-02-22','agile',0,'none',4,5)
			
			preparedStatement.setString(1,instructor_log.getInstructor());
			preparedStatement.setInt(2,instructor_log.getTeam());
			preparedStatement.setString(3,instructor_log.getMeeting_date());
			preparedStatement.setString(4, instructor_log.getMeetingReason());
			preparedStatement.setInt(5, instructor_log.getAbsent_member());
			preparedStatement.setString(6, instructor_log.getTextarea_reason());
			preparedStatement.setInt(7, instructor_log.getTeam_lead_effectiveness());
			preparedStatement.setInt(8, instructor_log.getTeam_effectiveness());
			
			
			System.out.println("prepared ststement is "+ preparedStatement);
			
		    preparedStatement.executeUpdate();
		    
		    
		    
		    rs = stmt.executeQuery("SELECT LAST_INSERT_ID()");

		    if (rs.next()) {
		        autoIncKeyFromFunc = rs.getInt(1);
		    } else {
		    }

		    rs.close();

		    System.out.println("Key returned from " +
		                       "'SELECT LAST_INSERT_ID()': " +
		                       autoIncKeyFromFunc);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return autoIncKeyFromFunc;

	}
	
	public static int addRecord(Connection connection, CheckPointBean checkpoint)
	{
		int autoIncKeyFromFunc = -1;
		PreparedStatement preparedStatement = null;
		Statement stmt = null;
		ResultSet rs = null;

		//String deleteSQL = "insert into checkpoints values(?,?,?,?,?) ";
		
		String insertSQL= "insert into checkpoints values (null,'S2014',?,?,?,?,?,?,'Y')";
		
		try {
			preparedStatement = connection
				      .prepareStatement(insertSQL);
			
			stmt = connection.createStatement();
			
			preparedStatement.setString(1,checkpoint.getTeam_number());
			preparedStatement.setString(2,checkpoint.getCreation_date());
			preparedStatement.setString(3, checkpoint.getDue_date());
			preparedStatement.setString(4, checkpoint.getIssue_status());
			preparedStatement.setString(5, checkpoint.getClosed_date());
			preparedStatement.setString(6, checkpoint.getDescription());
			
			
			System.out.println("prepared ststement is "+ preparedStatement);
			
		    preparedStatement.executeUpdate();
		    
		    
		    
		    rs = stmt.executeQuery("SELECT LAST_INSERT_ID()");

		    if (rs.next()) {
		        autoIncKeyFromFunc = rs.getInt(1);
		    } else {
		    }

		    rs.close();

		    System.out.println("Key returned from " +
		                       "'SELECT LAST_INSERT_ID()': " +
		                       autoIncKeyFromFunc);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return autoIncKeyFromFunc;
	}
	
	
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException
	{
		 Connection connection = null;
		 
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/test","root", "Password1");
	
		 return connection;
	}
	
	
	
	public static void updateCheckpointRecord(int id, Connection connection, String updatedValue, int colIdx) throws SQLException
	{
	
		String field = null;
		
		if (colIdx == 0)
			field = "issue_status";
		else if(colIdx == 1)
			field="team_number";
		else if (colIdx == 2)
			field="creation_date";
		else if (colIdx == 3)
			field="due_date";
		else if (colIdx == 4)
			field="closed_date";
		else if (colIdx == 5)
			field="description";
		else{
		}
		PreparedStatement preparedStatement = null;
		String updateStatement = "update checkpoints set "+field+" = ? where check_pointID = "+id;
		
		preparedStatement = connection
			      .prepareStatement(updateStatement);
		preparedStatement.setString(1,updatedValue);
		preparedStatement.executeUpdate();
		System.out.println(updateStatement);
		
	}
	
	
	public static void deleteRecord(int id, Connection connection)
	{
		PreparedStatement preparedStatement = null;
	
		String deleteSQL = "delete from checkpoints where check_pointID = ?";
		try {
			preparedStatement = connection
				      .prepareStatement(deleteSQL);
			preparedStatement.setInt(1,id);
			preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public static List<CheckPointBean> getDBData(Connection connection)
	{
		  Statement statement = null;
		  ResultSet resultSet = null;
		  List<CheckPointBean> lst = new ArrayList<CheckPointBean>();
					 
			try
			{
				
				statement = connection.createStatement();
			      resultSet = statement
			          .executeQuery("select * from checkpoints");
			
			      while (resultSet.next())
			      {	 			    	  
			    	  CheckPointBean obj = new CheckPointBean();
			    	  obj.setCheck_pointID(resultSet.getString("check_pointID"));
			    	  obj.setClass_session(resultSet.getString("class_session"));
			    	  obj.setClosed_date(resultSet.getString("closed_date"));
			    	  obj.setCreation_date(resultSet.getString("creation_date"));
			    	  obj.setDescription(resultSet.getString("description"));
			    	  obj.setDue_date(resultSet.getString("due_date"));
			    	  obj.setEmail_notification(resultSet.getString("email_notification"));
			    	  obj.setIssue_status(resultSet.getString("issue_status"));
			    	  obj.setTeam_number(resultSet.getString("team_number"));
			    	  lst.add(obj);
			      }		
			
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return lst;
	
	}
	
	
	
	public static List<InstructionLogBean> getInstructionLogData(Connection connection)
	{
		  Statement statement = null;
		  ResultSet resultSet = null;
		  List<InstructionLogBean> lst = new ArrayList<InstructionLogBean>();
					 
			try
			{
				
				statement = connection.createStatement();
			      resultSet = statement
			          .executeQuery("select * from InstructionLogs");
	
			      while (resultSet.next())
			      {	 			    	  
			    	  InstructionLogBean obj = new InstructionLogBean();
			    	  obj.setTeam(resultSet.getInt("team"));
			    	  obj.setSemester(resultSet.getString("semester"));
			    	  obj.setInstructor(resultSet.getString("instructor"));
			    	  obj.setMeeting_date(resultSet.getString("meeting_date"));
			    	  obj.setAbsent_member(resultSet.getInt("absent_member"));
			    	  obj.setTextarea_reason(resultSet.getString("absence_reason"));
			    	  obj.setTeam_lead_effectiveness(resultSet.getInt("team_lead_effectiveness"));
			    	  obj.setTeam_effectiveness(resultSet.getInt("team_effectiveness"));
			    	  obj.setLog_id(resultSet.getInt("log_id"));
				    	  
			    	  lst.add(obj);
			      }		
			
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return lst;
	
	}
	
}