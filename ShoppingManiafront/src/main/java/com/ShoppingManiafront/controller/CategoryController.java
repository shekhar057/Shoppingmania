package com.ShoppingManiaFront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ShoppingMania2.dao.CategoryDAO;
import com.ShoppingMania2.daoImpl.CategoryDAOImpl;
import com.ShoppingMania2.model.Category;
import com.ShoppingMania2.model.Supplier;

@Controller
public class CategoryController {
@Autowired
CategoryDAO categoryDAO;
@RequestMapping("/addCategory")
public String addSupplier(){
return "addCategory";
}
@RequestMapping(value="/saveCategory",method=RequestMethod.POST)
public String saveCategory(@RequestParam String c_Name){
Category category=new Category();
category.setC_Name(c_Name);
categoryDAO.addCategory(category);
return "redirect:/viewCategory";
}
@RequestMapping(value="/updateCategory",method=RequestMethod.POST)
public String updateCategory(@RequestParam String c_Name,@RequestParam int c_id){
Category category=new Category();
category.setC_id(c_id);
category.setC_Name(c_Name);
categoryDAO.updateCategory(category);
return "redirect:/viewCategory";
}

@RequestMapping(value="/deleteCategory/{cid}")
public String deleteCategory(@PathVariable int cid){
Category category=categoryDAO.getCategoryById(cid);
try {
	categoryDAO.deleteCategory(category);
} catch (Exception e) {
	// TODO: handle exception
}
return "redirect:/viewCategory";
} 
@RequestMapping(value="/updateCategoryById/{cid}")
public ModelAndView updateCategoryByIdCategory(@PathVariable int cid){
ModelAndView m=new ModelAndView("updateCategory");
	Category category=categoryDAO.getCategoryById(cid);
m.addObject("cat",category);
return m;
} 

@RequestMapping("/viewCategory")
public ModelAndView viewCategory(){
ModelAndView m=new ModelAndView("viewCategory");
List<Category> list=categoryDAO.getAllCategory();
m.addObject("catList",list);
return m;
}
}









	

