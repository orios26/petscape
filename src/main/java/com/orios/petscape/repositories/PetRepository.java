package com.orios.petscape.repositories;

import com.orios.petscape.models.Pet;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PetRepository extends JpaRepository<Pet, Long>{
    
}