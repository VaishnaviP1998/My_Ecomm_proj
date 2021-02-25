package com.ecomm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Product;

@Controller
public class ProductController 
{
    @Autowired
    ProductDAO productDAO;
    
    @RequestMapping("/showProduct")
    public String showProduct(Model m)
    {
    	
    	
    	List<Product> productList=productDAO.retrieveCategories();
 	   m.addAttribute("productList",productList);
 	   return "Product";
    	
    	
    	
    }
    @RequestMapping("/InsertProduct")
    public String insertProduct(@RequestParam("productId")int  productId,@RequestParam("productName")String productName,@RequestParam("price")int price,@RequestParam("description")String description,@RequestParam("stock")int stock,@RequestParam("category")String category,@RequestParam("supplier")String supplier,Model m)
    {
  	   Product product=new Product();
  	   product.setProductId(productId);
  	   product.setProductName(productName);
  	   product.setPrice(price);
  	   product.setDescription(description);
  	   product.setStock(stock);
  	   product.setCategory(category);
  	   product.setSupplier(supplier);
  	   productDAO.addProduct(product);
	   List<Product> productList=productDAO.retrieveCategories();
	   m.addAttribute("productList",productList);
	   return "Product";
  	   
  	   }
    
    
    @RequestMapping("/deleteProduct/{productId}")
    public String deleteProduct(@PathVariable("productId")int productId, Model m)
    {
    	Product product=productDAO.getProduct(productId);
    	productDAO.deleteProduct(product);
    	List<Product> productList=productDAO.retrieveCategories();
  	    m.addAttribute("productList",productList);
  	    return "Product";
    }
    
    
    @RequestMapping("/editProduct/{productId}")
    public String editProduct(@PathVariable("productId")int  productId, Model m)
    {
    	Product product=productDAO.getProduct(productId);
    	m.addAttribute("product",product);
    	//product.setDescription(description);
    	productDAO.updateProduct(product);
    	//List<Product> productList=productDAO.retrieveCategories();
  	    //m.addAttribute("productList",productList);
  	    return "UpdateProduct";
    }
    @RequestMapping(value="/updateProduct",method=RequestMethod.POST)
    public String updateProduct(@RequestParam("productId")int  productId,@RequestParam("productName")String productName,@RequestParam("price")int price,@RequestParam("description")String description,@RequestParam("stock")int stock,@RequestParam("category")String category,@RequestParam("supplier")String supplier,Model m)
    {
    	Product product=productDAO.getProduct(productId);
    	product.setProductId(productId);
    	product.setProductName(productName);
    	product.setDescription(description);
    	product.setPrice(price);
    	product.setCategory(category);
    	product.setStock(stock);
    	product.setSupplier(supplier);
    	productDAO.updateProduct(product);
    	List<Product> productList=productDAO.retrieveCategories();
  	    m.addAttribute("productList",productList);
  	    return "Product";
    }
    
    
}
