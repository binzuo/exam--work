package com.example.controller;

import com.example.model.User;
import com.example.service.UserService;
import com.example.service.WorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * Created by Administrator on 2015/12/20.
 */
@Controller
@RequestMapping("user")
public class UserController extends BaseController {

    private final UserService userService;
    private final WorkService workService;

    @Autowired
    public UserController(UserService userService,WorkService workService) {
        this.userService = userService;
        this.workService=workService;
    }

    @RequestMapping("register")
    private String register(User user) {
        if (userService.register(user)) {
            return "redirect:/default.jsp";
        } else {
            getRequest().setAttribute("message", "username exist.");
            return "signup";
        }
    }

    @RequestMapping("login")
    private String login(User user) {
        user = userService.login(user);
        if (user != null) {
            getSession().setAttribute("user", user);
            if (user.getRole().equals("admin")) {
                return "redirect:/work/index.jsp";
            }
            if (user.getRole().equals("user")) {
                getSession().setAttribute("pagination", workService.list(1));
                //getSession().setAttribute("pagination", workService.list(1));
                return "redirect:/user.jsp";
            }
            return "redirect:/index.jsp";
        } else {
            getRequest().setAttribute("message", "invalid username or password.");
            return "default";
        }
    }

    @RequestMapping("logout")
    private String logout() {
        getSession().invalidate();
        return "redirect:/default.jsp";
    }
}
