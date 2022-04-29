package com.hgu.library.Service;

import java.util.List;

import com.hgu.library.DTO.BookDTO;


public interface BookService {
	public int insertBook(BookDTO dto);
	public int deleteBook(int id);
	public int updateBook(BookDTO dto);
	public List<BookDTO> getBookList();
	public BookDTO getBook(int id);

}
