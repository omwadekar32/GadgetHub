package com.product.ecommerce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;





@Controller
public class ProductController {
	
	
	
	@GetMapping("/first")
	public String test() {
		
		System.out.println("hello");
		return "monitor";
	}
	
	
	
	@Autowired
	Service s;
	
	@GetMapping("/login")
	public String login(@RequestParam String email,@RequestParam String password) {
		
		System.out.println(email+password);
		
        String Result=s.getData(email,password);
        if (Result=="sucess") {
			return "index";
		}
		else {
			return "fail";
		}
		
	}
	
	
	 @Autowired  
	    JdbcTemplate jdbc;  
	  @GetMapping("/insert")  
	    public String insert(@RequestParam String email,@RequestParam String password){  
		  
		  System.out.println(email+password);
	        jdbc.execute("insert into user(username,password)values('"+email+"','"+password+"')");  
	        return"done";  
	    }  
	

}
