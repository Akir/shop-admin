package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.service.UsernameService;

@Controller
public class UsernameController {
	private UsernameService usernameService;

	public UsernameController(UsernameService usernameService) {
		this.usernameService = usernameService;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/Username")
	public String list(Model model) {
		model.addAttribute("usernames", usernameService.findAll());
		return "Username-list";
	}
}
