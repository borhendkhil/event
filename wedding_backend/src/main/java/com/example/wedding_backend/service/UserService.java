package com.example.wedding_backend.service;

import com.example.wedding_backend.Repository.UserRepository;
import com.example.wedding_backend.entity.User;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {
    @Autowired

    private UserRepository userRepository;

    public void deleteUser(String id) {
        userRepository.deleteById(id);
    }
    public User createUser(User user){
        if (userRepository.findByEmail(user.getEmail()) != null){
            throw new IllegalArgumentException("User with this email already exists");
        }else {
            userRepository.save(user);
        }
        return user;


    }
    public User getUser(String id){
        return userRepository.findById(id).get();
    }
    public void updateUser(User user){
        userRepository.save(user);
    }
    public List<User> getAllUsers(){
        return userRepository.findAll();
    }

    public Object Auth(String email, String password){
        User user = userRepository.findByEmail(email);
        if(user == null){
            return "User with this email does not exist";
        } else if(user.getPassword().equals(password)==false){
            return "Incorrect password";
        } else {
            return user;
        }
    }
    public void deleteAllUsers(){
        userRepository.deleteAll();
    }





}
