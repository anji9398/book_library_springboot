package com.anji.book_library.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.anji.book_library.entity.Cart;
import com.anji.book_library.service.BookService;
import com.anji.book_library.service.CartService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class CartController {
	
	@Autowired
	CartService cartService;
	
	@Autowired
	BookService bookService;
	
	@GetMapping("/seeCartBooks")
   public ModelAndView seeCartBooks()
   {
	   List<Cart> all = cartService.cartRepository.findAll();
	   
	   ModelAndView andView = new ModelAndView();
	   andView.addObject("cartData", all);
	   andView.setViewName("CartBooks");
	   return andView;
   }
	
	@RequestMapping(value = "/delete/cart",method = {RequestMethod.DELETE,RequestMethod.GET})
	public String deleteFromCart(HttpServletRequest httpServletRequest)
	{
		int id = Integer.parseInt(httpServletRequest.getParameter("id"));
		cartService.cartRepository.deleteById(id);
		bookService.bookRepository.updateIncById(id);

		return "redirect:/seeCartBooks";
		
	}
	
	@RequestMapping
	public void buyBooksInCard()
	{
		
	}
	
}
