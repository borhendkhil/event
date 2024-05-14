package com.example.wedding_backend.controller;

import com.example.wedding_backend.entity.OrderSeller;
import com.example.wedding_backend.entity.User;
import com.example.wedding_backend.service.OrderSellerService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/orderSeller")
@RequiredArgsConstructor
@CrossOrigin

public class OrderSellerController {
    @Autowired
    private OrderSellerService orderSellerService;

    @GetMapping("/getAll")
    public List<OrderSeller> getAllOrderSellers(User client){

        return orderSellerService.findAllOrderSellers(client);
    }

    @GetMapping("/get/{id}")
    public OrderSeller getOrderSeller(@PathVariable String id){
        return orderSellerService.findOrderSellerById(id);
    }

    @GetMapping("/delete/{id}")
    public void deleteOrderSeller(@PathVariable String id){
        orderSellerService.deleteOrderSeller(id);
    }

    @PostMapping("/create")
    public void createOrderSeller(@RequestBody OrderSeller orderSeller){
        orderSellerService.createOrderSeller(orderSeller);
    }

    @PostMapping("/update")
    public void updateOrderSeller(@RequestBody OrderSeller orderSeller){
        orderSellerService.updateOrderSeller(orderSeller);
    }






}
