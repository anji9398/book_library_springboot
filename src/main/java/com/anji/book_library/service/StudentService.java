package com.anji.book_library.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anji.book_library.entity.Books;
import com.anji.book_library.entity.Student;
import com.anji.book_library.repository.BookRepository;
import com.anji.book_library.repository.StudentRepository;

@Service
public class StudentService {
    
	@Autowired
	StudentRepository repository;
	
	@Autowired
	BookRepository bookRepository;
	
	public Student studentRegister(Student student)
	{
		return repository.save(student);
	}
	
	public Student userLoginCheck(String uname,String password) {
		 return  repository.findByStuNameAndPassword(uname,password);
	}
	
	
	public List<Student> checkUser(String name)
	{
	  return repository.findByStuName(name);
	}
	
	public List<Books> viewAllBooksToStudent()
	{
		return bookRepository.findAll();
	}
	
}
