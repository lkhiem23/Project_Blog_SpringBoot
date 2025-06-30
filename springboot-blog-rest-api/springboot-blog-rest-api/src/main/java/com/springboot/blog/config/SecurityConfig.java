package com.springboot.blog.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration

public class SecurityConfig {
    SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {


        return http.build();
    }
}
