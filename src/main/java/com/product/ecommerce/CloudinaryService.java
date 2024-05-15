package com.product.ecommerce;

import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;

@Service
public class CloudinaryService implements ICloudinary {
@Autowired
private Cloudinary cloudinary;

@Override
public Map upload(MultipartFile f) {
	// TODO Auto-generated method stub
	try {
		Map data=this.cloudinary.uploader().upload(f.getBytes(), Map.of());
		return data;
	} catch (IOException e) {
		// TODO Auto-generated catch block
		
		e.printStackTrace();
		System.out.println("failed");
		return null;
	}
}
	
	
	
	
	
	

}
