package com.springboot.blog.repository;

import com.springboot.blog.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findbyEmail (String email);

    Optional<User> findbyUserName (String username);

    Optional<User> findbyUserNameOrEmail (String email, String username);

    Boolean existsByEmail (String email);

    Boolean existsByUserName (String username);
}
