package com.poly.service;

import java.util.List;

import com.poly.entity.Order;

public interface OrdersService {

	List<Order> findByUsername(String username);

//	Optional<Order> findOrderByUsername(String username);

	List<Order> findAll();

}
