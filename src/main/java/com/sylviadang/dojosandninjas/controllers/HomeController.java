package com.sylviadang.dojosandninjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.sylviadang.dojosandninjas.models.Dojo;
import com.sylviadang.dojosandninjas.models.Ninja;
import com.sylviadang.dojosandninjas.services.DojoService;
import com.sylviadang.dojosandninjas.services.NinjaService;

import jakarta.validation.Valid;

@Controller
public class HomeController {
	@Autowired
	DojoService dojoService;
	
	@Autowired
	NinjaService ninjaService;
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("dojos", dojoService.allDojos());
		return "index.jsp";
	}
	
	@GetMapping("/dojos/new")
	public String newDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "new_dojo.jsp";
	}

	@PostMapping("/dojos/new")
	public String createNewDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if (result.hasErrors()) {
			return "new_dojo.jsp";
		} else {
			dojoService.createDojo(dojo);
			return "redirect:/";
		}
	}
	
	@GetMapping("/dojos/{id}")
	public String newDojo(@PathVariable("id") Long id, Model model) {
		model.addAttribute("dojo", dojoService.findDojo(id));
		return "view_dojo.jsp";
	}
	
	@GetMapping("ninjas/new")
	public String newNinja (Model model, @ModelAttribute("ninja") Ninja ninjas) {
		model.addAttribute("dojos", dojoService.allDojos());
		return "new_ninja.jsp";
	}
	
	@PostMapping("/ninjas/new")
	public String createNewNinja(Model model, @Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result) {
		if (result.hasErrors()) {
			model.addAttribute("dojos", dojoService.allDojos());
			return "new_ninja.jsp";
		} else {
			ninjaService.createNinja(ninja);
			return "redirect:/";
		}
	}
}
