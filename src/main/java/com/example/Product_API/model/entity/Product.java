package com.example.Product_API.model.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "product")
@Data
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "pname")
    private String pname;

    @Column(name = "price")
    private double price;

    @Column(name = "cid")
    private int cid;

    @Column(name = "sid")
    private int sid;
}