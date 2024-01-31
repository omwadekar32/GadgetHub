package com.product.ecommerce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

@org.springframework.stereotype.Service
public class Service {
	
	@Autowired
	UserRepository repo;
	
	public String getData(String email, String Password) {
		
		
		int flag=0;
		
		List<User> l= repo.findByUsername(email);
		
		for (User user : l) {
		    System.out.println(user.getId() + ": " + user.getUsername() + ", " + user.getPassword());
		
		    if (user.getPassword().equals(Password)) {
                System.out.println("Authentication successful");
                flag=1;
                
               }
		    
		
		}
		
		if (flag==1) {
			return "sucess";
		}
		else {
			return "fail";
		}
		
	
		
		
	}

}
