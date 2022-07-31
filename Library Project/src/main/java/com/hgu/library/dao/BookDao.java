package com.hgu.library.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



import com.hgu.library.model.BookList;
import com.hgu.library.util.DBConnectionUtility;


public class BookDao {

//    public static Connection getConnection(){
//        Connection con=null;
//        try{
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            con= DriverManager.getConnection("jdbc:Mysql://walab.handong.edu:3306/csr_library?useSSL=FALSE",  "csr_library", "creationlib123");
//        }catch(Exception e){System.out.println(e);}
//        return con;
//    }
//
//    public static void main(String ars[]) {
//        Connection conn = getConnection();
//        if(conn !=null)
//            System.out.println("DB connected!");
//        else
//            System.out.println("error!");
//    }

    public static int addBook(BookList book) {
        int status=0;
        try(Connection con= DBConnectionUtility.getConnection()){
            String query = "insert into book (book_title, author, translator, publisher, publication_date, pages, isbn, location, bookcode, thumnail, pdf_title) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, book.getBook_title());
            preparedStatement.setString(2, book.getAuthor());
            preparedStatement.setString(3, book.getTranslator());
            preparedStatement.setString(4, book.getPublisher());
            preparedStatement.setString(5, book.getPublication_date());
            preparedStatement.setString(6, book.getPages());
            preparedStatement.setString(7, book.getIsbn());
            preparedStatement.setString(8, book.getLocation());
            preparedStatement.setString(9, book.getBookcode());
            preparedStatement.setString(10, book.getLocation());
            preparedStatement.setString(11, book.getBookcode());
            status = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
//    	return sqlSession.insert("BookDAO.addBook", book);
    }

    public static int deleteBookOne(int bookId) {
        int status=0;
        try(Connection con = DBConnectionUtility.getConnection()){
            String query = "delete from book where id=?";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setInt(1, bookId);
            status = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }
//    public static void deleteBook(BookList b){
//        try{
//            Connection con=getConnection();
//            PreparedStatement ps = con.prepareStatement("delete from book where id=?");
//            ps.setInt(1, b.getId());
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }

    public static int updateBook(BookList book) {
        int status=0;
        try(Connection con = DBConnectionUtility.getConnection()){
            String query = "update book set book_title=?, author=?, translator=?, publisher=?, publication_date=?, pages=?, isbn=?, location=?, bookcode=?, thumnail=?, pdf_title=?  where id=?";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, book.getBook_title());
            preparedStatement.setString(2, book.getAuthor());
            preparedStatement.setString(3, book.getTranslator());
            preparedStatement.setString(4, book.getPublisher());
            preparedStatement.setString(5, book.getPublication_date());
            preparedStatement.setString(6, book.getPages());
            preparedStatement.setString(7, book.getIsbn());
            preparedStatement.setString(8, book.getLocation());
            preparedStatement.setString(9, book.getBookcode());
            preparedStatement.setString(10, book.getLocation());
            preparedStatement.setString(11, book.getBookcode());
            preparedStatement.setInt(12, book.getId());
            status = preparedStatement.executeUpdate();
        } catch (SQLException e){
            e.printStackTrace();
        }
        return status;
    }

    public static ArrayList<BookList> getAllBookLists() {
    	ArrayList<BookList> bookLists = new ArrayList<BookList>();
        try(Connection con = DBConnectionUtility.getConnection()){
            PreparedStatement ps=con.prepareStatement("select * from book");
            ResultSet resultSet=ps.executeQuery();
//            Statement statement = con.createStatement();
//            ResultSet resultSet = statement.executeQuery("select * from book");
            while (resultSet.next()){
                BookList bookList = new BookList();
                bookList.setId(resultSet.getInt("id"));
                bookList.setBookcode(resultSet.getString("bookcode"));
                bookList.setPdf_title(resultSet.getString("pdf_title"));
                bookList.setThumnail(resultSet.getString("thumnail"));
                bookList.setBook_title(resultSet.getString("book_title"));
                bookList.setAuthor(resultSet.getString("author"));
                bookList.setTranslator(resultSet.getString("translator"));
                bookList.setPublication_date(resultSet.getString("publication_date"));
                bookList.setPublisher(resultSet.getString("publisher"));
                bookList.setPages(resultSet.getString("pages"));
                bookList.setIsbn(resultSet.getString("isbn"));
                bookList.setLocation(resultSet.getString("location"));
                bookList.setMemo(resultSet.getString("memo"));
                bookList.setCopies(resultSet.getString("copies"));
                bookLists.add(bookList);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
//        System.out.println(bookLists);
        return bookLists;
    }

    public static BookList getBookListById(int bookId) {
        BookList bookList = new BookList();
        try(Connection con = DBConnectionUtility.getConnection()){
            String query = "select * from book where id=?";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setInt(1, bookId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                bookList.setId(resultSet.getInt("id"));
                bookList.setBookcode(resultSet.getString("bookcode"));
                bookList.setPdf_title(resultSet.getString("pdf_title"));
                bookList.setThumnail(resultSet.getString("thumnail"));
                bookList.setBook_title(resultSet.getString("book_title"));
                bookList.setAuthor(resultSet.getString("author"));
                bookList.setTranslator(resultSet.getString("translator"));
                bookList.setPublication_date(resultSet.getString("publication_date"));
                bookList.setPublisher(resultSet.getString("publisher"));
                bookList.setPages(resultSet.getString("pages"));
                bookList.setIsbn(resultSet.getString("isbn"));
                bookList.setLocation(resultSet.getString("location"));
                bookList.setMemo(resultSet.getString("memo"));
                bookList.setCopies(resultSet.getString("copies"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookList;
    }
}
