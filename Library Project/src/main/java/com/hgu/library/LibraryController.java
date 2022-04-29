package com.hgu.library;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hgu.library.Service.BookService;

@Controller
public class LibraryController {
	@Autowired
	BookService bookService;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Model model) {
		System.out.println("bookList page loaded");
		return "mainPage";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		System.out.println("login page loaded");
		return "login";
	}
	@RequestMapping(value = "/bookList", method = RequestMethod.GET)
	public String bookList(Model model) {
//		model.addAttribute("list", bookService.getBookList());
		System.out.println("bookList page loaded");
		return "bookList";
	}
	@RequestMapping(value = "/bookmark", method = RequestMethod.GET)
	public String bookmark(Model model) {
		System.out.println("bookList page loaded");
		return "bookmark";
	}
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Model model) {
		System.out.println("about page loaded");
		return "about";
	}
}
