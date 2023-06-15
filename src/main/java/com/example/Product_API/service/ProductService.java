package com.example.Product_API.service;

import com.example.Product_API.model.entity.Product;

import java.util.List;

public interface ProductService {
    List<Product> getAll();

    Product save(Product product);
}
