package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.service.OrderService;

@Controller
public class OrderController {
	private OrderService orderService;

	public OrderController(OrderService orderService) {
		this.orderService = orderService;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/order")
	public String list(Model model) {
		model.addAttribute("orders", orderService.findAll());
		return "order";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/order/{id}")
	public String detail(@PathVariable Long id, Model model) {
		model.addAttribute("order", orderService.findOne(id));
		return "order-detail";
	}
}
