package com.anji.book_library.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.anji.book_library.entity.Books;
import com.anji.book_library.entity.Student;
import com.anji.book_library.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class StudentController {

	@Autowired
	StudentService service;

	ModelAndView andView = null;

	@PostMapping("/register")
	public String studentRegistration(HttpServletRequest httpServletRequest) {
		Student student = new Student();
		student.setStuName(httpServletRequest.getParameter("stuName"));
		student.setPassword(httpServletRequest.getParameter("password"));
		student.setDepartment(httpServletRequest.getParameter("department"));
		student.setContact(httpServletRequest.getParameter("contact"));

		if (0 == service.checkUser(student.getStuName()).size()) {

			service.studentRegister(student);
			return "redirect:/home";

		} else {
			andView = new ModelAndView();
			return "redirect:/home";
		}
		

	}

	@GetMapping("/viewBooksForStudent")
	public ModelAndView viewBooksForStudent(HttpServletRequest httpServletRequest) 
	{
		List<Books> viewAllBooksToStudent = service.viewAllBooksToStudent();
		andView = new ModelAndView();
		andView.setViewName("viewBooksForStudent");
		andView.addObject("listOfBooks", viewAllBooksToStudent);
		andView.addObject("userName", httpServletRequest.getParameter("name"));
		return andView;
	}
	
	

	@PostMapping("/loginUser")
	public ModelAndView userLogin(HttpServletRequest request) {
		String uname = request.getParameter("username");
		String password = request.getParameter("password");

		andView = new ModelAndView();
		if (null != service.userLoginCheck(uname, password)) {
			andView.setViewName("StudentLogin");
			andView.addObject("userDetails", new Student(null, uname, password, null, null));
		} else {
			andView.setViewName("bin");
			andView.addObject("bin", "Invalid");
		}
		return andView;
	}

}
