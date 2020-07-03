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
@Table(name="colors")
public class Color {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="color_id")
    private Long id;

    @Column(name="name")
    private String name;
    
}