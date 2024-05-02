package com.example.wedding_backend.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Document(collection = "User")

public class User {
    @Id
    private int id;
    private String name;
    private String email;
    private String password;
    private String address;
    private RoleSeller role;
    private String discription;
    private String phone;
    private String website;
    private String image;
    private UserRole userRole;
    private int hands;

}