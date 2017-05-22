package com.niit.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.modaldao.Supplierdao;
import com.niit.modaldto.Supplier;
import org.hibernate.SessionFactory;

@Transactional
@Repository("supplierdao")
public class Supplierdaoimpl implements Supplierdao {
	@Autowired
	SessionFactory sessionFactory;
	public void addSupplier(Supplier supplier) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.saveOrUpdate(supplier);
		transaction.commit();
		session.close();
		
	}

	public void updateSupplier(Supplier supplier) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.update(supplier);
		transaction.commit();
		session.close();
		
	}

	public void deleteSupplier(int sid) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.delete(sid);
		transaction.commit();
		session.close();
		
	}

	public Supplier getSupplierBySuppliername(String sname) {
		Session session=sessionFactory.openSession();
		Supplier supplier=(Supplier)session.get(Supplier.class,sname);
		session.close();
		return supplier;
	}

	public List<Supplier> displayAll() 
	{
		Session session=sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Supplier> list=session.createQuery("from Supplier").list();
		session.close();
		return list;
	}

	
	
}
