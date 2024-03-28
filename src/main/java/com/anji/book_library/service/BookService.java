package com.anji.book_library.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.anji.book_library.entity.Books;
import com.anji.book_library.repository.BookRepository;

@Service
public class BookService {

	@Autowired
 public BookRepository bookRepository;
	static int i;
	
	public boolean addBookDetails(Books books)
	{
		if (null !=bookRepository.findByBookName(books.getBookName()))
			return false;
		
	  return  (null == bookRepository.save(books)) ? false : true;
	}
	
	public List<Books> viewBooks()
	{
		return bookRepository.findAll(Sort.by("id"));
	}
	
	
	public int updateBook(Books books)
	{
		return bookRepository.updateBookDetails(books.getAuthor(), books.getBookName(), books.getBookQuantitys(), books.getPrice(), books.getId());
	}

	public void deleteByid(int id) {
		bookRepository.deleteById(id);
	}
	
	public List<Books> getFirst5Rows(int page)
	{
		i= page;
		Pageable pageable = PageRequest.of(i++, 5);
		
		 List<Books> content = bookRepository.findAll(pageable).getContent();
		return content;
		
	}

	
	
}
