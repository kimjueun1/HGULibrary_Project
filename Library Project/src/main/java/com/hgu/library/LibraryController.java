package com.hgu.library;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String bookList(Locale locale, Model model) {
		System.out.println("bookList page loaded");
		return "bookList";
	}
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {
		System.out.println("bookList page loaded");
		return "about";
	}
}
