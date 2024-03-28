package com.anji.book_library.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.anji.book_library.entity.Books;

import jakarta.transaction.Transactional;

@Repository
@Transactional
public interface BookRepository extends JpaRepository<Books, Integer>{
	
	
	 @Modifying
	 @Query(value ="update books set author=:author1,book_name=:name1,book_QUANTITYS=:quantity1,price=:price1 where id=:id1",nativeQuery = true)
	 int updateBookDetails(@Param("author1") String author,@Param("name1") String bookName,@Param("quantity1") int Quantity,@Param("price1") double price,@Param("id1") int id);
     
	 Books findByBookName(String name);
	 Books findByIdAndBookName(int id,String name);
	 
	 @Modifying
	 @Query(value = "update books set BOOK_QUANTITYS=BOOK_QUANTITYS-1 where id=:id1", nativeQuery = true)
	 int updateById(@Param("id1") int id);
	 
	 @Modifying
	 @Query(value = "update books set BOOK_QUANTITYS=BOOK_QUANTITYS+1 where id=:id1", nativeQuery = true)
	 int updateIncById(@Param("id1") int id);
	 
	 
}
