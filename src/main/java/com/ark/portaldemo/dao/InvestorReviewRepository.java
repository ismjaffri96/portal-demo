package com.ark.portaldemo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.ark.portaldemo.entity.InvestorReview;

@RepositoryRestResource(collectionResourceRel = "investorReview", path = "investor-reviews")
public interface InvestorReviewRepository extends JpaRepository<InvestorReview, Integer> {

}
