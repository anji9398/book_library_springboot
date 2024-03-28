package com.anji.book_library.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.anji.book_library.entity.Student;


@Repository
public interface StudentRepository extends JpaRepository<Student, Integer>{

	List<Student> findByStuName(String name);
	
	Student findByStuNameAndPassword(String uname,String password);

}