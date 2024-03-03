package com.Academicaisle.project.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Academicaisle.project.entities.Wishlist;


@Repository
public interface OrderDetailsRepository extends JpaRepository<Wishlist, Integer> {

//	List<OrderDetails> findByOrders(Orders order);
	Optional<Wishlist> findById(int id);
	
}
