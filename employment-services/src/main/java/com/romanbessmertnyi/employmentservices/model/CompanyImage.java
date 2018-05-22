package com.romanbessmertnyi.employmentservices.model;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="company_image")
public class CompanyImage {
	@Id @GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "company_image_generator")
	@SequenceGenerator(name="company_image_generator", sequenceName = "company_image_id_seq")
    private int id;
	
	@ManyToOne
    @JoinColumn(name="company_id", nullable=false)
    private Company company;
	
	@NotNull
	@Column(name="company_image", nullable=false)
    private byte[] company_image;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public byte[] getCompany_image() {
		return company_image;
	}

	public void setCompany_image(byte[] company_image) {
		this.company_image = company_image;
	}

	@Override
	public String toString() {
		return "CompanyImage [id=" + id + ", company=" + company + ", company_image=" + Arrays.toString(company_image)
				+ "]";
	}
}
