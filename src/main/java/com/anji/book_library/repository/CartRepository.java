package com.anji.book_library.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.anji.book_library.entity.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer>{

}
