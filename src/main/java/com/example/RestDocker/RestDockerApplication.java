package com.example.RestDocker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/restdocker")
@SpringBootApplication
public class RestDockerApplication {
	@GetMapping("/home")
	public String home() {
		return "Hello World!";
	}
	public static void main(String[] args) {
		SpringApplication.run(RestDockerApplication.class, args);
	}

}
