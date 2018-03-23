package com.ShoppingMania2.dao;

import java.util.List;

import com.ShoppingMania2.model.Orders;
import com.ShoppingMania2.model.ShippingAddress;

public interface OrdersDAO {
		boolean insertAddress(ShippingAddress shippingAddress);

		boolean insertOrders(Orders orders);

		List<Orders> getOrdersByUser(String username);

}
