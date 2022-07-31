//package com.hgu.library.dao;
//
//import java.util.ArrayList;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.hgu.library.model.BookList;
//
//@Service
//public class BookService {
//	@Autowired
//	BookDao bookDAO;
//	
//	public int addBook(BookList book) {
//		return bookDAO.addBook(book);
//	}
//	public int deleteBookOne(int bookId) {
//		return bookDAO.deleteBookOne(bookId);
//	}
//	public int updateBook(BookList book) {
//		return bookDAO.updateBook(book);
//	}
//	public ArrayList<BookList> getAllBookLists() {
//		return bookDAO.getAllBookLists();
//	}
//	public BookList getBookListById(int bookId) {
//		return bookDAO.getBookListById(bookId);
//	}
//	
//
//}
