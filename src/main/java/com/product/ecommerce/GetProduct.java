package com.product.ecommerce;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.product.IProduct.IGetProduct;


@Component
public class GetProduct implements IGetProduct {

	@Override
	public List<Product> getAllProduct() {
		// TODO Auto-generated method stub
		
		
		List <Product> pro=new ArrayList<>();
		
		pro.add(new Product(0001,"Mobile",10000,"Most Seeling Product. This Product contain all features as Per user need" ));
		pro.add(new Product(00015, "Tablet", 15000, "Just Launched. Very useful and easy to carry"));
		pro.add(new Product(00011, "Laptop", 115000, "Brand New and latest Model. Easy to work, Very useful and easy to carry"));
		pro.add(new Product(00016, "Monitor", 55000, "Make your view More bigger with the help of these monitor"));
		pro.add(new Product(00012, "Mouse", 15000, "By these mouse and improve your Productivity"));
		pro.add(new Product(0002, "Keyboard", 18000, "Latest Keyboard that make easierr to work"));
		pro.add(new Product(0005, "Headphone", 20000, "More Bass! More Sound Quality With the help of these HeadPhone"));
		pro.add(new Product(004, "Smartwatch", 5000, "Make your time good with The SmartWatch"));
		
		
		return pro;
	}

}
