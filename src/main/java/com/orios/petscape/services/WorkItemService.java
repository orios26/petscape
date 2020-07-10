package com.orios.petscape.services;

import java.util.List;

import com.orios.petscape.models.WorkItem;
import com.orios.petscape.repositories.WorkItemRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WorkItemService {

    @Autowired
    private WorkItemRepository workItemRepository;

    public List<WorkItem> getAll(){
        return workItemRepository.findAll();
    }

    public WorkItem findById(Long id){
        return workItemRepository.findById(id).orElse(null);
    }

    public void addOrUpdate(WorkItem workItem){
        workItemRepository.save(workItem);
    }

    public void deleteById(Long id){
        workItemRepository.deleteById(id);
    }
    
}