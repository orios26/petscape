package com.orios.petscape.repositories;

import com.orios.petscape.models.PetBreed;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PetBreedRepository extends JpaRepository<PetBreed, Long> {
    
}