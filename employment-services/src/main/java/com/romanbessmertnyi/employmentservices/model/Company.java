package com.romanbessmertnyi.employmentservices.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "company")
public class Company {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "company_generator")
	@SequenceGenerator(name = "company_generator", sequenceName = "company_id_seq")
	private int id;

	@NotEmpty
	@Column(name = "company_name", nullable = false)
	private String company_name;

	@NotEmpty
	@Column(name = "profile_description", nullable = false)
	private String profile_description;

	// foreign keys
	@ManyToOne
    @JoinColumn(name="business_stream_id", nullable=false)
    private BusisnessStream busisness_stream;
	
	@OneToMany(mappedBy = "company")
    private List<CompanyImage> company_images;
	
	@OneToMany(mappedBy = "company")
    private List<JobPost> job_posts;
	//
	
	@NotNull
    @Column(name="establishment_date", nullable=false)
    private Date establishment_date;
	
	@NotEmpty
    @Column(name="company_website_url", nullable=false)
    private String company_website_url;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getProfile_description() {
		return profile_description;
	}

	public void setProfile_description(String profile_description) {
		this.profile_description = profile_description;
	}

	public BusisnessStream getBusisness_stream() {
		return busisness_stream;
	}

	public void setBusisness_stream(BusisnessStream busisness_stream) {
		this.busisness_stream = busisness_stream;
	}

	public List<CompanyImage> getCompany_images() {
		return company_images;
	}

	public void setCompany_images(List<CompanyImage> company_images) {
		this.company_images = company_images;
	}

	public List<JobPost> getJob_posts() {
		return job_posts;
	}

	public void setJob_posts(List<JobPost> job_posts) {
		this.job_posts = job_posts;
	}

	public Date getEstablishment_date() {
		return establishment_date;
	}

	public void setEstablishment_date(Date establishment_date) {
		this.establishment_date = establishment_date;
	}

	public String getCompany_website_url() {
		return company_website_url;
	}

	public void setCompany_website_url(String company_website_url) {
		this.company_website_url = company_website_url;
	}

	@Override
	public String toString() {
		return "Company [id=" + id + ", company_name=" + company_name + ", profile_description=" + profile_description
				+ ", busisness_stream=" + busisness_stream + ", company_images=" + company_images.size() + ", job_posts="
				+ job_posts.size() + ", establishment_date=" + establishment_date + ", company_website_url="
				+ company_website_url + "]";
	}
}
