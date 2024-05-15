package com.example.wedding_backend.entity;


import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Document(collection = "User")

public class User {
    @Id
    private String id;
    private String name;

    private String email;
//    @JsonIgnore
    private String password;
    private String address;
    private String role;
    private String discription;
    private String phone;
    private String website;
    private String image;
    private String userRole;
    private String status;




}