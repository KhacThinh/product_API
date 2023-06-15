package com.example.Product_API.service;

import com.example.Product_API.model.entity.Product;
import com.example.Product_API.respository.ProductRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{
    @Autowired
    private ProductRespository productRespository;
    @Override
    public List<Product> getAll() {
        return productRespository.findAll();
    }

    @Override
    public Product save(Product product) {
        return productRespository.save(product);
    }
}
