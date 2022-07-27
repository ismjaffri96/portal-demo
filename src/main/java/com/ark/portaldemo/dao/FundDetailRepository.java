package com.ark.portaldemo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.ark.portaldemo.entity.FundDetail;

@RepositoryRestResource(collectionResourceRel = "fundDetail", path = "fund-details")
public interface FundDetailRepository extends JpaRepository<FundDetail, Integer> {

}
