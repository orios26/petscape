package com.orios.petscape.services;

import java.util.List;

import com.orios.petscape.models.WorkOrder;
import com.orios.petscape.repositories.WorkOrderRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WorkOrderService {

    @Autowired
    private WorkOrderRepository workOrderRepository;

    public List<WorkOrder> getAll(){
        return workOrderRepository.findAll();
    }

    public WorkOrder findById(Long id){
        return workOrderRepository.findById(id).orElse(null);
    }

    public void addOrUpdate(WorkOrder workOrder){
        workOrderRepository.save(workOrder);
    }

    public void deleteById(Long id){
        workOrderRepository.deleteById(id);
    }
    
}