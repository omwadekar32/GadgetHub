package com.product.ecommerce;

import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

public interface ICloudinary {
	
	public Map upload(MultipartFile f);

}
