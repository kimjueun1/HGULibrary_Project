package com.hgu.library.DAO;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hgu.library.DTO.BookDTO;

public interface BookDAO {
	public int insertBook(BookDTO vo);
	public int deleteBook(int id);
	public int updateBook(BookDTO vo);
	public BookDTO getBook(int id);
	public List<BookDTO> getBookList();
}
