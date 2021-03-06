package com.orios.petscape.models;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "Customers")
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="customer_id")
    private Long id;

    @Column(name="first_name", nullable=false)
    private String firstName;

    @Column(name = "last_name", nullable=false)
    private String lastName;

    @Column(name = "email")
    private String email;

    @Column(name="phone")
    private String phone;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "customer")
    private Set<Pet> pets;

    @Column(name="street_address")
    private String address;

    @Column(name="city")
    private String city;

    @Column(name="state")
    private String state;

    @Column(name="zip")
    private int zip;

    @OneToMany(cascade = CascadeType.ALL, mappedBy ="customer")
    private Set<WorkOrder> orders;

}