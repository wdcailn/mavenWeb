package com.highsoft.mavenWeb.dao;

import java.util.List;

import com.highsoft.mavenWeb.form.Contact;

public interface ContactDAO {
	public void addContact(Contact contact);
	
	public List<Contact> listContact();
	
	public void removeContact(Integer id);

}
