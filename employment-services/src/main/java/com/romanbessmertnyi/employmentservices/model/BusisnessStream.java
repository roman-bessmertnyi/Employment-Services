package com.romanbessmertnyi.employmentservices.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="busisness_stream")
public class BusisnessStream {
	@Id @GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "busisness_stream_generator")
	@SequenceGenerator(name="busisness_stream_generator", sequenceName = "busisness_stream_id_seq")
    private int id;
	
	@NotEmpty
    @Column(name="business_stream_name", nullable=false)
    private String business_stream_name;
	
	@OneToMany(mappedBy = "busisness_stream", fetch =FetchType.EAGER)
    private List<Company> companies;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBusiness_stream_name() {
		return business_stream_name;
	}

	public void setBusiness_stream_name(String business_stream_name) {
		this.business_stream_name = business_stream_name;
	}

	public List<Company> getCompanies() {
		return companies;
	}

	public void setCompanies(List<Company> companies) {
		this.companies = companies;
	}

	@Override
	public String toString() {
		return "BusisnessStream [id=" + id + ", business_stream_name=" + business_stream_name + ", companies="
				+ companies.size() + "]";
	}
}
