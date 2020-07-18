package com.orios.petscape.controllers;

import java.util.List;

import com.orios.petscape.models.Customer;
import com.orios.petscape.services.CustomerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("customers")
public class CustomerController {
    
    @Autowired
    private CustomerService customerService;

    @GetMapping
    public List<Customer> getAll(){
        return customerService.getAll();
    }

    @GetMapping("/{id}")
    public Customer findById(@PathVariable Long id){
        return customerService.getById(id);
    }

    @PutMapping
    public void update(@RequestBody Customer customer){
        customerService.addOrUpdate(customer);
    }

    @PostMapping
    public void add(@RequestBody Customer customer){
        customerService.addOrUpdate(customer);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id){
        customerService.deleteById(id);
    }
}