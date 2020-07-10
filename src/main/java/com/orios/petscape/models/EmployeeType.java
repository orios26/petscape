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
@Table(name="employee_types")
public class EmployeeType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="employee_type_id")
    private Long id;

    @Column(name="name", nullable = false)
    private String name;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "employeeType")
    private Set<Employee> employees;

    
}