package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.model.CellPhone;
import shop.service.CellPhoneService;

@Controller
public class CellPhoneController {
	private CellPhoneService cellPhoneService;

	@Autowired
	public CellPhoneController(CellPhoneService cellPhoneService) {
		this.cellPhoneService = cellPhoneService;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/CellPhone/add")
	public String add(@ModelAttribute CellPhone cellPhone) {
		return "CellPhone-add";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/CellPhone/add")
	public String create(@ModelAttribute CellPhone cellPhone) {
		cellPhoneService.create(cellPhone);
		return "redirect:/CellPhone";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/CellPhone")
	public String findAll(Model model) {
		model.addAttribute("CellPhones", cellPhoneService.findAll());
		return "CellPhone-list";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/CellPhone/{id}")
	public String detail(@PathVariable long id, Model model) {
		model.addAttribute("CellPhone", cellPhoneService.findOne(id));
		return "CellPhone-detail";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/CellPhone/{id}/delete")
	public String delete(@PathVariable long id) {
		cellPhoneService.delete(id);
		return "redirect:/CellPhone";
	}
}
