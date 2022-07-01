package com.retail.bank.retailbank.model;

import java.time.LocalDateTime;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;

import lombok.Data;

@Entity
@Data
public class UserStore {
    @Column(name = "username")
    private String username;

    @Column(name = "password")
    private String password;

    @Column(name = "login_timestamp")
    private LocalDateTime loginTimestamp;
}
