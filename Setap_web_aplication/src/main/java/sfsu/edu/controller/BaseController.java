package sfsu.edu.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.stringpool.bean.CheckPointBean;
import com.stringpool.bean.DBConnectionUtil;

@Controller
@RequestMapping("/")
public class BaseController {

	@RequestMapping(value = "/dbtest", method = RequestMethod.GET)
	public String welcome(ModelMap model) {

		model.addAttribute("message",
				"Maven Web Project + Spring 3 MVC - welcome()");
		return "index";

	}
	
	
	@RequestMapping(value = "/deleteRecord", method = RequestMethod.GET)
	public void DeleteData(HttpServletRequest request,HttpServletResponse response) {
	    int id = Integer.parseInt(request.getParameter("id"));	
		System.out.println("id is: " + id);
		System.out.println("request received is: " + request.toString());
		System.out.println("yuhoo i came here");
		try {
			DBConnectionUtil.deleteRecord(id, DBConnectionUtil.getConnection());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	
	@RequestMapping(value = "/addRecord", method = RequestMethod.POST)
	public ModelAndView AddData(HttpServletRequest request,HttpServletResponse response) {
	   
		
		ModelAndView model = new ModelAndView("create_update_checkpoint");
		
		//String class_session = request.getParameter("class_session");	
	    String team_number = request.getParameter("team_number");	
	    String creation_date = request.getParameter("creation_date");	
	    String due_date = request.getParameter("due_date");	
	    String issue_status = request.getParameter("issue_status");	
	    String closed_date = request.getParameter("closed_date");	
	    String description = request.getParameter("description");	
	    
	    System.out.println("team_number "+ team_number);
	    System.out.println("creation_date "+ creation_date);
	    System.out.println("due_date "+ due_date);
	    System.out.println("issue_status "+ issue_status);
	    System.out.println("closed_date "+ closed_date);
	    System.out.println("description "+ description);
	    
		
	    CheckPointBean check_point = new CheckPointBean();
	    check_point.setTeam_number(team_number);
	    check_point.setCreation_date(creation_date);
	    check_point.setDue_date(due_date);
	    check_point.setIssue_status(issue_status);
	    check_point.setClosed_date(closed_date);
	    check_point.setDescription(description);
	    
	    try {
			int id = DBConnectionUtil.addRecord(DBConnectionUtil.getConnection(),check_point);
			response.getWriter().print(id);
	    } catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	    
	    return model;
	  
	}

	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getPages() {

		ModelAndView model = new ModelAndView("login");
		return model;

	}

	@RequestMapping(value = "/terms_conditions", method = RequestMethod.GET)
	public ModelAndView getTermsConditions() {
		ModelAndView model = new ModelAndView("terms_conditions");
		return model;

	}
	
	
	@RequestMapping(value = "/data", method = RequestMethod.GET)
	public ModelAndView getTermsConditions12() {
		ModelAndView model = new ModelAndView("terms_conditions");
		return model;
	}

	@RequestMapping(value = "/checkpoints", method = RequestMethod.GET)
	public ModelAndView getCounselor() {
		ModelAndView model = new ModelAndView("create_update_checkpoint");
		return model;

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView getLogin() {

		ModelAndView model = new ModelAndView("login");
		return model;

	}

	@RequestMapping(value = "/create_checkpoint", method = RequestMethod.GET)
	public ModelAndView getCreate_checkpoint() {

		ModelAndView model = new ModelAndView("create_checkpoint");
		return model;

	}

	@RequestMapping(value = "/InstructorLog", method = RequestMethod.GET)
	public ModelAndView getInstructorLog() {

		ModelAndView model = new ModelAndView("InstructorLog");
		return model;

	}

	@RequestMapping(value = "/about_setap", method = RequestMethod.GET)
	public ModelAndView getSetap() {

		ModelAndView model = new ModelAndView("about_setap");
		return model;

	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView getHome() {

		ModelAndView model = new ModelAndView("home");
		return model;

	}

	@RequestMapping(value = "/ContactUs", method = RequestMethod.GET)
	public ModelAndView getContactUs() {

		ModelAndView model = new ModelAndView("contactUs");
		return model;

	}

	@RequestMapping(value = "/view_data", method = RequestMethod.GET)
	public ModelAndView getViewData() {

		ModelAndView model = new ModelAndView("view_data");
		return model;

	}
	
	@RequestMapping(value = "/view_data1", method = RequestMethod.GET)
	public ModelAndView getViewData1() {

		ModelAndView model = new ModelAndView("view_data");
		return model;

	}
	
	

}