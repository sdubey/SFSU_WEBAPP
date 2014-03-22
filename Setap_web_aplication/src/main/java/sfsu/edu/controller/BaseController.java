package sfsu.edu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class BaseController {

	@RequestMapping(value = "/dbtest", method = RequestMethod.GET)
	public String welcome(ModelMap model) {

		model.addAttribute("message",
				"Maven Web Project + Spring 3 MVC - welcome()");

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "index";

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