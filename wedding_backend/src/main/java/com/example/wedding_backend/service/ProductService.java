package com.example.wedding_backend.service;

import com.example.wedding_backend.Repository.ProductRepository;
import com.example.wedding_backend.entity.Product;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {
    @Autowired
    private final ProductRepository productRepository;

    public List<Product> getAllProductsByUser(String id) {
        return productRepository.findProductsByUser(id);

    }

    public Product getProductById(String id) {
        return productRepository.findById(id).orElse(null);
    }

    public Product addProduct(Product product) {
        return productRepository.save(product);
    }

    public Product updateProduct(Product product, String id) {
        Product product1 = productRepository.findById(id).orElse(null);
        if (product1 != null) {
            product1.setName(product.getName());
            product1.setDescription(product.getDescription());
            product1.setPrice(product.getPrice());
            product1.setImage(product.getImage());
            product1.setUser(product.getUser());
            return productRepository.save(product1);
        }
        return null;
    }

    public void deleteProduct(String id) {
        productRepository.deleteById(id);
    }





}
