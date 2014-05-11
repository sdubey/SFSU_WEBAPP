package com.setap.persistence;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ApplicationProperties {

	private String database;
	private String dbuser;
	private String dbpassword;
	private String driverClass;
	
	 
	public String getDriverClass() {
		return driverClass;
	}

	public void setDriverClass(String driverClass) {
		this.driverClass = driverClass;
	}

	public String getDatabase() {
		return database;
	}

	public void setDatabase(String database) {
		this.database = database;
	}

	public String getDbuser() {
		return dbuser;
	}

	public void setDbuser(String dbuser) {
		this.dbuser = dbuser;
	}

	public String getDbpassword() {
		return dbpassword;
	}

	public void setDbpassword(String dbpassword) {
		this.dbpassword = dbpassword;
	}

	public ApplicationProperties()
	{
		Properties prop = new Properties();
		InputStream input = null;
	 
		try {
			
			// this variable takes in the properties file path
			final String value = System.getenv("SETAP_DATA_COLLECTION_PROPERTIES");
			
			System.out.println("Reading properties file located at " + value);
			
			input = new FileInputStream(value);
	 
			// load a properties file
			prop.load(input);
	 
			// get the property value and print it out
			
			this.database=prop.getProperty("database");
			this.dbpassword=prop.getProperty("dbpassword");
			this.dbuser= prop.getProperty("dbuser");
			this.driverClass=prop.getProperty("driver_class");
		    
		} catch (IOException ex) {
			ex.printStackTrace();
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
	}
	
}
