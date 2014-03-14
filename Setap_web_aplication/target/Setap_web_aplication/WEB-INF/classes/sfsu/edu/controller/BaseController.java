package sfsu.edu.controller;

public class BaseController {
	
	@RequestMapping(value="/welcome", method = RequestMethod.GET)
	public String welcome(ModelMap model) {
 
		model.addAttribute("message", "Maven Web Project + Spring 3 MVC - welcome()");
 
		//Spring uses InternalResourceViewResolver and return back index.jsp
		return "index";
 
	}
 
	@RequestMapping(value="/welcome/{name}", method = RequestMethod.GET)
	public String welcomeName(@PathVariable String name, ModelMap model) {
 
		model.addAttribute("message", "Maven Web Project + Spring 3 MVC - " + name);
		return "index";
 
	}
 
}
