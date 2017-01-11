package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.model.Work;
import com.example.service.WorkService;

@Controller
@RequestMapping("work")
public class WorkController extends BaseController {

    private final WorkService workService;

    @Autowired
    public WorkController(WorkService workService) {
        this.workService = workService;
    }

    @RequestMapping("add")
    private String add(Work work) {
        workService.add(work);
        return "redirect:/work/list";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        workService.remove(id);
        return "redirect:/work/list";
    }

    @RequestMapping("modify")
    private String modify(Work work) {
        workService.modify(work);
        return "redirect:/work/list";
    }

    @RequestMapping("list/{page}")
    private String list(@PathVariable int page) {
        getSession().setAttribute("pagination", workService.list(page));
        return "redirect:/work/list.jsp";
    }

    @RequestMapping("list")
    private String list() {
        return list(1);
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        getSession().setAttribute("work", workService.search(id));
        return "redirect:/work/edit.jsp";
    }
    @RequestMapping("query/{id}")
    private String query(@PathVariable("id") Integer id) {
        getSession().setAttribute("work", workService.queryAll("queryWorkNameById",id));

        return "redirect:/person/add.jsp";
    }
    @RequestMapping("querypersonbyworkId/{id}")
    private String querypersonbyworkId(@PathVariable("id") Integer id) {
        getSession().setAttribute("pagination", workService.query(1,"querypersonbyworkId",id));

        return "redirect:/person/list.jsp";
    }



}