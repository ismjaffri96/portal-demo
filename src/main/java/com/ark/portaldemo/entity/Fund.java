package com.ark.portaldemo.entity;

import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="fund")
public class Fund {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@ManyToMany(fetch=FetchType.LAZY, cascade={CascadeType.PERSIST, CascadeType.MERGE,
			 CascadeType.DETACH, CascadeType.REFRESH})
	@JoinTable (
			name="fund_investor",
			joinColumns=@JoinColumn(name="fund_id"),
			inverseJoinColumns=@JoinColumn(name="investor_id")
			)
	private Set<Investor> investors;
	
	@Column(name="fund_symbol")
	private String fundSymbol;
	
	@Column(name="fund_name")
	private String fundName;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="fund_detail_id")
	private FundDetail fundDetail;

	public Fund() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Set<Investor> getInvestors() {
		return investors;
	}

	public void setInvestors(Set<Investor> investors) {
		this.investors = investors;
	}

	public String getFundSymbol() {
		return fundSymbol;
	}

	public void setFundSymbol(String fundSymbol) {
		this.fundSymbol = fundSymbol;
	}

	public String getFundName() {
		return fundName;
	}

	public void setFundName(String fundName) {
		this.fundName = fundName;
	}
	
	public FundDetail getFundDetail() {
		return fundDetail;
	}

	public void setFundDetail(FundDetail fundDetail) {
		this.fundDetail = fundDetail;
	}
}
