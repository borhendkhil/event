package com.example.wedding_backend.controller;

import com.example.wedding_backend.entity.Product;
import com.example.wedding_backend.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/Product")
@CrossOrigin


public class ProductController {
    @Autowired
    private ProductService productService;


    @GetMapping("/get/{id}")
    public List<Product> getAllProducts(@PathVariable String id){
        return productService.getAllProductsByUser(id);
    }

    @GetMapping("/getAll")
    public List<Product> getAllProducts(){
        return productService.getAllProducts();
    }

    @GetMapping("/getProduct/{id}")
    public Product getProduct(@PathVariable String id){
        return productService.getProductById(id);
    }
    @PostMapping("/addProduct")
    public Product addProduct(@RequestBody Product product){


        return productService.addProduct(product);
    }
    @PostMapping("/updateProduct/{id}")
    public Product updateProduct(@RequestBody Product product, @PathVariable String id){
        return productService.updateProduct(product, id);
    }
    @PostMapping("/deleteProduct/{id}")
    public void deleteProduct(@PathVariable String id){
        productService.deleteProduct(id);
    }






}
