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

@Entity
@Table(name="job_type")
public class JobType {
	@Id @GeneratedValue(strategy=GenerationType.SEQUENCE)
	@SequenceGenerator(name="job_type_generator", sequenceName = "job_type_id_seq")
    private int id; 
	
	@Column(name="job_type", unique=true, nullable=false)
    private String jobType;
	
	@OneToMany(mappedBy = "jobType")
    private List<JobPost> jobPosts;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getJobType() {
		return jobType;
	}

	public void setJobType(String jobType) {
		this.jobType = jobType;
	}

	public List<JobPost> getJobPosts() {
		return jobPosts;
	}

	public void setJobPosts(List<JobPost> jobPosts) {
		this.jobPosts = jobPosts;
	}

	@Override
	public String toString() {
		return "JobType [id=" + id + ", jobType=" + jobType + ", jobPosts=" + jobPosts + "]";
	}
}
