package com.orios.petscape.repositories;

import com.orios.petscape.models.WorkOrder;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WorkOrderRepository extends JpaRepository<WorkOrder, Long> {
    
}