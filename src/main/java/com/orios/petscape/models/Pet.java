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
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="pet_id")
    private Long id;

    @ManyToOne
    @JoinColumn(name="customer_id", nullable = false)
    private Customer customer;

    @Column(name="name")
    private String name;

    @Column(name="sex")
    private String sex;

    @Column(name="fixed")
    private Boolean isFixed;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pet")
    private Set<PetBreed> petBreeds;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pet")
    private Set<PetColor> petColors;
    
    @Column(name="age")
    private int age;

    @Column(name="weight")
    private int weight;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pet")
    private Set<WorkItem> workItems;

    
}