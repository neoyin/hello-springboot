package com.example.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/hello")
public class HelloController {

	@Value("${sze-hello-world}")
	private String name;
	
	@Value("${sze-hello-commonname}")
	private String commonname;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String hello(){
		return "Test Push to Github -> "+name + commonname;
	}
}
