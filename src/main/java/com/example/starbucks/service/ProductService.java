package com.example.starbucks.service;

import com.example.starbucks.mapper.ProductMapper;
import com.example.starbucks.model.Product;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    private final ProductMapper productMapper;

    public ProductService(ProductMapper productMapper) {
        this.productMapper = productMapper;
    }

    public void addProduct(Product product) {
        productMapper.insertProduct(product);
    }

    public List<Product> getAllProducts() {
        return productMapper.selectAllProducts();
    }

    public Product getProductById(int id) {
        return productMapper.selectProductById(id);
    }

    public void updateProduct(Product product) {
        productMapper.updateProduct(product);
    }

    public void deleteProduct(int id) {
        productMapper.deleteProduct(id);
    }
}