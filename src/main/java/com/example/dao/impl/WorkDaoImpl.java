package com.example.dao.impl;

import org.springframework.stereotype.Repository;

import com.example.dao.WorkDao;
import com.example.model.Work;

@Repository
public class WorkDaoImpl extends GenericDaoImpl<Work, Integer> implements WorkDao {}