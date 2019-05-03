package edu.fa.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class UserControllers {
	@GetMapping(value = { "login" })
	public String login() {
		return "login";
	}

	@GetMapping(value = { "homePage", "/" })
	public String homePage() {
		return "home";
	}

	@GetMapping(value = { "loginError" })
	public String loginError(@RequestParam(value = "error") String error, HttpServletRequest request) {
		System.out.println(error);
		request.setAttribute("error", "Username or password incorrect");
		return "login";
	}
	@GetMapping(value = { "register" })
	public String register() {
		return "register";
	}
}
