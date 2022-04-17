package com.hgu.library.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hgu.library.DTO.BookDTO;

@Repository
public class BookDAOImpl implements BookDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insertBook(BookDTO dto) {
		System.out.println("insertBookList");
		return sqlSession.insert("BookDAO.insertBoard", dto);
	}
	
	@Override
	public int updateBook(BookDTO dto) {
		System.out.println("updateBookList");
		return sqlSession.update("BookDAO.updateBoard", dto);
	}

	@Override
	public int deleteBook(int id) {
		System.out.println("deleteBookList");
		return sqlSession.delete("BookDAO.deleteBoard", id);
	}
	
	@Override
	public BookDTO getBook(int id) {
		System.out.println("getBook");
		return sqlSession.selectOne("BookDAO.getBook", id);

	}

	@Override
	public List<BookDTO> getBookList() {
		System.out.println("getBookList");
		List<BookDTO> list = sqlSession.selectList("BookDAO.getBookList");
		
		return list;
	}

}
