package com.example.starbucks.model;

public class Product {
    private int id;
    private String name;
    private String engname;
    private String description;
    private double price;

    public Product() {}

    public Product(int id, String name, String engname, String description, double price) {
        this.id = id;
        this.name = name;
        this.engname = engname;
        this.description = description;
        this.price = price;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getEngname() { return engname; }
    public void setEngname(String engname) { this.engname = engname; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
}
