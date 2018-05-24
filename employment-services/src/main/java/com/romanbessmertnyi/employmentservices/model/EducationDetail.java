package com.romanbessmertnyi.employmentservices.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="education_detail")
public class EducationDetail {
	
	@EmbeddedId
    private EducationDetailId educationDetailId;
	
	@NotEmpty
    @Column(name="institute_university_name", nullable=false)
    private String institute_university_name;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@NotNull
    @Column(name="starting_date", nullable=false)
    private Date starting_date;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
    @Column(name="completion_date")
    private Date completion_date;
    
    @Column(name="percentage")
    private int percentage;

    @Column(name="cgpa")
    private int cgpa;
	
	@ManyToOne()
	@JoinColumn(name="user_account_id", insertable=false, updatable=false)
    private SeekerProfile seeker_profile;

	public EducationDetailId getEducationDetailId() {
		return educationDetailId;
	}
	public void setEducationDetailId(EducationDetailId educationDetailId) {
		this.educationDetailId = educationDetailId;
		}

	public String getInstitute_university_name() {
		return institute_university_name;
	}



	public void setInstitute_university_name(String institute_university_name) {
		this.institute_university_name = institute_university_name;
	}



	public Date getStarting_date() {
		return starting_date;
	}



	public void setStarting_date(Date starting_date) {
		this.starting_date = starting_date;
	}



	public Date getCompletion_date() {
		return completion_date;
	}



	public void setCompletion_date(Date completion_date) {
		this.completion_date = completion_date;
	}



	public int getPercentage() {
		return percentage;
	}



	public void setPercentage(int percentage) {
		this.percentage = percentage;
	}



	public int getCgpa() {
		return cgpa;
	}



	public void setCgpa(int cgpa) {
		this.cgpa = cgpa;
	}



	public SeekerProfile getSeeker_profile() {
		return seeker_profile;
	}



	public void setSeeker_profile(SeekerProfile seeker_profile) {
		this.seeker_profile = seeker_profile;
	}



	@Override
	public String toString() {
		return "EducationDetail [educationDetailId=" + educationDetailId + ", institute_university_name="
				+ institute_university_name + ", starting_date=" + starting_date + ", completion_date="
				+ completion_date + ", percentage=" + percentage + ", cgpa=" + cgpa + ", seeker_profile="
				+ seeker_profile + "]";
	}

}
