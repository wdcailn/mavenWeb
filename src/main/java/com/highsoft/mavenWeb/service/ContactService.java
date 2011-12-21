package com.highsoft.mavenWeb.service;

import java.util.List;

import com.highsoft.mavenWeb.form.Contact;

public interface ContactService {
	public void addContact(Contact contact);
	public List<Contact> listContact();
	public void removeContact(Integer id);
}
