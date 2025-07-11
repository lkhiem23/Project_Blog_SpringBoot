package com.springboot.blog.repository;

import com.springboot.blog.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail (String email);

    Optional<User> findByUserName (String userName);

    Optional<User> findByUserNameOrEmail (String userName, String email );

    Boolean existsByEmail (String email);

    Boolean existsByUserName (String username);
}
