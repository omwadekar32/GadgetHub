package com.product.ecommerce;

public class Product {
	
	private int id;
	private String name;
	private double prise;
	private String description;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrise() {
		return prise;
	}
	public void setPrise(double prise) {
		this.prise = prise;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Product(int id, String name, double prise, String description) {
		super();
		this.id = id;
		this.name = name;
		this.prise = prise;
		this.description = description;
	}
	
	
	
	

}
