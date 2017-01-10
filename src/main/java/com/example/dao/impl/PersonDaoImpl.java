package com.example.dao.impl;

import org.springframework.stereotype.Repository;

import com.example.dao.PersonDao;
import com.example.model.Person;

@Repository
public class PersonDaoImpl extends GenericDaoImpl<Person, Integer> implements PersonDao {}