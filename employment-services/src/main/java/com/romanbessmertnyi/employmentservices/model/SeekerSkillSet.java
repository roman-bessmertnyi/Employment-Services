package com.romanbessmertnyi.employmentservices.model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="seeker_skill_set")
public class SeekerSkillSet {
	@EmbeddedId
    private SeekerSkillSetId seekerSkillSetId;
	
	@NotNull
    @Column(name="skill_level", nullable=false)
    private int skill_level;
	
	@ManyToOne()
	@JoinColumn(name="user_account_id", insertable=false, updatable=false)
    private SeekerProfile seeker_profile;
	
	@OneToOne()
	@JoinColumn(name="skill_set_id", insertable=false, updatable=false)
    private SkillSet skill_set;
}
