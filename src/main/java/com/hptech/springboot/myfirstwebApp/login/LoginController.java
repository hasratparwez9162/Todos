package com.hptech.springboot.myfirstwebApp.login;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);



	@RequestMapping(value = "/" ,method= RequestMethod.GET)
	public String goToLoginPage( ModelMap model) {
		model.put("name","Hasrat");
		return "welcome";
}




}
