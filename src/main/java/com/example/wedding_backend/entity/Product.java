package com.example.wedding_backend.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@Document(collection = "ProductController")
@AllArgsConstructor
@NoArgsConstructor


public class Product {
    @Id
    private String id;
    private String name;
    private String description;
    private Double price;
    private String image;
    private String user;


}
