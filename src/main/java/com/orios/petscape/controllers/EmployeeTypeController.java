package com.orios.petscape.controllers;

import java.util.List;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.orios.petscape.models.EmployeeType;
import com.orios.petscape.services.EmployeeTypeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("employee_types")
public class EmployeeTypeController {
    
    @Autowired
    private EmployeeTypeService employeeTypeService;

    @GetMapping
    public List<EmployeeType> getAll(){
        return employeeTypeService.getAll();
    }

    @GetMapping("/{id}")
    public EmployeeType getById(@PathVariable Long id){
        return employeeTypeService.findById(id);
    }

    @PutMapping("/{id}")
    public void update(@RequestBody EmployeeType employeeType){
        employeeTypeService.addOrUpdate(employeeType);
    }

    @PostMapping
    public void add(@RequestBody EmployeeType employeeType){
        employeeTypeService.addOrUpdate(employeeType);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id){
        employeeTypeService.deleteById(id);
    }
}