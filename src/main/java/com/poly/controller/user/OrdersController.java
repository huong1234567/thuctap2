package com.poly.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.poly.dao.AccountDAO;
import com.poly.dao.OrderDAO;
import com.poly.service.AccountService;
import com.poly.service.OrdersService;

@Controller
public class OrdersController {

	@Autowired
	AccountDAO adao;

	@Autowired
	OrderDAO odao;

	@Autowired
	AccountService accountService;

	@Autowired
	OrdersService ordersService;

	@GetMapping("/myorder/{id}")
	public String myorder(Model model, @PathVariable("id") String id) {
		model.addAttribute("order", ordersService.findByUsername(id));
		model.addAttribute("account", accountService.findById(id).get());
		return "user/myorder";
	}

}