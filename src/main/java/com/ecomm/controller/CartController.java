package com.ecomm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;

public class CartController 
{
	@Autowired
	ProductDAO productDAO;
	
    @RequestMapping("/ViewCart")
    public String showViewCart(@PathVariable int productId,@RequestParam("quantity")int quantity,Model m,HttpSession session)
    {
    	Product product=productDAO.getProduct(productId);
    	session.setAttribute("productId", productId);
    	return "ViewCart";
    }
}
