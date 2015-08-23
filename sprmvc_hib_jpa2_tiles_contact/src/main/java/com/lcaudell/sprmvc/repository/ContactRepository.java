package com.lcaudell.sprmvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import com.lcaudell.sprmvc.entity.Contact;

@Transactional
public interface ContactRepository extends JpaRepository<Contact, Integer> {
	
	//public Contact findByName(String username);
}
