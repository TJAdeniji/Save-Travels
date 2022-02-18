package com.example.demo.controllers;

import com.example.demo.services.ExpenseService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.models.Expense;

@Controller
public class ExpenseController {
	
	@Autowired 
	private ExpenseService service;
	
	@RequestMapping("/")
	public String launch() {
		return "redirect:/expenses";
	}
	
	@RequestMapping("/expenses")
	public String index(Model model) {
		model.addAttribute("addExpense", new Expense());
		model.addAttribute("expenses", this.service.all());
		return "index.jsp";
	}
	
	@PostMapping("/add")
	public String add(@Valid @ModelAttribute("addExpense") Expense expense, BindingResult result) {
		if (result.hasErrors()) {
			return "index.jsp";
		}
		this.service.create(expense);
		return "redirect:/";
	}
	
	@RequestMapping("/expenses/edit/{id}")
	public String editPage(Model model, @PathVariable Long id) {
		model.addAttribute("editExpense", this.service.find(id));
		return "editExpense.jsp";
	}
	
	@PostMapping("/update")
	public String update(@Valid @ModelAttribute("editExpense") Expense expense, BindingResult result) {
		if (result.hasErrors()) {
			return "editExpense.jsp";
		}
		this.service.save(expense);
		return "redirect:/";
	}
	
	@GetMapping("/expenses/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		this.service.delete(id);
		return "redirect:/";
	}
	
	@RequestMapping("/expenses/{id}")
	public String view(@PathVariable("id") Long id, Model model) {
		model.addAttribute("expense", this.service.find(id));
		return "viewExpense.jsp";
		
	}
	
	
	
}
