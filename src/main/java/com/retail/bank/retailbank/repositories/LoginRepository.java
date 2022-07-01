package com.retail.bank.retailbank.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.retail.bank.retailbank.model.UserStore;

@Repository
public interface LoginRepository extends JpaRepository<UserStore, String>{
    
}
