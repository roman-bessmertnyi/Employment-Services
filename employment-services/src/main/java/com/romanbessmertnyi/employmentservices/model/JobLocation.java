package com.romanbessmertnyi.employmentservices.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="job_location")
public class JobLocation {
	@Id @GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "job_location_generator")
	@SequenceGenerator(name="job_location_generator", sequenceName = "job_location_id_seq")
    private int id;
	
	@NotEmpty
    @Column(name="street_adress", nullable=false)
    private String street_adress;
	
	@NotEmpty
    @Column(name="city", nullable=false)
    private String city;
	
	@NotEmpty
    @Column(name="state", nullable=false)
    private String state;
	
	@NotEmpty
    @Column(name="country", nullable=false)
    private String country;
	
	@NotEmpty
    @Column(name="zip", nullable=false)
    private String zip;
	
	@OneToMany(mappedBy = "jobLocation")
    private List<JobPost> job_posts;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStreet_adress() {
		return street_adress;
	}

	public void setStreet_adress(String street_adress) {
		this.street_adress = street_adress;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public List<JobPost> getJob_posts() {
		return job_posts;
	}

	public void setJob_posts(List<JobPost> job_posts) {
		this.job_posts = job_posts;
	}

	@Override
	public String toString() {
		return "JobLocation [id=" + id + ", street_adress=" + street_adress + ", city=" + city + ", state=" + state
				+ ", country=" + country + ", zip=" + zip + ", job_posts=" + job_posts + "]";
	}
}
