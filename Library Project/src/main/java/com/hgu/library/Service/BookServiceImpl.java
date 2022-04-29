package com.hgu.library.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hgu.library.DAO.BookDAO;
import com.hgu.library.DTO.BookDTO;

@Service
public class BookServiceImpl implements BookService{
	@Autowired
	BookDAO bookDAO;

	@Override
	public int insertBook(BookDTO dto) {
		// TODO Auto-generated method stub
		return bookDAO.insertBook(dto);
	}

	@Override
	public int deleteBook(int id) {
		// TODO Auto-generated method stub
		return bookDAO.deleteBook(id);
	}

	@Override
	public int updateBook(BookDTO dto) {
		// TODO Auto-generated method stub
		return bookDAO.updateBook(dto);
	}

	@Override
	public List<BookDTO> getBookList() {
		// TODO Auto-generated method stub
		return bookDAO.getBookList();
	}

	@Override
	public BookDTO getBook(int id) {
		// TODO Auto-generated method stub
		return bookDAO.getBook(id);
	}
	
}
