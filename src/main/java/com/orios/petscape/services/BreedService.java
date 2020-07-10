package com.orios.petscape.services;

import java.util.List;

import com.orios.petscape.models.Breed;
import com.orios.petscape.repositories.BreedRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BreedService {

    @Autowired
    private BreedRepository breedRepository;

    public List<Breed> getAll(){
        return breedRepository.findAll();
    }

    public Breed findById(Long id){
        return breedRepository.findById(id).orElse(null);
    }

    public void addOrUpdate(Breed breed){
        breedRepository.save(breed);
    }

    public void deleteById(Long id){
        breedRepository.deleteById(id);
    }
    
}