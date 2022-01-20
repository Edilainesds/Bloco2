package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class democontroller {

	@GetMapping("/Atividade1")
	public String Ola() {
		return " Determinação, Disciplina, Persistência";
	}
	
	@GetMapping("/Atividade2")
	public String Ola2() {
		return " Espero que eu consiga evoluir bastante no curso e aprender cada vez mais";
	}
	
}
