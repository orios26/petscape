package com.orios.petscape.services;

import java.util.List;

import com.orios.petscape.models.Employee;
import com.orios.petscape.repositories.EmployeeRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    public List<Employee> getAll(){
        return employeeRepository.findAll();
    }
  
    public Employee findById(Long id){
        return employeeRepository.findById(id).orElse(null);
    }

    public void addOrUpdate(Employee employee){
        employeeRepository.save(employee);
    }

    public void deleteById(Long id){
        employeeRepository.deleteById(id);
    }
}