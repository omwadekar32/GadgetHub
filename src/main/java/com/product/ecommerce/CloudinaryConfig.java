package com.product.ecommerce;

import java.util.HashMap;

import org.hibernate.mapping.Map;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.cloudinary.Cloudinary;

@Configuration
public class CloudinaryConfig {
	
	@Bean
	public Cloudinary getcloudinary() {
		
		HashMap map=new HashMap();
		
		map.put("cloud_name", "dr1iujlt3");
		map.put("api_key", "611912644662278");
		map.put("api_secret", "5mybR_S0NkO81SifUJecsh8-DvE");
		map.put("secure", true);
		
		return new Cloudinary(map);
		
		
		
	}

}
