package com.orios.petscape.controllers;

import java.util.List;

import com.orios.petscape.models.Color;
import com.orios.petscape.services.ColorService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ColorController {

    @Autowired
    private ColorService colorService;

    @GetMapping("/colors")
    public List<Color> getAll(){
        return colorService.getAll();
    }

    @GetMapping("/colors/{id}")
    public Color getById(@PathVariable Long id){
        return colorService.getById(id);
    }

    @PostMapping("/colors")
    public void add(@RequestBody Color color){
        colorService.addOrUpdate(color);
    }

    @PutMapping("/colors")
    public void update(@RequestBody Color color){
        colorService.addOrUpdate(color);
    }
    
    @DeleteMapping("/colors/{id}")
    public void delete(@PathVariable Long id){
        colorService.deleteById(id);
    }
}