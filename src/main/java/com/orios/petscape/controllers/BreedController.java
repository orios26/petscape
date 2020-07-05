package com.orios.petscape.controllers;

import java.util.ArrayList;
import java.util.List;

import com.orios.petscape.models.Breed;
import com.orios.petscape.repositories.BreedRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BreedController {
    
    @Autowired
    private BreedRepository breedRepository;


    @GetMapping("/breeds")
    public List<Breed> getAllBreeds(){
        List<Breed> allBreeds = breedRepository.findAll();
        return allBreeds;
    }
}