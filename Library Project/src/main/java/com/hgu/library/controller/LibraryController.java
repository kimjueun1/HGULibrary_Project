package com.hgu.library.controller;

import java.util.Locale;
import java.util.Map;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.hgu.library.dao.BookDao;

import com.hgu.library.dao.BookmarkDao;
import com.hgu.library.dao.UserDao;
import com.hgu.library.model.BookList;
import com.hgu.library.model.Bookmark;
import com.hgu.library.model.User;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LibraryController {

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		System.out.println("main page loaded");
		return "mainPage";
	}

	@RequestMapping(value = "/bookList", method = RequestMethod.GET)
	public String bookList(BookList bookList, Model model) {
//		model.addAttribute("bookList", bookService.getAllBookLists());
		System.out.println("bookList page loaded");
		return "bookList";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addBook() {
		return "./addBook";
	}

	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addBookOK(BookList bookList) {
		int i = BookDao.addBook(bookList);
		if (i == 0)
			System.out.println("Error! Create Failed");
		else
			System.out.println(bookList.getBook_title() + " add ok!");

		return "./bookList";
	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, BookList bookList, Model model) {
		bookList.setId(id);
		model.addAttribute("bookList", BookDao.getBookListById(id));
		return "./editBook";
	}

	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOK(BookList bookList) {
		int i = BookDao.updateBook(bookList);
		if (i == 0)
			System.out.println("Error! Update Failed");
		else
			System.out.println("Update Complete!");

		return "./bookList";
	}

	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String bookDelete(@PathVariable("id") int id) {
		int i = BookDao.deleteBookOne(id);
		if (i == 0)
			System.out.println("Error! delete Failed");
		else
			System.out.println("Deleted Complete!");
		return "./bookList";
	}

	@RequestMapping(value = "/bookmark", method = RequestMethod.GET)
	public String bookmark(Locale locale, Model model) {
		System.out.println("bookList page loaded");
		return "./bookmark";
	}

	/* Bookmark CRUD */
	@RequestMapping(value = "/addBookmark", method = RequestMethod.GET)
	public String addBookmark() {
		return "./addBookmark";
	}

	@RequestMapping(value = "/addBookmarkok/{id}", method = RequestMethod.GET)
	public String addBookmarkOK(Bookmark bookmark, @PathVariable("id") int id, HttpSession session) {
		Bookmark bookmark1 = new Bookmark();
		
		 bookmark1.setUser_id(Integer.parseInt(String.valueOf(session.getAttribute("userId"))));
		 bookmark1.setUser_email(String.valueOf(session.getAttribute("email")));
		 bookmark1.setBook_id(id);
		 
		System.out.println("user id: "+session.getAttribute("userId"));
		System.out.println("bookId:"+id);
		int i = BookmarkDao.addBookmark(bookmark1);
		if (i == 0)
			System.out.println("Error! Insert Bookmark Failed");
		else
			System.out.println(id + " add bookmark ok!");
		return "./bookmark";
	}

	@RequestMapping(value = "/deletBookmarkeOk/{id}", method = RequestMethod.GET)
	public String bookmarkDelete(@PathVariable("id") int id) {
		System.out.println("delete " + id);
		int i = BookmarkDao.deleteBookmarkOne(id);
		if (i == 0)
			System.out.println("Error! delete Failed");
		else
			System.out.println("Deleted Complete!");
		return "./bookmark";
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {
		System.out.println("about page loaded");
		return "about";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		System.out.println("login page loaded");
		return "./login";
	}

	@RequestMapping(value = "/googleLogin", method = { RequestMethod.POST, RequestMethod.GET })
	@ResponseBody
	public String loginOk(User user, @RequestParam Map<String, String> paramMap, HttpServletRequest request) {
		if (paramMap != null) {
			System.out.println("paramMap:" + paramMap);
			System.out.println("token:" + paramMap.get("token"));
			System.out.println("email:" + paramMap.get("email"));
			System.out.println("name:" + paramMap.get("email").split("@")[0]);
		}
		HttpSession session = request.getSession(true);
		User user1 = new User();
		if (paramMap.get("email").split("@")[1].equals("handong.edu")
				|| paramMap.get("email").split("@")[1].equals("handong.ac.kr")) {
			user1.setName(paramMap.get("email").split("@")[0]);
			user1.setEmail(paramMap.get("email"));
			session.setAttribute("name", user1.getName());
			session.setAttribute("email", user1.getEmail());
			session.setAttribute("token", paramMap.get("token"));
			if (UserDao.getUserByEmail(user1.getEmail()).equals(paramMap.get("email")) == true && paramMap != null) {
				int i = UserDao.addUser(user1);
				if (i == 0)
					System.out.println("Error! Create Failed");
				else
					System.out.println(user1.getName() + " add ok!");
			} else
				session.setAttribute("userId", UserDao.getUserById(paramMap.get("email")));
			System.out.println("user id:" + UserDao.getUserById(paramMap.get("email")));
			System.out.println("user id:" + session.getAttribute("userId"));
			return "./mainPage";
		} else
			return "./login";

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutGET(HttpSession session) throws Exception {
		session.setAttribute("name", null);
		session.setAttribute("email", null);
		session.setAttribute("token", null);
		session.setAttribute("userId", null);
		session.invalidate();
		System.out.println("logout");

		return "./mainPage";
	}
}
