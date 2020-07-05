package com.orios.petscape.repositories;

import com.orios.petscape.models.Color;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ColorRepository extends JpaRepository<Color, Long>{
    
}