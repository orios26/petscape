package com.orios.petscape.controllers;

import java.util.List;

import com.orios.petscape.models.Breed;
import com.orios.petscape.services.BreedService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/breeds")
public class BreedController {
    
    @Autowired
    private BreedService breedService;

    @GetMapping
    public List<Breed> getAll(){
        List<Breed> allBreeds = breedService.getAll();
        return allBreeds;
    }

    @GetMapping("/{id}")
    public Breed getById(@PathVariable Long id) {
        return breedService.findById(id);
    }

    @PostMapping
    public void add(@RequestBody Breed breed){
        breedService.addOrUpdate(breed);
    }

    @PutMapping
    public void update(@RequestBody Breed breed){
        breedService.addOrUpdate(breed);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id){
        breedService.deleteById(id);
    }
}