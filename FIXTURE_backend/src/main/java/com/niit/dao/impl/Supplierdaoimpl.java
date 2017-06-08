package com.niit.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.modaldao.Supplierdao;
import com.niit.modaldto.Supplier;




@Repository("supplierdao")
public class Supplierdaoimpl implements Supplierdao 
{
	@Autowired
	SessionFactory sessionFactory;
	
	public Supplierdaoimpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public void addSupplier(Supplier supplier)
	{
		Session session=sessionFactory.getCurrentSession();
		session.save(supplier);
	}
	
	@Transactional 
	public void deleteSupplier(int sid)
	{
		Session session=sessionFactory.getCurrentSession();
		Supplier supplier=(Supplier)session.get(Supplier.class,sid);
		session.delete(supplier);
	}
	
	public List<Supplier> retrieve()
	{
		Session session=sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Supplier> list=session.createQuery("from Supplier").list();
		session.close();
		return list;
	}

	public Supplier getSupplierById(int sid) {
		 Session session=sessionFactory.openSession();
	        Supplier supplier=(Supplier)session.get(Supplier.class,sid);
	        session.close();
	        return supplier;
	}
	
	@Transactional
	public void updateSupplier(Supplier supplier) {
		Session session=sessionFactory.getCurrentSession();
        session.update(supplier);
	
	}

	
}