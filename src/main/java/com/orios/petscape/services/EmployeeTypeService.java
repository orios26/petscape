package com.orios.petscape.services;

import java.util.List;

import com.orios.petscape.models.EmployeeType;
import com.orios.petscape.repositories.EmployeeTypeRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeTypeService {

    @Autowired
    EmployeeTypeRepository employeeTypeRepository;

    public List<EmployeeType> getAll(){
        return employeeTypeRepository.findAll();
    }

    public EmployeeType findById(Long id){
        return employeeTypeRepository.findById(id).orElse(null);
    }

    public void addOrUpdate(EmployeeType employeeType){
        employeeTypeRepository.save(employeeType);
    }

    public void deleteById(Long id){
        employeeTypeRepository.deleteById(id);
    }   
}