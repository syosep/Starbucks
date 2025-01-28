package com.example.starbucks.mapper;

import com.example.starbucks.model.Product;
import java.util.List;

public interface ProductMapper {
    void insertProduct(Product product);
    List<Product> selectAllProducts();
    Product selectProductById(int id);
    void updateProduct(Product product);
    void deleteProduct(int id);
}