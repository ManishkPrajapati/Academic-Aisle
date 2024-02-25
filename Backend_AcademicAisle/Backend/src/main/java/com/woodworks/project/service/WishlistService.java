package com.woodworks.project.service;

import java.util.List;

import com.woodworks.project.entities.OrderDetails;

public interface WishlistService {

	

	OrderDetails addWishList(int customerId, int productId);

	void deleteById(int id);

	List<OrderDetails> getAllWishlist(int id);
	
}
