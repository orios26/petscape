package com.orios.petscape.models;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="pets")
public class Pet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="pet_id")
    private Long id;

    @Column(name="name", nullable = false)
    private String name;

    @Column(name="age", nullable = false)
    private int age;

    @Column(name="fixed", nullable = false)
    private Boolean isFixed;

    @Column(name="sex", nullable = false)
    private String sex;

    @Column(name="weight")
    private int weight;

    @ManyToOne
    @JoinColumn(name="customer_id", nullable = false)
    private Customer customer;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pet")
    private Set<PetBreed> petBreeds;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pet")
    private Set<PetColor> petColors;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pet")
    private Set<WorkItem> workItems;
    
    




    
}