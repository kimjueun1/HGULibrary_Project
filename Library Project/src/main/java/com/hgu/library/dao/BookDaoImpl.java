//package com.hgu.library.dao;
//
//import com.hgu.library.util.DBConnectionUtility;
//
//import com.hgu.library.model.BookList;
//
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//
//public class BookDaoImpl implements BookDao {
//
//    @Override
//    public void addBook(BookList book) {
//        try(Connection con= DBConnectionUtility.getConnection()){
//            String query = "insert into book (book_name, author) values (?, ?)";
//            PreparedStatement preparedStatement = con.prepareStatement(query);
//            preparedStatement.setString(1, book.getBook_name());
//            preparedStatement.setString(2, book.getAuthor());
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    @Override
//    public void deleteBook(int bookId) {
//        try(Connection con = DBConnectionUtility.getConnection()){
//            String query = "delete from book where id=?";
//            PreparedStatement preparedStatement = con.prepareStatement(query);
//            preparedStatement.setInt(1, bookId);
//            preparedStatement.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    @Override
//    public void updateBook(BookList book) {
//        try(Connection con = DBConnectionUtility.getConnection()){
//            String query = "update book set book_name=?, author=? where id=?";
//            PreparedStatement preparedStatement = con.prepareStatement(query);
//            preparedStatement.setString(1, book.getBook_name());
//            preparedStatement.setString(2, book.getAuthor());
//            preparedStatement.executeUpdate();
//        } catch (SQLException e){
//            e.printStackTrace();
//        }
//
//    }
//
//    @Override
//    public static List<BookList> getAllBookLists() {
//        List<BookList> bookLists = new ArrayList<>();
//        try(Connection con = DBConnectionUtility.getConnection()){
//            Statement statement = con.createStatement();
//            ResultSet resultSet = statement.executeQuery("select * from book");
//            while (resultSet.next()){
//                BookList bookList = new BookList();
//                bookList.setId(resultSet.getInt("id"));
//                bookList.setBookcode(resultSet.getString("book_code"));
//                bookList.setPdf_name(resultSet.getString("pdf_name"));
//                bookList.setImg_name(resultSet.getString("img_name"));
//                bookList.setBook_name(resultSet.getString("book_name"));
//                bookList.setAuthor(resultSet.getString("author"));
//                bookList.setTranslator(resultSet.getString("translator"));
//                bookList.setPublication_date(resultSet.getString("pub_date"));
//                bookList.setPublisher(resultSet.getString("publisher"));
//                bookList.setPages(resultSet.getString("pages"));
//                bookList.setIsbn(resultSet.getString("isbn"));
//                bookList.setLocation(resultSet.getString("location"));
//                bookList.setMemo(resultSet.getString("memo"));
//                bookList.setCopies(resultSet.getString("copies"));
//                bookList.setRegDate(resultSet.getDate("date"));
//                bookLists.add(bookList);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        System.out.println(bookLists);
//        return bookLists;
//    }
//
//    @Override
//    public BookList getBookListById(int bookId) {
//        BookList bookList = new BookList();
//        try(Connection con = DBConnectionUtility.getConnection()){
//            String query = "select * from book where id=?";
//            PreparedStatement preparedStatement = con.prepareStatement(query);
//            preparedStatement.setInt(1, bookId);
//            ResultSet resultSet = preparedStatement.executeQuery();
//            while(resultSet.next()){
//                bookList.setId(resultSet.getInt("id"));
//                bookList.setBookcode(resultSet.getString("book_code"));
//                bookList.setPdf_name(resultSet.getString("pdf_name"));
//                bookList.setImg_name(resultSet.getString("img_name"));
//                bookList.setBook_name(resultSet.getString("book_name"));
//                bookList.setAuthor(resultSet.getString("author"));
//                bookList.setTranslator(resultSet.getString("translator"));
//                bookList.setPublication_date(resultSet.getString("pub_date"));
//                bookList.setPublisher(resultSet.getString("publisher"));
//                bookList.setPages(resultSet.getString("pages"));
//                bookList.setIsbn(resultSet.getString("isbn"));
//                bookList.setLocation(resultSet.getString("location"));
//                bookList.setMemo(resultSet.getString("memo"));
//                bookList.setCopies(resultSet.getString("copies"));
//                bookList.setRegDate(resultSet.getDate("date"));
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return bookList;
//    }
//}
