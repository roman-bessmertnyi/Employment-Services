package com.romanbessmertnyi.employmentservices.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@SuppressWarnings("serial")
@Embeddable
public class SeekerSkillSetId implements Serializable {
	
	@Column(name="user_account_id", nullable=false)
    private int user_account_id;
	
    @Column(name="skill_set_id", nullable=false)
    private int skill_set_id;

	public SeekerSkillSetId(int user_account_id, int skill_set_id) {
		super();
		this.user_account_id = user_account_id;
		this.skill_set_id = skill_set_id;
	}

	public int getUser_account_id() {
		return user_account_id;
	}

	public void setUser_account_id(int user_account_id) {
		this.user_account_id = user_account_id;
	}

	public int getSkill_set_id() {
		return skill_set_id;
	}

	public void setSkill_set_id(int skill_set_id) {
		this.skill_set_id = skill_set_id;
	}

	public SeekerSkillSetId() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + skill_set_id;
		result = prime * result + user_account_id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SeekerSkillSetId other = (SeekerSkillSetId) obj;
		if (skill_set_id != other.skill_set_id)
			return false;
		if (user_account_id != other.user_account_id)
			return false;
		return true;
	}
}
