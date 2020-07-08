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
    
    public List<Breed> getAllBreeds(){
        return breedRepository.findAll();
    }

	public Breed getById(Long id) {
        Breed breed = breedRepository.findById(id).orElse(null);
        return breed;
    }
    
	public void addBreed(Breed breed) {
        breedRepository.save(breed);
    }

	public void updateBreed(Breed breed) {
        breedRepository.save(breed);
	}

	public void deleteBreed(Long id) {
        breedRepository.deleteById(id);
	}
    
}