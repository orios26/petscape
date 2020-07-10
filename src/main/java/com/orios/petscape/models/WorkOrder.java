package com.orios.petscape.models;

import java.math.BigDecimal;
import java.time.LocalDateTime;
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
@Table(name="work_orders")
public class WorkOrder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="work_order_id")
    private Long id;

    @Column(name="total", nullable = false)
    private BigDecimal totalPrice;

    @Column(name="transaction_date", nullable = false)
    private LocalDateTime transactionDate;   

    @ManyToOne
    @JoinColumn(name="customer_id", nullable = false)
    private Customer customer;

    @ManyToOne
    @JoinColumn(name="employee_id", nullable = false)
    private Employee employee;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "workOrder")
    private Set<WorkItem> workItems;
}