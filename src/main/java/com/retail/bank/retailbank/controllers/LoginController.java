package com.retail.bank.retailbank.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.retail.bank.retailbank.repositories.LoginRepository;

@RestController
@RequestMapping(value = "/login")
public class LoginController {
    
    @Autowired
    private LoginRepository loginRepository;

    
}
