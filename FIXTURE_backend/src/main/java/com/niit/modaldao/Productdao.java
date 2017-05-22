package com.niit.modaldao;

import java.util.List;

import com.niit.modaldto.*;


public interface Productdao {
	public void addProduct(Product product);
	public void updateProduct(Product product);
	public void deleteProduct(int prodid);
	public Product getproductByProduct(String prodname);
	public List<Product> displayAll();


}
