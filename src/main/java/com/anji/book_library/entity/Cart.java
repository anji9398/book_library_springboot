package com.anji.book_library.entity;

import java.util.UUID;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Table
@Entity
@Data
public class Cart {

	public String sudentId;
	@Id
	private Integer id;
	private String bookName;
	private String author;
	private Double price;
	private Integer bookQuantitys;

}
