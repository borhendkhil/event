package com.example.wedding_backend.Repository;

import com.example.wedding_backend.entity.OrderSeller;
import com.example.wedding_backend.entity.User;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository

public interface OrderSellerRepository extends MongoRepository<OrderSeller, Integer> {
    List<OrderSeller> findByClient(User client);
}
