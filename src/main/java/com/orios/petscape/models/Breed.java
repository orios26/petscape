package com.orios.petscape.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="Breeds")
public class Breed {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="breed_id")
    private Long id;

    @Column(name="name", nullable = false)
    private String name;

    @Column(name="section")
    private String section;

    @Column(name="origin")
    private String origin;

    
}