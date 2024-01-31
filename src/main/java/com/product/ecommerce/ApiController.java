package com.product.ecommerce;

import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;

@RestController
@RequestMapping("/api")
public class ApiController {

	@PostMapping("/test")
	
	public String test(@RequestBody Map<String, Object> data) throws RazorpayException {

			
				int amount=Integer.parseInt(data.get("amount").toString());
				System.out.println(amount);
		  
			RazorpayClient razorpay;
			
				razorpay = new  RazorpayClient("rzp_test_z2CyynhkXzIxry", 
						"G3OKw8MJ5pyiGCtUBQdvhe91");
		  
		  JSONObject orderRequest = new JSONObject();
		  orderRequest.put("amount",amount);
		  orderRequest.put("currency","INR");
		  orderRequest.put("receipt", "receipt#1");
		  JSONObject notes = new JSONObject();
		  notes.put("notes_key_1","Tea, Earl Grey, Hot");
		  orderRequest.put("notes",notes);

		  Order order = razorpay.orders.create(orderRequest);
		  
		  return order.toString();
			
		  
		  }
		  
	@Autowired
	private GetProduct gp;
	
	@GetMapping("/getProduct")
	public List<Product> getProduct(){
		
		
		
		return gp.getAllProduct();
		
	}
	
	
	
	
	
	}

