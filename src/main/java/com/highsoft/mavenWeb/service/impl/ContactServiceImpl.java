package com.highsoft.mavenWeb.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.highsoft.mavenWeb.dao.ContactDAO;
import com.highsoft.mavenWeb.form.Contact;
import com.highsoft.mavenWeb.service.ContactService;
@Service
public class ContactServiceImpl implements ContactService {
	@Autowired
	private ContactDAO contactDAO;
	@Transactional
	public void addContact(Contact contact) {
		this.contactDAO.addContact(contact);
	}
	@Transactional
	public List<Contact> listContact() {
		return this.contactDAO.listContact();
	}
	@Transactional
	public void removeContact(Integer id) {
		this.contactDAO.removeContact(id);
	}

}
