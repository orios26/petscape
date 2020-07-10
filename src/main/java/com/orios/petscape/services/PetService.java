package com.orios.petscape.services;

import java.util.List;

import com.orios.petscape.models.Pet;
import com.orios.petscape.repositories.PetRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PetService {

    @Autowired
    private PetRepository petRepository;

    public List<Pet> getAll(){
        return petRepository.findAll();
    }

    public Pet findById(Long id){
        return petRepository.findById(id).orElse(null);
    }

    public void addOrUpdate(Pet pet){
        petRepository.save(pet);
    }

    public void deleteById(Long id){
        petRepository.deleteById(id);
    }
    
    
}