package com.anji.book_library.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.anji.book_library.entity.Books;
import com.anji.book_library.entity.Cart;
import com.anji.book_library.service.BookService;
import com.anji.book_library.service.CartService;
import com.anji.book_library.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class BookController {

	@Autowired
	BookService bookService;

	@Autowired
	CartService cartService;

	@Autowired
	CustomerService customerService;

	@RequestMapping(value = "/editBook", method = { RequestMethod.POST, RequestMethod.PUT })
	public ModelAndView updateBookDetails(HttpServletRequest httpServletRequest) {
		

		ModelAndView andView = new ModelAndView();

		Books books = new Books();
		
		books.setId(Integer.parseInt(httpServletRequest.getParameter("bookId")));
		books.setBookName(httpServletRequest.getParameter("bookName"));
		books.setAuthor(httpServletRequest.getParameter("authorName"));
		books.setBookQuantitys(Integer.parseInt(httpServletRequest.getParameter("bookQuality")));
		books.setPrice(Double.parseDouble(httpServletRequest.getParameter("bookPrice")));
		System.out.println("viewBooks");

		Books booksDB = bookService.bookRepository.findById(Integer.parseInt(httpServletRequest.getParameter("bookId")))
				.get();

		if (books.getBookName().equals(booksDB.getBookName()) && books.getAuthor().equals(booksDB.getAuthor())
				&& books.getBookQuantitys() == booksDB.getBookQuantitys() && books.getPrice() == booksDB.getPrice()) {

			andView.addObject("validation", "Data is Same Updated");
			andView.setViewName("EditBook");

		} else {
			bookService.updateBook(books);
			
			andView.addObject("book", books);
			andView.setViewName("EditBook");
			andView.addObject("validation", "Data is Updated");
			andView.addObject("alert_class", "alert alert-success");
		}
		
		return andView;
	}

	@RequestMapping(value = "/delete", method = { RequestMethod.POST, RequestMethod.GET })
	public String deleteBook(HttpServletRequest httpServletRequest) {

		String parameter = httpServletRequest.getParameter("code");
		int id = Integer.parseInt(parameter.substring(1, parameter.length() - 1));

		cartService.cartRepository.deleteById(id);
		bookService.deleteByid(id);
		ModelAndView andView = new ModelAndView();
		andView.addObject("bin", "bin");
		andView.setViewName("bin");

		return "redirect:/viewBooks";

	}

	@RequestMapping(value = "/addcart", method = { RequestMethod.POST, RequestMethod.GET })
	public String addCartBook(HttpServletRequest httpServletRequest) {
		
		int id = Integer.parseInt(httpServletRequest.getParameter("code"));
		String name = httpServletRequest.getParameter("name");
		
		
	    boolean empty = cartService.cartRepository.findById(id).isEmpty();
	    if(empty ==true)
	    {
	      Cart cart = cartService.addCart(bookService.bookRepository.findById(id).get(),name);
	      bookService.bookRepository.updateById(id);
	    }
		return "redirect:/viewBooksForStudent?name=" + name+"&code="+id;
			
	}

}
