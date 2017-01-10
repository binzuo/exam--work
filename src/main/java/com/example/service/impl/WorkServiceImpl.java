package com.example.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.dao.GenericDao;
import com.example.model.Work;
import com.example.service.WorkService;

@Service
public class WorkServiceImpl extends GenericServiceImpl<Work, Integer> implements WorkService {

    @Override
    @Autowired
    @Qualifier("workDaoImpl")
    public void setGenericDao(GenericDao<Work, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}