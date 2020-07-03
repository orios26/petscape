package com.orios.petscape.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;


@Data
@Entity
@Table(name="pet_breeds")
public class PetBreed {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="pet_breed_id")
    private Long id;

    @ManyToOne
    @JoinColumn(name="pet_id", nullable = false)
    private Pet pet;

    @ManyToOne
    @JoinColumn(name="breed_id", nullable = false)
    private Breed breed;
    
}