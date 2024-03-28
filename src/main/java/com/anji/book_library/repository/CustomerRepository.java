package com.anji.book_library.repository;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.anji.book_library.entity.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, UUID>{

	//@Query(name = "select * from customer where user_name=?1 and password=?2",nativeQuery = true)
	Customer findByUserNameAndPassword(String userName,String password);
	
	
	 
	
}
