package com.springboot.blog.controller;

import com.springboot.blog.service.CategotyService;
import org.springframework.web.bind.annotation.RestController;

@RestController("/api/categories")
public class CategoryController {
    private CategotyService categotyService;

    public CategoryController(CategotyService categotyService) {
        this.categotyService = categotyService;
    }

    

}
