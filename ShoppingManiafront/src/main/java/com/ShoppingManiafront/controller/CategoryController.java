package com.ShoppingManiafront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ShoppingMania.dao.CategoryDAO;
import com.ShoppingMania.daoIml.CategoryDAOImpl;
import com.ShoppingMania.modal.Category;
import com.ShoppingMania.modal.Supplier;

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
public String saveCategory(@RequestParam String c_Name,@RequestParam int c_id){
Category category=new Category();
category.setC_id(c_id);
category.setC_Name(c_Name);
categoryDAO.updateCategory(category);
return "redirect:/viewCategory";
}

@RequestMapping(value="/deleteCategory/{cid}")
public String deleteCategory(@PathVariable int cid){
Category category=categoryDAO.getCategoryById(cid);
categoryDAO.deleteCategory(category);
return "redirect:/viewCategory";
} 
@RequestMapping("/viewCategory")
public ModelAndView viewCategory(){
ModelAndView m=new ModelAndView("viewCategory");
List<Category> list=categoryDAO.getAllCategory();
m.addObject("catList",list);   
return m; 
}

@RequestMapping(value="/updateCategorybyid/{cid}")
public ModelAndView upadateCategoryById(@PathVariable int cid){
Category category=categoryDAO.getCategoryById(cid);
ModelAndView m=new ModelAndView("updateCategory");
m.addObject("cat",category);  
return m;
} 

}

