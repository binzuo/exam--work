package com.example.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.dao.GenericDao;
import com.example.model.Person;
import com.example.service.PersonService;

@Service
public class PersonServiceImpl extends GenericServiceImpl<Person, Integer> implements PersonService {

    @Override
    @Autowired
    @Qualifier("personDaoImpl")
    public void setGenericDao(GenericDao<Person, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}