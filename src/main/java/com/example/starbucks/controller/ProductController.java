package com.example.starbucks.controller;

import com.example.starbucks.model.Product;
import com.example.starbucks.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/products")
public class ProductController {
    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping
    public String listProducts(Model model) {
        List<Product> products = productService.getAllProducts();
        model.addAttribute("products", products); // 상품 데이터를 model에 추가
        return "product"; // product.jsp로 이동
    }

//    @GetMapping("{id}")
//    public String getProduct(@PathVariable int id, Model model) {
//        Product product = productService.getProductById(id);
//        model.addAttribute("product", product);
//        return "product/detail";
//    }

    @PostMapping
    public String createProduct(Product product) {
        productService.addProduct(product);
        return "redirect:/products";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable int id, Model model) {
        Product product = productService.getProductById(id); // 특정 ID로 상품 조회
        model.addAttribute("product", product); // JSP로 전달
        return "product/edit"; // 수정 페이지 JSP
    }

    @PostMapping("/edit/{id}")
    public String editProduct(@PathVariable int id, @ModelAttribute Product product) {
        product.setId(id); // ID 설정
        productService.updateProduct(product); // 업데이트 호출
        return "redirect:/products"; // 목록 페이지로 리다이렉트
    }

    @PostMapping("/delete/{id}")
    public String deleteProduct(@PathVariable int id) {
        productService.deleteProduct(id);
        return "redirect:/products";
    }

    @GetMapping("/{id}")
    public String getProductDetails(@PathVariable int id, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        return "product/detail";
    }
}
