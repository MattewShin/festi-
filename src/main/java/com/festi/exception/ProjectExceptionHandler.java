package com.festi.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice("com.festi")
public class ProjectExceptionHandler {

	@ExceptionHandler(Exception.class)
	public String handleTransException(Exception e, Model m) {
		m.addAttribute("exception", e);
		return "blog/TransErrorPage";
	}
}
