package com.romanbessmertnyi.employmentservices.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="seeker_profile")
public class SeekerProfile {
	@Id
	@NotNull
    @Column(name="user_account_id", nullable=false)
    private int user_account_id;
	
	@NotEmpty
    @Column(name="first_name", nullable=false)
    private String first_name;
	
	@NotEmpty
    @Column(name="last_name", nullable=false)
    private String last_name;
	
	@NotNull
    @Column(name="current_salary", nullable=false)
    private int current_salary;
	
	@NotNull
    @Column(name="is_annually_monthly", nullable=false)
    private boolean is_annually_monthly;
	
	@NotEmpty
    @Column(name="currency", nullable=false)
    private String currency;
	
	@OneToOne()
	@JoinColumn(name="user_account_id")
    private UserAccount user_account;
	
	@OneToMany(mappedBy = "seeker_profile")
    private List<EducationDetail> education_details;
	
	@OneToMany(mappedBy = "seeker_profile")
    private List<ExperienceDetail> experience_details;
	
	@OneToMany(mappedBy = "seeker_profile")
    private List<SeekerSkillSet> seeker_skills;
}
