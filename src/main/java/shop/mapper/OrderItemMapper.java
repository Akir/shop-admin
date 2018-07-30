package shop.mapper;

import java.util.List;

import shop.model.OrderItem;

public interface OrderItemMapper {

	List<OrderItem> findAllByOrderId(Long id);

}
