package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.model.Person;
import com.example.service.PersonService;

@Controller
@RequestMapping("person")
public class PersonController extends BaseController {

    private final PersonService personService;

    @Autowired
    public PersonController(PersonService personService) {
        this.personService = personService;
    }

    @RequestMapping("add")
    private String add(Person person) {
        personService.add(person);
        return "redirect:/user.jsp";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        personService.remove(id);
        return "redirect:/person/list";
    }

    @RequestMapping("modify")
    private String modify(Person person) {
        personService.modify(person);
        return "redirect:/person/list";
    }

    @RequestMapping("list/{page}")
    private String list(@PathVariable int page) {
        getSession().setAttribute("pagination", personService.list(page));
        return "redirect:/person/list.jsp";
    }

    @RequestMapping("list")
    private String list() {
        return list(1);
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        getSession().setAttribute("person", personService.search(id));
        return "redirect:/person/edit.jsp";
    }
}