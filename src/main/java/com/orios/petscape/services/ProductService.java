package com.orios.petscape.services;

import java.util.List;

import com.orios.petscape.models.Product;
import com.orios.petscape.repositories.ProductRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    public List<Product> getAll(){
        return productRepository.findAll();
    }

    public Product findById(Long id){
        return productRepository.findById(id).orElse(null);
    }

    public void addOrUpdate(Product product){
        productRepository.save(product);
    }

    public void deleteById(Long id){
        productRepository.deleteById(id);
    }
    
}