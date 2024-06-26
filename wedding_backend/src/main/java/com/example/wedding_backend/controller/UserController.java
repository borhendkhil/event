package com.example.wedding_backend.controller;

import com.example.wedding_backend.entity.User;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.example.wedding_backend.service.UserService;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/user")
@CrossOrigin

public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/delete/{id}")
    public void deleteUser(@PathVariable String id) {
        userService.deleteUser(id);
    }

    @PostMapping("/create")
    public User createUser(@RequestBody User user) {
        userService.createUser(user);
        return user;
    }

    @GetMapping("/get/{id}")
    public User getUser(@PathVariable String id) {
        return userService.getUser(id);
    }

    @PostMapping("/update")
    public void updateUser(@RequestBody User user) {
        userService.updateUser(user);
    }

    @GetMapping("/getAll")
    public List<User> getAllUsers() {
        return userService.getAllUsers();
    }


    @PostMapping("/login")
    public Object Login(@RequestBody User user) {
        return userService.Auth(user.getEmail(), user.getPassword());
    }


    @DeleteMapping("/deleteAll")
    public void deleteAllUsers() {
        userService.deleteAllUsers();
    }
}

