package com.orios.petscape.services;

import java.util.List;

import com.orios.petscape.models.Customer;
import com.orios.petscape.repositories.CustomerRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    public List<Customer> getAll(){
        return customerRepository.findAll();
    }
    
    public Customer getById(Long id){
        return customerRepository.findById(id).orElse(null);
    }

    public void addOrUpdate(Customer customer){
        customerRepository.save(customer);
    }

    public void deleteById(Long id){
        customerRepository.deleteById(id);
    }
}