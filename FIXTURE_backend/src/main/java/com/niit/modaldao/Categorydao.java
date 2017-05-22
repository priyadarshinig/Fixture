package com.niit.modaldao;

import java.util.List;

import com.niit.modaldto.Category;
import com.niit.modaldto.Product;
import com.niit.modaldto.User;

public interface Categorydao {
	public void addCategory(Category category);
	public void updateCategory(Category category);
	public void deleteCategory(int catid);
	public Category getCategoryById(int catid);
	public List<Category> displayAll();

}
