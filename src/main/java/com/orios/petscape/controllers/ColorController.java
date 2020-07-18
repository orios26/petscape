package com.orios.petscape.controllers;

import java.util.List;

import com.orios.petscape.models.Color;
import com.orios.petscape.services.ColorService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("colors")
public class ColorController {

    @Autowired
    private ColorService colorService;

    @GetMapping
    public List<Color> getAll(){
        return colorService.getAll();
    }

    @GetMapping("/{id}")
    public Color getById(@PathVariable Long id){
        return colorService.getById(id);
    }

    @PostMapping
    public void add(@RequestBody Color color){
        colorService.addOrUpdate(color);
    }

    @PutMapping
    public void update(@RequestBody Color color){
        colorService.addOrUpdate(color);
    }
    
    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id){
        colorService.deleteById(id);
    }
}