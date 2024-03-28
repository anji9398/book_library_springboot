package com.anji.book_library.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anji.book_library.entity.Books;
import com.anji.book_library.entity.Cart;
import com.anji.book_library.repository.CartRepository;

@Service
public class CartService {
     @Autowired
	 public CartRepository cartRepository;
     
     public Cart addCart(Books book,String name)
     {
    	 Cart cart = new Cart();
   	     cart.setSudentId(name);
    	 cart.setId(book.getId());
    	 cart.setBookName(book.getBookName());
    	 cart.setAuthor(book.getAuthor());
    	 cart.setBookQuantitys(book.getBookQuantitys());
    	 cart.setPrice(book.getPrice());
    	 
    	 return cartRepository.save(cart);
     }
}
