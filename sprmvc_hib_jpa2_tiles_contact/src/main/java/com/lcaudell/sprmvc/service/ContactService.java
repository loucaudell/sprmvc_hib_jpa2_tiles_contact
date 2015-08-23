package com.lcaudell.sprmvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.lcaudell.sprmvc.entity.Contact;
import com.lcaudell.sprmvc.repository.ContactRepository;

@Service
@Repository
@Transactional
public class ContactService {
	
	@Autowired
	private ContactRepository contactRepository;

	
	public void save(Contact contact){
		contactRepository.save(contact);
	}
	
	public void delete(int id){
		contactRepository.delete(id);
	}

	public List<Contact> getContacts() {
       return contactRepository.findAll();        
	}

/*	
	public Contact findByUserName(String username) {
		return contactRepository.findByName(username);
	}
*/
	
/*	public List<Contact> findAll() {
		return contactRepository.findAll();
	}
*/	

/*	public Contact findOne(int id) {
		return contactRepository.findOne(id);
	}
*/
}
