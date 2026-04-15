package com.jsp.library.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jsp.library.dao.BookDao;
import com.jsp.library.entity.Book;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class BookService {

	private final BookDao bookdao;
	
	public void saveBook(Book book) {
		bookdao.saveBook(book);
	}
	
	public Book fetchBookById(int id) {
		return bookdao.fetchBookById(id);
	}
	
	public List<Book> fetchAllBooks() {
		return bookdao.fetchAllBooks();
	}
	
	public void UpdateBook(Book book) {
		bookdao.UpdateBook(book);
		
	}
}
