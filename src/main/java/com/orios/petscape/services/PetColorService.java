package com.orios.petscape.services;

import java.util.List;

import com.orios.petscape.models.PetColor;
import com.orios.petscape.repositories.PetColorRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PetColorService {

    @Autowired
    private PetColorRepository petColorRepository;

    public List<PetColor> getAll(){
        return petColorRepository.findAll();
    }

    public PetColor findById(Long id){
        return petColorRepository.findById(id).orElse(null);
    }

    public void addOrUpdate(PetColor petColor){
        petColorRepository.save(petColor);
    }

    public void deleteById(Long id){
        petColorRepository.deleteById(id);
    }
    
}