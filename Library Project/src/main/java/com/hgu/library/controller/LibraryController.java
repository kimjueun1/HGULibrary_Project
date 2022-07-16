package com.hgu.library.controller;

import java.util.Locale;

import com.hgu.library.dao.BookDao;
import com.hgu.library.model.BookList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LibraryController {
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		System.out.println("bookList page loaded");
		return "mainPage";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		System.out.println("login page loaded");
		return "login";
	}
	@RequestMapping(value = "/bookList", method = RequestMethod.GET)
	public String bookList(BookList bookList, Model model) {
//		model.addAttribute("bookList", bookList);
		System.out.println("bookList page loaded");
		return "bookList";
	}
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addBook() {
		return "addBook";
	}

	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addBookOK(BookList bookList) {
		int i = BookDao.addBook(bookList);
		if(i == 0) System.out.println("Error! Create Failed");
		else System.out.println(bookList.getBook_title() + "add ok!");

		return "redirect:bookList";
	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, BookList bookList, Model model) {
		bookList.setId(id);
		model.addAttribute("bookList", BookDao.getBookListById(id));
		return "editBook";
	}

	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOK(BookList bookList) {
		int i = BookDao.updateBook(bookList);
		if(i == 0) System.out.println("Error! Update Failed");
		else System.out.println("Update Complete!");

		return "redirect:bookList";
	}

	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String bookDelete(@PathVariable("id") int id) {
		int i =  BookDao.deleteBookOne(id);
		if(i == 0) System.out.println("Error! delete Failed");
		else System.out.println("Deleted Complete!");
		return "redirect:../bookList";
	}
	@RequestMapping(value = "/bookmark", method = RequestMethod.GET)
	public String bookmark(Locale locale, Model model) {
		System.out.println("bookList page loaded");
		return "bookmark";
	}
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {
		System.out.println("bookList page loaded");
		return "about";
	}
}
