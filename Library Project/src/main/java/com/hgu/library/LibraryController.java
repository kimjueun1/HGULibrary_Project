package com.hgu.library;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LibraryController {
	@RequestMapping(value = "/bookList", method = RequestMethod.GET)
	public String bookList(Locale locale, Model model) {
		System.out.println("bookList page loaded");
		return "bookList";
	}
}
