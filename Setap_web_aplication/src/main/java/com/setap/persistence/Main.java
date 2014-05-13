package com.setap.persistence;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Main {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String creation_date="05/21/2014";
		    
		    SimpleDateFormat fromUser = new SimpleDateFormat("MM/dd/yyyy");
		    SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd");

		    try {

		        String reformattedStr = myFormat.format(fromUser.parse(creation_date));
		        System.out.println(reformattedStr);
		    } catch (ParseException e) {
		        e.printStackTrace();
		    }
	}
}
