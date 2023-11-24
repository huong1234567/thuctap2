package com.poly.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.dao.AccountDAO;
import com.poly.dao.OrderDAO;
import com.poly.entity.Order;
import com.poly.service.OrdersService;

@Service
public class OrdersServiceImpl implements OrdersService {

	@Autowired
	OrderDAO odao;
	
	@Autowired
	AccountDAO adao;

	@Override
	public List<Order> findAll() {
		return odao.findAll();
	}
	
	@Override
	public List<Order> findByUsername(String username) {
		return odao.findByUsername(username);
	}
}
