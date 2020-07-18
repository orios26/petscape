package com.orios.petscape.controllers;

import com.orios.petscape.models.Product;
import com.orios.petscape.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/products")
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping
    public List<Product> getAll(){
        return productService.getAll();
    }

    @GetMapping("/{id}")
    public Product getById(@PathVariable Long id){
        return productService.findById(id);
    }

    @PostMapping
    public void add(@RequestBody Product product){
        productService.addOrUpdate(product);
    }

    @PutMapping
    public void update(@RequestBody Product product){
        productService.addOrUpdate(product);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id){
        productService.deleteById(id);
    }
}
