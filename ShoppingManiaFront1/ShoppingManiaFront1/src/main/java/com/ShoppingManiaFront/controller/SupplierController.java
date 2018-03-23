package com.ShoppingManiaFront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ShoppingMania2.dao.SupplierDAO;
import com.ShoppingMania2.daoImpl.SupplierDAOImpl;
import com.ShoppingMania2.model.Supplier;

@Controller
public class SupplierController {
@Autowired
SupplierDAO supplierDAO;
@RequestMapping("/addSupplier")
public String addSupplier(){
return "addSupplier";
}
@RequestMapping(value="/saveSupplier",method=RequestMethod.POST)
public String saveSupplier(@RequestParam String s_Name){
Supplier supplier=new Supplier();
supplier.setS_Name(s_Name);
supplierDAO.addSupplier(supplier);
return "redirect:/viewSupplier";
}
@RequestMapping(value="/updateSupplier",method=RequestMethod.POST)
public String updateSupplier(@RequestParam String s_Name,@RequestParam int s_id){
Supplier supplier=new Supplier();
supplier.setS_id(s_id);
supplier.setS_Name(s_Name);
supplierDAO.updateSupplier(supplier);
return "redirect:/viewSupplier";
}

@RequestMapping(value="/deleteSupplier/{sid}")
public String deleteSupplier(@PathVariable int sid){
Supplier supplier=supplierDAO.getSupplierById(sid);
try {
	supplierDAO.deleteSupplier(supplier);
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
return "redirect:/viewSupplier";
} 
@RequestMapping(value="/updateSupplierById/{sid}")
public ModelAndView updateSupplierByIdSupplier(@PathVariable int sid){
ModelAndView m=new ModelAndView("updateSupplier");
	Supplier supplier=supplierDAO.getSupplierById(sid);
m.addObject("sup",supplier);
return m;
} 

@RequestMapping("/viewSupplier")
public ModelAndView viewSupplier(){
ModelAndView m=new ModelAndView("viewSupplier");
List<Supplier> list=supplierDAO.getAllSupplier();
m.addObject("supList",list);
return m;
}
}









	

