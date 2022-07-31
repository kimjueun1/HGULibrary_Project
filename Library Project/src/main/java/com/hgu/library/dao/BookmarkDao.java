package com.hgu.library.dao;

import com.hgu.library.model.Bookmark;
import com.hgu.library.util.DBConnectionUtility;

import java.sql.*;
import java.util.ArrayList;

public class BookmarkDao {
    public static int addBookmark(Bookmark book) {
        int status=0;
        try(Connection con= DBConnectionUtility.getConnection()){
            String query = "insert into bookmark (id, user_id, user_email, book_id, regDate) values (?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(query);
			/*
			 * String s_userId = String.valueOf(session.getAttribute("userId")); int userId
			 * = Integer.parseInt(s_userId);
			 */
            preparedStatement.setInt(1, book.getId());
			preparedStatement.setInt(2, book.getUser_id());
			/* preparedStatement.setInt(2, 32); */ 
            preparedStatement.setString(3, book.getUser_email());
            preparedStatement.setInt(4, book.getBook_id());
            preparedStatement.setDate(5, (Date) book.getRegDate());
            status = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }
    
    public static int deleteBookmarkOne(int bookId) {
        int status=0;
        try(Connection con = DBConnectionUtility.getConnection()){
            String query = "delete from bookmark where id=?";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setInt(1, bookId);
            status = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    public static ArrayList<Bookmark> getAllBookmarkLists(int userId) {
    	ArrayList<Bookmark> bookmarkLists = new ArrayList<Bookmark>();
        try(Connection con = DBConnectionUtility.getConnection()){
			
			 String query =
			 "select * from bookmark join book b on bookmark.book_id = b.id where bookmark.user_id=?"
			 ; PreparedStatement preparedStatement = con.prepareStatement(query);
			 preparedStatement.setInt(1, userId); ResultSet resultSet =
			 preparedStatement.executeQuery();
			 
//            PreparedStatement ps=con.prepareStatement("select * from bookmark join book b on bookmark.book_id = b.id");
//            ResultSet resultSet=ps.executeQuery();
            while (resultSet.next()){
                Bookmark bookmark= new Bookmark();
                bookmark.setId(resultSet.getInt("id"));
                bookmark.setUser_id(resultSet.getInt("user_id"));
                bookmark.setUser_email(resultSet.getString("user_email"));
                bookmark.setBook_id(resultSet.getInt("book_id"));
                bookmark.setRegDate(resultSet.getDate("regDate"));
                bookmark.setBookcode(resultSet.getString("bookcode"));
                bookmark.setPdf_title(resultSet.getString("pdf_title"));
                bookmark.setThumnail(resultSet.getString("thumnail"));
                bookmark.setBook_title(resultSet.getString("book_title"));
                bookmark.setAuthor(resultSet.getString("author"));
                bookmark.setTranslator(resultSet.getString("translator"));
                bookmark.setPublication_date(resultSet.getString("publication_date"));
                bookmark.setPublisher(resultSet.getString("publisher"));
                bookmark.setPages(resultSet.getString("pages"));
                bookmark.setIsbn(resultSet.getString("isbn"));
                bookmark.setLocation(resultSet.getString("location"));
                bookmark.setMemo(resultSet.getString("memo"));
                bookmark.setCopies(resultSet.getString("copies"));
                bookmarkLists.add(bookmark);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(bookmarkLists);
        return bookmarkLists;
    }
}
