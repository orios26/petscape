package com.orios.petscape.repositories;

import com.orios.petscape.models.WorkItem;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WorkItemRepository extends JpaRepository<WorkItem, Long> {
    
}