package shop.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import shop.mapper.OrderItemMapper;
import shop.mapper.OrderMapper;
import shop.model.Order;
import shop.model.OrderItem;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {
	private OrderMapper ordermapper;
	private OrderItemMapper orderItemMapper;

	public OrderServiceImpl(OrderMapper ordermapper, OrderItemMapper orderItemMapper) {
		this.ordermapper = ordermapper;
		this.orderItemMapper = orderItemMapper;
	}

	@Override
	public List<Order> findAll() {
		return ordermapper.findAll();
	}

	@Override
	public Order findOne(Long id) {
		Order order = ordermapper.findOne(id);
		List<OrderItem> orderItems = orderItemMapper.findAllByOrderId(order.getId());
		long totalAmount = 0;
		for (OrderItem orderItem : orderItems) {
			totalAmount += orderItem.getCellPhone().getPrice() * orderItem.getQuantity();
		}
		order.setTotalAmount(totalAmount);
		order.setOrderItems(orderItems);
		return order;
	}

}
