package sfsu.edu.controller;

import java.io.IOException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet(value="/hello")
public class HelloServlet extends GenericServlet {

  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public void service(ServletRequest req, ServletResponse res)
    throws IOException, ServletException
  {
    res.getWriter().println("I came here");
  }
}