package com.anji.book_library.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anji.book_library.entity.Books;
import com.anji.book_library.repository.BookRepository;
import com.anji.book_library.repository.CustomerRepository;

@Service
public class CustomerService {

	@Autowired
 	CustomerRepository customerRepository;
	
	@Autowired
	BookRepository bookRepository;
	
	 

	public Books findById(int id) {
          	 return  bookRepository.findById(id).get();
          	 
	}
	
	
}
