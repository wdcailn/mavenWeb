package com.highsoft.mavenWeb.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.highsoft.mavenWeb.dao.ContactDAO;
import com.highsoft.mavenWeb.form.Contact;
@Repository
public class ContactDAOImpl implements ContactDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public void addContact(Contact contact) {
		this.sessionFactory.getCurrentSession().save(contact);

	}

	public List<Contact> listContact() {
		return this.sessionFactory.getCurrentSession().createQuery("from Contact").list();
	}

	public void removeContact(Integer id) {
		Contact contact = (Contact)this.sessionFactory.getCurrentSession().load(Contact.class, id);
		if(null!=contact){
			this.sessionFactory.getCurrentSession().delete(contact);
		}
	}

}
