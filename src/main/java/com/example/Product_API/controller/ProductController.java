package com.example.Product_API.controller;

import com.example.Product_API.model.entity.Product;
import com.example.Product_API.respository.ProductRespository;
import com.example.Product_API.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/pro-api")
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;

    @GetMapping("/get-all")
    public ResponseEntity<?> getAll(@RequestHeader("username") String userName,
                                    @RequestHeader("sessionId") String id) {
        System.out.println(userName);
        return ResponseEntity.ok("Thành công").status(200).body(productService.getAll());
    }

    @PostMapping("/save")
    public ResponseEntity<?> save(@RequestBody Product product) {
        Optional<Product> product1 = Optional.ofNullable(product);
        if (product1.isPresent()) {
            productService.save(product1.get());
            return ResponseEntity.ok(product1);
        }
        System.out.println("lỗi");
        System.out.println("Thất Bại");
        // Check lại lỗi xem có phải sửa khi commit không?
        return null;
    }
}
