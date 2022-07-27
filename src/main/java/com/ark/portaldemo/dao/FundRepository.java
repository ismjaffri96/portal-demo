package com.ark.portaldemo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ark.portaldemo.entity.Fund;

public interface FundRepository extends JpaRepository<Fund, Integer> {

}
