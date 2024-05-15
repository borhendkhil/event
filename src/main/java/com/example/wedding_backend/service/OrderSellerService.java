package com.example.wedding_backend.service;

import com.example.wedding_backend.Repository.OrderSellerRepository;
import com.example.wedding_backend.entity.OrderSeller;
import com.example.wedding_backend.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderSellerService{
    @Autowired
    private OrderSellerRepository orderSellerRepository;

    public List<OrderSeller> findAllOrderSellers(User client){

        return orderSellerRepository.findAll();
    }

    public OrderSeller findOrderSellerById(String id){
        return orderSellerRepository.findById(id).get();
    }

    public void createOrderSeller(OrderSeller orderSeller){
        orderSellerRepository.save(orderSeller);
    }

    public void deleteOrderSeller(String  id){
        orderSellerRepository.deleteById(id);
    }
    public void updateOrderSeller(OrderSeller orderSeller){
        orderSellerRepository.save(orderSeller);
    }
    public List<OrderSeller> findOrderSellersByClient(User client){

        return orderSellerRepository.findByClient(client);
    }

    public void updateOrderSellerStatus(String id, String status){
        OrderSeller orderSeller = orderSellerRepository.findById(id).get();
        orderSeller.setStatus(status);
        orderSellerRepository.save(orderSeller);
    }





}
