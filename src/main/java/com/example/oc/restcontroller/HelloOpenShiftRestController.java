package com.example.oc.restcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloOpenShiftRestController {

	@RequestMapping("/hello")
	public String helloOpenShift() {
		
		return "{"+"\"message\":"+ "\"Namaste!, from OpenShift!\"" + "}";
	}
	
	@RequestMapping("/health")
	public String health() {
		
		return "{"+"\"message\":"+ "\"OK\"" + "}";
	}
	
	@RequestMapping("/")
	public String welcome() {
		
		return "{"+"\"message\":"+ "\"Bonjour to SpringBoot app on Openshift!\"" + "}";
	}
}
