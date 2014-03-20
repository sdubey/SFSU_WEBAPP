package com.stringpool.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class DBConnectionUtil {

	/**
	 * @param args
	 */
	
	
	
	@SuppressWarnings("null")
	public static List<CheckPointBean> getDBData()
	{
		  Statement statement = null;
		  ResultSet resultSet = null;
		  Connection connection = null;
		  List<CheckPointBean> lst = new ArrayList<CheckPointBean>();
			  

	        System.out.println("-------- MySQL JDBC Connection Testing ------------");
			 
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager
						.getConnection("jdbc:mysql://localhost:3306/test","root", "abcd!234");
				
				statement = connection.createStatement();
			      // Result set get the result of the SQL query
			      resultSet = statement
			          .executeQuery("select * from checkpoints");
			
			      while (resultSet.next())
			      {	 
			    	  CheckPointBean obj = new CheckPointBean();
			    	  obj.setCheck_pointID(resultSet.getString(1));
			    	  obj.setClass_session(resultSet.getString(2));
			    	  obj.setClosed_date(resultSet.getString(3));
			    	  obj.setCreation_date(resultSet.getString(4));
			    	  obj.setDescription(resultSet.getString(5));
			    	  obj.setDue_date(resultSet.getString(6));
			    	  obj.setEmail_notification(resultSet.getString(7));
			    	  obj.setIssue_status(resultSet.getString(6));
			    	  obj.setTeam_number(resultSet.getString(9));
			    
			    	  lst.add(obj);
			      }
				
			
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return lst;
	
	}
	
	
	
	public static void main(String[] args) {
		
		System.out.println(getDBData());
		}

}