package shop.controller;

import org.springframework.stereotype.Controller;

import shop.service.CellPhoneService;

@Controller
public class CellPhoneController {
	private CellPhoneService cellPhoneService;

	public CellPhoneController(CellPhoneService cellPhoneService) {
		this.cellPhoneService = cellPhoneService;
	}
}
