package com.romanbessmertnyi.employmentservices.model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="experience_detail")
public class ExperienceDetail {
	
	@EmbeddedId
    private ExperienceDetailId experienceDetailId;
	
	@NotNull
    @Column(name="is_current_job", nullable=false)
    private boolean is_current_job;
	
	@NotEmpty
    @Column(name="job_title", nullable=false)
    private String job_title;
	
	@NotEmpty
    @Column(name="company_name", nullable=false)
    private String company_name;
	
	@NotEmpty
    @Column(name="description", nullable=false)
    private String description;
	
	@ManyToOne()
	@JoinColumn(name="user_account_id", insertable=false, updatable=false)
    private SeekerProfile seeker_profile;
	
}
