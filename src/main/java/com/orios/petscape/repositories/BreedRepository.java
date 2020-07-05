package com.orios.petscape.repositories;

import com.orios.petscape.models.Breed;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BreedRepository extends JpaRepository<Breed, Long> { 
    
}