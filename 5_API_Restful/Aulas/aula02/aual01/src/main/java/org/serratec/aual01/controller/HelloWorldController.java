package org.serratec.aual01.controller;

import org.serratec.aual01.domain.Aluno;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api")
public class HelloWorldController {
	
	@GetMapping
	public String helloWorld() {
		return "API On-line, use os endpoints abaixo:\n/nome ";
	}
	
	@GetMapping("nome")
	public String rafael() {
		return "Rafael";
	}
	
	@GetMapping("maiuscula")
	public String maiuscula(@RequestParam String string) { //Quando usamos @requestParam significa que não estamos usando variaveis locais.
		return string.toUpperCase();
	}
}
