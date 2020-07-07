package com.orios.petscape.repositories;

import com.orios.petscape.models.PetColor;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PetColorRepository extends JpaRepository<PetColor, Long>{
    
}