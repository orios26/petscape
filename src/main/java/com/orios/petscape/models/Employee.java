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

import lombok.Data;

@Data
@Entity
@Table(name="employees")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="employee_id")
    private Long id;

    @OneToMany(mappedBy = "supervisor")
    private Set<Employee> directReports;

    @ManyToOne
    private Employee supervisor;

    @Column(name="first_name")
    private String firstName;

    @Column(name="last_name")
    private String lastName;

    @ManyToOne
    @JoinColumn(name="employee_type_id", nullable = false)
    private EmployeeType employeeType;

    @Column(name="email")
    private String email;

    @Column(name="phone")
    private String phone;

    @OneToMany(mappedBy = "employee")
    private Set<WorkItem> workItems;

}