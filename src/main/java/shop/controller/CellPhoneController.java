package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.controller.form.CellPhoneForm;
import shop.service.BrandService;
import shop.service.CellPhoneService;

@Controller
public class CellPhoneController {
	private CellPhoneService cellPhoneService;
	private BrandService brandService;

	@Autowired
	public CellPhoneController(CellPhoneService cellPhoneService, BrandService brandService) {
		this.cellPhoneService = cellPhoneService;
		this.brandService = brandService;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/CellPhone/add")
	public String add(@ModelAttribute CellPhoneForm cellPhoneForm, Model model) {
		model.addAttribute("brand", brandService.findAll());
		return "CellPhone-add";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/CellPhone/add")
	public String create(@ModelAttribute CellPhoneForm cellPhoneForm) {
		cellPhoneService.create(cellPhoneForm.toCellPhone());
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
	
	@RequestMapping(method = RequestMethod.GET, value = "/CellPhone/edit/{id}")
	public String edit(@PathVariable long id, Model model) {
		CellPhoneForm cellPhoneForm = cellPhoneService.findOne(id).toCellPhoneForm();
		model.addAttribute("cellPhoneForm", cellPhoneForm);
		model.addAttribute("brand", brandService.findAll());
		return "CellPhone-add";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/CellPhone/edit/{id}")
	public String update(@ModelAttribute CellPhoneForm cellPhoneForm, @PathVariable long id) {
		cellPhoneService.update(cellPhoneForm.toCellPhone());
		return "redirect:/CellPhone/"+id;
	}
}
