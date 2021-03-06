package com.orios.petscape.models;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.Data;

@Data
@Entity
@Table(name="employees")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="employee_id")
    private Long id;

//    @OneToMany(mappedBy = "employee")
//    private Set<Employee> directReports;
//
//    @ManyToOne
//    private Employee supervisor;

    @Column(name="first_name", nullable = false)
    private String firstName;

    @Column(name="last_name", nullable = false)
    private String lastName;

    @ManyToOne
    @JoinColumn(name="employee_type_id", nullable = false)
    private EmployeeType employeeType;

    @Column(name="email")
    private String email;

    @Column(name="phone")
    private String phone;

    @Column(name="street_address")
    private String steetAddress;

    @Column(name="city")
    private String city;

    @Column(name="state")
    private String state;

    @Column(name="zip")
    private int zip;

    @OneToMany(mappedBy = "employee")
    private Set<WorkItem> workItems;

}