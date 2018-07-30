package shop.service;

import java.util.List;

import shop.model.Order;

public interface OrderService {

	List<Order> findAll();

	Order findOne(Long id);

}
