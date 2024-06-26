package com.example.wedding_backend.Repository;

import com.example.wedding_backend.entity.Product;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends MongoRepository<Product, String> {
    List<Product> findProductsByUser(String id);
}
