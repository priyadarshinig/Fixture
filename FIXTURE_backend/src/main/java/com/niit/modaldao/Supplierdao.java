package com.niit.modaldao;

import java.util.List;

import com.niit.modaldto.*;

public interface Supplierdao {
	public void addSupplier(Supplier supplier);
	public void updateSupplier(Supplier supplier);
	public void deleteSupplier(int sid);
	public Supplier getSupplierBySuppliername(String sname);
	public List<Supplier> displayAll();

}
