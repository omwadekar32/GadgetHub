package com.product.ecommerce;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;

import io.micrometer.common.util.StringUtils;

@Service
public class ProductService {
	
	@Autowired
	private CloudinaryService cservice;
	
	@Autowired
	private ProductRepository Prepo;
	
	public void saveProduct(String name,int price, String desc, MultipartFile f) {
		
		
		Map m=this.cservice.upload(f);
		
		System.out.println(m.get("url"));
		System.out.println(m);
		
		Product p=new Product();
		
		
		p.setImage(m.get("url").toString());	
		p.setName(name);
		p.setPrise(price);
		p.setDescription(desc);
		
		Prepo.save(p);
				
		
	}
	
	public List <Product> getProduct(){
	
		return Prepo.findAll();
	}

}
