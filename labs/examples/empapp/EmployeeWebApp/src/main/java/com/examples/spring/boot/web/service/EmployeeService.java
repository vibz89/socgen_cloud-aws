package com.examples.spring.boot.web.service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.examples.spring.boot.web.model.Employee;
import com.examples.spring.boot.web.repository.EmployeeRepository;

@Component
public class EmployeeService {

	// private static Map<String, Employee> employees = new LinkedHashMap<String,
	// Employee>();

	@Autowired
	EmployeeRepository repository;

	public void add(Employee employee) {
		repository.save(employee);

	}

	public void update(Employee employee) {
		repository.save(employee);
	}

	public Employee get(int empId) {
		Optional<Employee> employee = repository.findById(empId);
		return employee.get();
	}

	public void delete(int empId) {
		repository.deleteById(empId);
	}

	public List<Employee> list() {
		List<Employee> target = new ArrayList<>();
		repository.findAll().forEach(target::add);
		return target;
	}

}
