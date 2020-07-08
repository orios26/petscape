package com.orios.petscape.controllers;

import java.util.ArrayList;
import java.util.List;

import com.orios.petscape.models.Breed;
import com.orios.petscape.repositories.BreedRepository;
import com.orios.petscape.services.BreedService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
public class BreedController {
    
    @Autowired
    private BreedService breedService;


    @GetMapping("/breeds")
    public List<Breed> getAllBreeds(){
        List<Breed> allBreeds = breedService.getAllBreeds();
        return allBreeds;
    }

    @GetMapping("/breeds/{id}")
    public Breed getBreedById(@PathVariable Long id) {
        return breedService.getById(id);
    }

    @PutMapping("/breeds/{id}")
    public void updateBreed(@RequestBody Breed breed){
        breedService.updateBreed(breed);
    }

    @DeleteMapping("breeds/{id}")
    public void deleteBreed(@PathVariable Long id){
        breedService.deleteBreed(id);
    }

    @PostMapping("/breeds")
    public void addBreed(@RequestBody Breed breed){
        breedService.addBreed(breed);
    }


}