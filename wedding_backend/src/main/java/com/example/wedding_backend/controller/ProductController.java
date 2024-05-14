package com.example.wedding_backend.controller;

import com.example.wedding_backend.entity.Product;
import com.example.wedding_backend.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/user")
@CrossOrigin


public class ProductController {
    @Autowired
    private ProductService productService;


    @GetMapping("/get/{id}")
    public List<Product> getAllProducts(@PathVariable String id){
        return productService.getAllProductsByUser(id);
    }
    @GetMapping("/getProduct/{id}")
    public Product getProduct(@PathVariable int id){
        return productService.getProductById(id);
    }
    @PostMapping("/addProduct")
    public Product addProduct(@RequestBody Product product){
        return productService.addProduct(product);
    }
    @PostMapping("/updateProduct")
    public Product updateProduct(@RequestBody Product product){
        return productService.updateProduct(product);
    }
    @PostMapping("/deleteProduct/{id}")
    public void deleteProduct(@PathVariable int id){
        productService.deleteProduct(id);
    }






}
