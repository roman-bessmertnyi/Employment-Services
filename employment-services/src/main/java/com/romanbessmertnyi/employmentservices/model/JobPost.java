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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "job_post")
public class JobPost {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "job_post_generator")
	@SequenceGenerator(name = "job_post_generator", sequenceName = "job_post_id_seq")
	private int id;

	// foreign keys

	@OneToMany(mappedBy = "job_post")
	private List<JobPostActivity> job_post_activities;

	@ManyToOne
	@JoinColumn(name = "job_location_id", nullable = false)
	private JobLocation jobLocation;

	@ManyToOne
	@JoinColumn(name = "job_type_id", nullable = false)
	private JobType jobType;

	@ManyToOne
	@JoinColumn(name = "posted_by_id", nullable = false)
	private UserAccount postedBy;

	@ManyToOne
	@JoinColumn(name = "company_id", nullable = false)
	private Company company;

	//

	@NotNull
	@Column(name = "is_company_name_hidden", nullable = false)
	private boolean companyNameHidden;

	@NotNull
	@Column(name = "created_date", nullable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd") // This is for bind Date with @ModelAttribute
	@Temporal(TemporalType.DATE)
	private Date createdDate;

	@NotEmpty
	@Column(name = "job_description", nullable = false)
	private String jobDescription;

	@NotNull
	@Column(name = "is_active", nullable = false)
	private boolean active;
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public List<JobPostActivity> getJob_post_activities() {
		return job_post_activities;
	}


	public void setJob_post_activities(List<JobPostActivity> job_post_activities) {
		this.job_post_activities = job_post_activities;
	}


	public JobLocation getJobLocation() {
		return jobLocation;
	}


	public void setJobLocation(JobLocation jobLocation) {
		this.jobLocation = jobLocation;
	}


	public JobType getJobType() {
		return jobType;
	}


	public void setJobType(JobType jobType) {
		this.jobType = jobType;
	}


	public UserAccount getPostedBy() {
		return postedBy;
	}


	public void setPostedBy(UserAccount postedBy) {
		this.postedBy = postedBy;
	}


	public Company getCompany() {
		return company;
	}


	public void setCompany(Company company) {
		this.company = company;
	}


	public boolean isCompanyNameHidden() {
		return companyNameHidden;
	}


	public void setCompanyNameHidden(boolean isCompanyNameHidden) {
		this.companyNameHidden = isCompanyNameHidden;
	}


	public Date getCreatedDate() {
		return createdDate;
	}


	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}


	public String getJobDescription() {
		return jobDescription;
	}


	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}


	public boolean isActive() {
		return active;
	}


	public void setActive(boolean isActive) {
		this.active = isActive;
	}


	@Override
	public String toString() {
		return "JobPost [id=" + id + ", isCompanyNameHidden=" + companyNameHidden + ", createdDate=" + createdDate
				+ ", jobDescription=" + jobDescription + ", isActive=" + active + "]";
	}


}
