package com.orios.petscape.models;

import java.time.LocalDateTime;

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
@Table(name="work_items")
public class WorkItem {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="work_item_id")
    private Long id;

    @Column(name="quantity", nullable = false)
    private int quantity;

    @Column(name="description")
    private String description;
    
    @Column(name="work_item_date", nullable = false)
    private LocalDateTime workItemDate;

    @ManyToOne
    @JoinColumn(name="work_order_id")
    private WorkOrder workOrder;

    @ManyToOne
    @JoinColumn(name="employee_id")
    private Employee employee;

    @ManyToOne
    @JoinColumn(name="pet_id")
    private Pet pet;

    @ManyToOne
    @JoinColumn(name="product_id")
    private Product product;
}