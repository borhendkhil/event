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

    public void deleteUser(int id) {
        userRepository.deleteById(id);
    }
    public void createUser(User user){
        userRepository.save(user);


    }
    public User getUser(int id){
        return userRepository.findById(id).get();
    }
    public void updateUser(User user){
        userRepository.save(user);
    }
    public List<User> getAllUsers(){
        return userRepository.findAll();
    }
    public User getUserByEmail(String email){
        return userRepository.findByEmail(email);
    }
    public String Auth(String email, String password){
        User user = userRepository.findByEmail(email);
        if(user == null){
            return "User with this email does not exist";
        } else if(!user.getPassword().equals(password)){
            return "Incorrect password";
        } else {
            return user.getRole().toString();
        }
    }



}
