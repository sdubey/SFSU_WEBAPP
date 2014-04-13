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
import com.stringpool.bean.InstructionLogBean;

@Controller
@RequestMapping("/")
public class BaseController {

	@RequestMapping(value = "/dbtest", method = RequestMethod.GET)
	public String welcome(ModelMap model) {

		model.addAttribute("message",
				"Maven Web Project + Spring 3 MVC - welcome()");
		return "index";

	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public ModelAndView test() {

		ModelAndView model = new ModelAndView("template");
		return model;

	}

	
	@RequestMapping(value = "/test1", method = RequestMethod.GET)
	public ModelAndView test1() {

		ModelAndView model = new ModelAndView("template1");
		return model;

	}
	
	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public ModelAndView validateData(HttpServletRequest request,
			HttpServletResponse response) {

		ModelAndView model = new ModelAndView();
		String user = request.getParameter("username");
		String password = request.getParameter("password");

		System.out.println("user is " + user);
		System.out.println("password is " + password);

		try {
			
			if (DBConnectionUtil.isValidUser(DBConnectionUtil.getConnection(),
					user, password)) {
				model.setViewName("home");
			} else 
			{
				 String message = "OOps!!! Invalid Username/Password";
		            request.setAttribute("message", message);
		       	model.setViewName("login");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		return model;
	}

	@RequestMapping(value = "/addInstruction", method = RequestMethod.POST)
	public ModelAndView addInstruction(HttpServletRequest request,
			HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView("instruction_log_success");
		
	System.out.println(request.getParameter("select_instructor"));	
	System.out.println(request.getParameter("select_team"));	
	System.out.println(request.getParameter("meeting_date"));	
	System.out.println(request.getParameter("meetingReason"));	
	System.out.println(request.getParameter("Choose_absent_member"));	
	System.out.println(request.getParameter("textarea_reason"));	
	System.out.println(request.getParameter("team_lead_effectiveness"));	
	System.out.println(request.getParameter("team_effectiveness"));	
	// session should be taken default
	
	  String instructor = request.getParameter("select_instructor");
	  int team  = Integer.parseInt(request.getParameter("select_team"));
	  String meeting_date= request.getParameter("meeting_date");
	  String meetingReason=  request.getParameter("meetingReason");
	  int absent_member= Integer.parseInt(request.getParameter("Choose_absent_member"));
	  String textarea_reason  =request.getParameter("textarea_reason");
	  int team_lead_effectiveness= Integer.parseInt(request.getParameter("team_lead_effectiveness")) ;
	  int team_effectiveness= Integer.parseInt(request.getParameter("team_effectiveness")) ;
	
	  InstructionLogBean instruction_bean = new InstructionLogBean();
	  instruction_bean.setInstructor(instructor);
	  instruction_bean.setTeam(team);
	  instruction_bean.setMeeting_date(meeting_date);
	  instruction_bean.setMeetingReason(meetingReason);
	  instruction_bean.setAbsent_member(absent_member);
	  instruction_bean.setTextarea_reason(textarea_reason);
	  instruction_bean.setTeam_effectiveness(team_effectiveness);
	  instruction_bean.setTeam_lead_effectiveness(team_lead_effectiveness);
	  
	  
	try {
		DBConnectionUtil.addRecordInstruction(DBConnectionUtil.getConnection(), instruction_bean);
	} catch (SQLException e) {
		e.printStackTrace();
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}	
	
	return model;
	}
	
	
	
	@RequestMapping(value = "/deleteRecord", method = RequestMethod.GET)
	public void DeleteData(HttpServletRequest request,
			HttpServletResponse response) {
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("id is: " + id);
		System.out.println("request received is: " + request.toString());
		System.out.println("yuhoo i came here");
		try {
			DBConnectionUtil.deleteRecord(id, DBConnectionUtil.getConnection());
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/addRecord", method = RequestMethod.POST)
	public ModelAndView AddData(HttpServletRequest request,
			HttpServletResponse response) {

		ModelAndView model = new ModelAndView("create_update_checkpoint");

		// String class_session = request.getParameter("class_session");
		String team_number = request.getParameter("team_number");
		String creation_date = request.getParameter("creation_date");
		String due_date = request.getParameter("due_date");
		String issue_status = request.getParameter("issue_status");
		String closed_date = request.getParameter("closed_date");
		String description = request.getParameter("description");

		System.out.println("team_number " + team_number);
		System.out.println("creation_date " + creation_date);
		System.out.println("due_date " + due_date);
		System.out.println("issue_status " + issue_status);
		System.out.println("closed_date " + closed_date);
		System.out.println("description " + description);

		CheckPointBean check_point = new CheckPointBean();
		check_point.setTeam_number(team_number);
		check_point.setCreation_date(creation_date);
		check_point.setDue_date(due_date);
		check_point.setIssue_status(issue_status);
		check_point.setClosed_date(closed_date);
		check_point.setDescription(description);

		try {
			int id = DBConnectionUtil.addRecord(
					DBConnectionUtil.getConnection(), check_point);
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

	@RequestMapping(value = "/updateRecord", method = RequestMethod.POST)
	public void UpdateData(HttpServletRequest request,
			HttpServletResponse response) {
		//ModelAndView model = new ModelAndView("create_update_checkpoint");
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("id is: " + id);
		System.out.println("yup, I came inside update record!");
		System.out.println("column-name is: " + request.getParameter("columnName"));
		System.out.println("column-id is: " + request.getParameter("columnId"));
		System.out.println("column-position is: " + request.getParameter("columnPosition"));
		System.out.println("rowId is: " + request.getParameter("rowId"));
		System.out.println("value is: " + request.getParameter("value"));
	
		
		try {
			DBConnectionUtil.updateCheckpointRecord(id, DBConnectionUtil.getConnection(),request.getParameter("value"),
					Integer.parseInt(request.getParameter("columnId")));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//return model;
	
	}
	
	

	@RequestMapping(value = "/export_logs", method = RequestMethod.GET)
	public ModelAndView getExport_logs() {

		ModelAndView model = new ModelAndView("export_logs");
		return model;

	}

	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public ModelAndView getTests() {

		ModelAndView model = new ModelAndView("about");
		return model;

	}
	
	
	

	@RequestMapping(value = "/privacy", method = RequestMethod.GET)
	public ModelAndView getPrivecy() {

		ModelAndView model = new ModelAndView("privacy");
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

	
	
	

	@RequestMapping(value = "/admin_login", method = RequestMethod.GET)
	public ModelAndView getAdminLogin() {

		ModelAndView model = new ModelAndView("admin_login");
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

	@RequestMapping(value = "/sendemail", method = RequestMethod.POST)
	public ModelAndView sendEmail(HttpServletRequest request,
			HttpServletResponse response) {
		int checkPointId = Integer.parseInt(request.getParameter("checkPointId"));
		ModelAndView model = new ModelAndView("email");
		System.out.println("yup, I came inside send email function!");
		System.out.println("id is: " + checkPointId);
		return model;
	}
	
}