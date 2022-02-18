package com.example.demo.services;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.Expense;
import com.example.demo.repositories.ExpenseRepository;

@Service
public class ExpenseService {

	@Autowired
	private ExpenseRepository repository; 
	
	public ExpenseService (ExpenseRepository repository) {
		this.repository = repository;
	}	
	public Expense create(Expense e) {
		return this.repository.save(e);
	}
	
	public List<Expense> all(){
		return this.repository.findAll();
	}
	
	public void delete(Long id) {
		this.repository.deleteById(id);
	}
	
	public Expense save(Expense e) {
		return this.repository.save(e);
	}
	
	public Expense find(Long id) {
		Optional<Expense> optExpense = this.repository.findById(id);
		
		if (optExpense.isPresent()) {
			return optExpense.get();
		}
		else
			return null;
	}
	
}	

