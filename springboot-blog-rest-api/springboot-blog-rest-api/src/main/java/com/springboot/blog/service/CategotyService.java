package com.springboot.blog.service;

import com.springboot.blog.payload.CategoryDTO;

public interface CategotyService {
    CategoryDTO addCategory(CategoryDTO categoryDTO);
    CategoryDTO getCategory(Long categoryId);
}
