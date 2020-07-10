package com.orios.petscape.services;

import java.util.List;

import com.orios.petscape.models.PetBreed;
import com.orios.petscape.repositories.PetBreedRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PetBreedService {
    
    @Autowired
    private PetBreedRepository petBreedRepository;

    public List<PetBreed> getAll(){
        return petBreedRepository.findAll();
    }

    public PetBreed findById(Long id){
        return petBreedRepository.findById(id).orElse(null);
    }

    public void addOrUpdate(PetBreed petBreed){
        petBreedRepository.save(petBreed);
    }

    public void deleteById(Long id){
        petBreedRepository.deleteById(id);
    }
}