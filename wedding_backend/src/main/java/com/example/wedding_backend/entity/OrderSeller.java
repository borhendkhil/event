package com.example.wedding_backend.entity;


import lombok.AllArgsConstructor;
import lombok.Data;

import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import java.time.LocalDate;


@Data
@Document(collection = "OrderSeller")
@AllArgsConstructor
@NoArgsConstructor

public class OrderSeller {
    @Id


    private int id;
    private LocalDate dateStart;
    private LocalDate dateEnd;

    private User client;
    private Product product;
    private String status;



}
