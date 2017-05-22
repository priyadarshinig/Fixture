package com.niit.modaldto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int prodid;
	private int prodprice; 
	private int stock;
	private int catid;
	private int sid;
	private String prodname; 
	private String proddesc;
	
	public int getProdid() {
		return prodid;
	}
	public void setProdid(int prodid) {
		this.prodid = prodid;
	}
	public int getProdprice() {
		return prodprice;
	}
	public void setProdprice(int prodprice) {
		this.prodprice = prodprice;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getCatid() {
		return catid;
	}
	public void setCatid(int catid) {
		this.catid = catid;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getProdname() {
		return prodname;
	}
	public void setProdname(String prodname) {
		this.prodname = prodname;
	}
	public String getProddesc() {
		return proddesc;
	}
	public void setProddesc(String proddesc) {
		this.proddesc = proddesc;
	}
	
}
