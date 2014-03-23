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
	
	
	public static void addRecord(Connection connection, CheckPointBean checkpoint)
	{
		PreparedStatement preparedStatement = null;
		//String deleteSQL = "insert into checkpoints values(?,?,?,?,?) ";
		String insertSQL= "insert into checkpoints values (null,?,?,?,?,?,'20140206','testing','Y')";


		try {
			preparedStatement = connection
				      .prepareStatement(insertSQL);
			
			preparedStatement.setString(1,checkpoint.getClass_session());
			preparedStatement.setString(2,checkpoint.getTeam_number());
			preparedStatement.setString(3,checkpoint.getCreation_date());
			preparedStatement.setString(4, checkpoint.getDue_date());
			preparedStatement.setString(5, checkpoint.getIssue_status());
			
		    preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException
	{
		 Connection connection = null;
		 
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/test","root", "Password1");
	
		 return connection;
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
			// TODO Auto-generated catch block
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
	
}