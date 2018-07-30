package shop.mapper;

import java.util.List;

import shop.model.Order;

public interface OrderMapper {

	List<Order> findAll();

	Order findOne(Long id);

}
