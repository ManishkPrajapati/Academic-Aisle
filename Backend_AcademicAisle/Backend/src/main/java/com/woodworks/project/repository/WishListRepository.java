package com.woodworks.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.woodworks.project.entities.OrderDetails;
import com.woodworks.project.entities.Product;

public interface WishListRepository extends JpaRepository<OrderDetails, Integer>{

	
	@Query(value = "SELECT * FROM Wishlist WHERE customerId = :id", nativeQuery = true)
	List<OrderDetails> getAllwishList(int id);

	
	
	
	
}
