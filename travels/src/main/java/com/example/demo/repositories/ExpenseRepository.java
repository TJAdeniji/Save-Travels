package com.example.demo.repositories;

import java.util.*;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.models.Expense;

@Repository
public interface ExpenseRepository extends CrudRepository<Expense, Long> {
	
	List<Expense> findAll();
}
