package com.setap.persistence;

import org.hibernate.Session;
import com.setap.persistence.HibernateUtil;
import com.stringpool.bean.SetapUser;
public class Main {

	 public static void main( String[] args )
	    {
	        System.out.println("Maven + Hibernate + MySQL");
	        Session session = HibernateUtil.getSessionFactory().openSession();
	        
	        session.beginTransaction();
	        SetapUser stock = new SetapUser();
	 
	        stock.setUserEmailId("sfsu@mail.sfsu.edu");
	        stock.setPassword("sfsu");
	 
	        session.save(stock);
	        session.getTransaction().commit();
	    }
}
