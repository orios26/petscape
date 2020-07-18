package com.orios.petscape.controllers;

import com.orios.petscape.models.Pet;
import com.orios.petscape.services.PetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/pets")
public class PetController {

    @Autowired
    private PetService petService;

    @GetMapping
    public List<Pet> getAll(){
        return petService.getAll();
    }

    @GetMapping("/{id}")
    public Pet getById(@PathVariable Long id){
        return petService.findById(id);
    }

    @RequestMapping
    public void add(@RequestBody Pet pet){
        petService.addOrUpdate(pet);
    }

    @PutMapping
    public void update(@RequestBody Pet pet){
        petService.addOrUpdate(pet);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id){
        petService.deleteById(id);
    }




}
