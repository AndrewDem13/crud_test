package com.demyanenko.usermanager.controllers;


import com.demyanenko.usermanager.entities.User;
import com.demyanenko.usermanager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

@Controller
public class UserController {
    //@Autowired
    UserService userService;

    @Autowired(required = true)
    @Qualifier(value = "userService")
    public void setBookService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "users", method = RequestMethod.GET)
    public String listUsers(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("listUsers", this.userService.listUsers());
        return "users";
    }

    @RequestMapping(value = "/users/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user") User user) {
        if (user.getId() == 0)
            this.userService.addUser(user);
        else
            this.userService.updateUser(user);
        return "redirect:/users";
    }

    @RequestMapping(value = "/remove/{id}")
    public String removeUser(@PathVariable("id") int id) {
        this.userService.removeUser(id);
        return "redirect:/users";
    }

    @RequestMapping(value = "edit/{id}")
    public String editUser(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", this.userService.getUserById(id));
        model.addAttribute("listUsers", this.userService.listUsers());
        return "users";
    }

    @RequestMapping(value = "userdata/{id}")
    public String userData(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", this.userService.getUserById(id));
        return "userdata";
    }
}