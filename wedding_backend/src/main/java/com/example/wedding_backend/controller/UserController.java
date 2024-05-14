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
    public void createUser(@RequestBody User user){
        userService.createUser(user);
    }
    @GetMapping("/get/{id}")
    public User getUser(@PathVariable String id){
        return userService.getUser(id);
    }
    @PostMapping("/update")
    public void updateUser(@RequestBody User user){
        userService.updateUser(user);
    }

    @GetMapping("/getAll")
    public List<User> getAllUsers(){
        return userService.getAllUsers();
    }
    

    @PostMapping("/auth")
    public String Auth(@RequestParam String email, @RequestParam String password){
        return userService.Auth(email, password);
    }

}
