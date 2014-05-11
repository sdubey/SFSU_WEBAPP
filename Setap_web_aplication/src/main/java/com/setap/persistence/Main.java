package com.setap.persistence;

public class Main {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		ApplicationProperties prop = new ApplicationProperties();
		System.out.println(prop.getDbuser());
		System.out.println(prop.getDbpassword());
		System.out.println(prop.getDatabase());
	}

}
