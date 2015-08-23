package com.lcaudell.sprmvc.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lcaudell.sprmvc.entity.Contact;
import com.lcaudell.sprmvc.service.ContactService;

@Controller
public class ContactController {


	@Autowired
	private ContactService contactService;
	
	@ModelAttribute("contactor")
	public Contact constructContact() {
		return new Contact();
	}
	
	@RequestMapping(value="/contact", method=RequestMethod.GET)
	public String getContact() {
		return "contact";
	}
	
	@RequestMapping(value="/contact", method=RequestMethod.POST)
	public String postContact(@Valid @ModelAttribute("contactor") Contact contactForm, BindingResult result ) {
       if( result.hasErrors()){	
		return "contact";
       }
       contactService.save(contactForm);
       return "redirect:contact.html?success=true";
	}
	
	@RequestMapping(value="contactList")
	public String contacts(Model model){
		model.addAttribute("contactList", contactService.getContacts());
		return "contactList";
	}
	
	@RequestMapping(value="/contact/remove/{id}")
	public String removeContact(@PathVariable int id){
		contactService.delete(id);
		return "redirect:/contactList.html";
	}
}
