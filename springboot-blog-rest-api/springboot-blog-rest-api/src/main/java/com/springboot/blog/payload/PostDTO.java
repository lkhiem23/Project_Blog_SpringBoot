package com.springboot.blog.payload;

import lombok.Data;
import lombok.Getter;

@Data
@Getter
public class PostDTO {
    private Long id;
    private String title;
    private String description;
    private String content;
}
