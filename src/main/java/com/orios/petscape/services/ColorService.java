package com.orios.petscape.services;

import java.util.List;

import com.orios.petscape.models.Color;
import com.orios.petscape.repositories.ColorRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ColorService {

    @Autowired
    private ColorRepository colorRepository;

    public List<Color> getALl(){
        return colorRepository.findAll();
    }

    public Color getById(Long id){
        return colorRepository.findById(id).orElse(null);
    }

    public void addOrUpdate(Color color){
        colorRepository.save(color);
    }

    public void deleteById(Long id){
        colorRepository.deleteById(id);
    }
    
}