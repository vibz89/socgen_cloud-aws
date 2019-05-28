package com.examples.spring.boot.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class SpringBootEmployeeWebApp extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootEmployeeWebApp.class, args);
	}
}
