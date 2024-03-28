package com.anji.book_library.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.anji.book_library.entity.Books;
import com.anji.book_library.entity.Customer;
import com.anji.book_library.entity.Student;
import com.anji.book_library.repository.CustomerRepository;
import com.anji.book_library.repository.StudentRepository;
import com.anji.book_library.service.BookService;
import com.anji.book_library.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

	@Autowired
	CustomerRepository customerRepository;

	@Autowired
	CustomerService customerService;

	@Autowired
	BookService bookService;

	@Autowired
	StudentRepository service;

	@GetMapping("/home")
	public String homePage() {
		return "home";
	}

	@GetMapping("/customer")
	public String CustomerPage() {
		return "customer";
	}
	
	@GetMapping("/addBooks")
	public String addBooks()
	{
		return "addBooks";
	}

	
	
	@RequestMapping(value = "/login", method = {RequestMethod.POST,RequestMethod
			.GET})
	public ModelAndView CustomerPageDetails(HttpServletRequest httpServletRequest) {
		ModelAndView andView = new ModelAndView();
		Customer byUserNameAndPassword = customerRepository.findByUserNameAndPassword(
				httpServletRequest.getParameter("username"), httpServletRequest.getParameter("password"));
		if (byUserNameAndPassword == null) {
			andView.addObject("bin", "not login");
			andView.setViewName("bin");
		} else {
			andView.addObject("bin","Admin Name is "+httpServletRequest.getParameter("username"));
			andView.setViewName("AfterCustomerLogin");
		}
		return andView;
	}

	
	@PostMapping("/addBook")
	public ModelAndView addBookDetails(HttpServletRequest httpServletRequest) {

		Books books = new Books();
		books.setBookName(httpServletRequest.getParameter("bookName"));
		books.setAuthor(httpServletRequest.getParameter("authorName"));
		books.setPrice(Double.parseDouble(httpServletRequest.getParameter("bookPrice")));
		books.setBookQuantitys(Integer.parseInt(httpServletRequest.getParameter("bookQuality")));

		ModelAndView andView = new ModelAndView();
		
		if (true == bookService.addBookDetails(books)) {
			System.out.println("hi");
			andView.addObject("bookvalid", "Book Added");
			andView.setViewName("addBooks");

		} else {
			
			andView.addObject("bookvalid", "Book is't Added. Already Book is there.");
			andView.addObject("warning", "alert alert-warning");
			andView.setViewName("addBooks");
		}

		return andView;

	}

	@GetMapping("/viewBooks")
	public ModelAndView viewBooks() 
	{
		List<Books> first5Rows = bookService.getFirst5Rows(0);
		ModelAndView andView = new ModelAndView();
		andView.addObject("books", first5Rows);
		andView.setViewName("viewBooks");
		return andView;
	}

	@GetMapping("/first1-5Re")
	public ModelAndView getFirst6Recordes() {
		List<Books> first5Rows = bookService.getFirst5Rows(0);
		ModelAndView andView = new ModelAndView();
		andView.addObject("books", first5Rows);
		andView.setViewName("viewBooks");
		return andView;
	}

	@GetMapping("/first6-10Re")
	public ModelAndView getFirst7Recordes() {
		List<Books> first5Rows = bookService.getFirst5Rows(1);
		ModelAndView andView = new ModelAndView();
		andView.addObject("books", first5Rows);
		andView.setViewName("viewBooks");
		return andView;
	}

	
	@GetMapping("/edit")
	public ModelAndView editBook(HttpServletRequest httpServletRequest) 
	{
		
		String parameter = httpServletRequest.getParameter("code");
		int id = Integer.parseInt(parameter.substring(1, parameter.length() - 1));

		Books byId = customerService.findById(id);

		ModelAndView andView = new ModelAndView();
		andView.addObject("book", byId);
		andView.setViewName("EditBook");

		return andView;
	}


	@GetMapping("/viewUser")
	public ModelAndView viewUsers() {
		List<Student> all = service.findAll();
		ModelAndView andView = new ModelAndView();

		andView.addObject("userList", all);
		andView.setViewName("ViewUser");
		return andView;
	}

	@GetMapping("/userDelete")
	public String deleteUser(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));

		ModelAndView andView = new ModelAndView();

		service.deleteById(Integer.parseInt(request.getParameter("id")));

		return "redirect:/viewUser";

	}

}
