package com.ark.portaldemo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ark.portaldemo.entity.Investor;

public interface InvestorRepository extends JpaRepository<Investor, Integer> {

}
