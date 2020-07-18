package com.orios.petscape.controllers;

import java.util.List;

import com.orios.petscape.models.Employee;
import com.orios.petscape.services.EmployeeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("employees")
public class EmployeeController {
    
    @Autowired
    private EmployeeService employeeService;

    @GetMapping
    public List<Employee> getll(){
        return employeeService.getAll();
    }

    @GetMapping("/{id}")
    public Employee findById(@PathVariable Long id){
        return employeeService.findById(id);
    }

    @PutMapping
    public void update(@RequestBody Employee employee){
        employeeService.addOrUpdate(employee);
    }

    @PostMapping
    public void add(@RequestBody Employee employee){
        employeeService.addOrUpdate(employee);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id){
        employeeService.deleteById(id);
    }
}