package com.hgu.library.dao;

import com.hgu.library.model.BookList;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookDao {
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:Mysql://walab.handong.edu:3306/csr_library?useSSL=FALSE",  "csr_library", "creationlib123");
        }catch(Exception e){System.out.println(e);}
        return con;
    }

    public static void main(String ars[]) {
        Connection conn = getConnection();
        if(conn !=null)
            System.out.println("DB connected!");
        else
            System.out.println("error!");
    }

    public static int addBook(BookList book) {
        int status=0;
        try(Connection con= getConnection()){
            String query = "insert into book (book_title, author) values (?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, book.getBook_title());
            preparedStatement.setString(2, book.getAuthor());
            status = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    public static int deleteBookOne(int bookId) {
        int status=0;
        try(Connection con = getConnection()){
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
        try(Connection con = getConnection()){
            String query = "update book set book_title=?, author=? where id=?";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, book.getBook_title());
            preparedStatement.setString(2, book.getAuthor());
            status = preparedStatement.executeUpdate();
        } catch (SQLException e){
            e.printStackTrace();
        }
        return status;
    }

    public static List<BookList> getAllBookLists() {
        List<BookList> bookLists = new ArrayList<BookList>();
        try(Connection con = getConnection()){
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
        try(Connection con = getConnection()){
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
