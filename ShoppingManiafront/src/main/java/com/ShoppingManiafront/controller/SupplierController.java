package com.ShoppingManiafront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ShoppingMania.dao.SupplierDAO;
import com.ShoppingMania.modal.Category;
import com.ShoppingMania.modal.Supplier;

@Controller
public class SupplierController {
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("/addSupplier")
	public String addSupplier(){
		return "addSupplier";
	}
	
	@RequestMapping(value="/saveSupplier",method=RequestMethod.POST)
	public String saveSupplier(@RequestParam String s_name){
		Supplier supplier=new Supplier();
		supplier.setS_Name(s_name);
		supplierDAO.addSupplier(supplier);
		return "redirect:/viewSupplier";
	}	
	@RequestMapping(value="/updateSupplier",method=RequestMethod.POST)
	public String saveSupplier(@RequestParam String s_Name,@RequestParam int s_id){
	Supplier supplier=new Supplier();
	supplier.setS_id(s_id);
	supplier.setS_Name(s_Name);
	supplierDAO.updateSupplier(supplier);
	return "redirect:/viewSupplier";
	} 

	@RequestMapping(value="/deleteSupplier/{sid}")
	public String deleteSupplier(@PathVariable int sid){
	Supplier supplier=supplierDAO.getSupplierById(sid);
	supplierDAO.deleteSupplier(supplier);
	return "redirect:/viewsupplier";
	} 
	@RequestMapping("/viewSupplier")
	public ModelAndView viewSupplier(){
	ModelAndView m=new ModelAndView("viewSupplier");
	List<Supplier> list=supplierDAO.getAllSupplier();
	m.addObject("supList",list);   
	return m; 
	}

	@RequestMapping(value="/updateSupplierbyid/{sid}")
	public ModelAndView upadateSupplierById(@PathVariable int sid){
		Supplier supplier=supplierDAO.getSupplierById(sid);
		ModelAndView m=new ModelAndView("updateSupplier");
	m.addObject("sup",supplier);  
	return m;
	} 


}
 