package com.romanbessmertnyi.employmentservices.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@SuppressWarnings("serial")
@Embeddable
public class JobPostActivityId implements Serializable {
	@Column(name="user_account_id", nullable=false)
    private int user_account_id;
	
    @Column(name="job_post_id", nullable=false)
    private int job_post_id;

	public JobPostActivityId(int user_account_id, int job_post_id) {
		super();
		this.user_account_id = user_account_id;
		this.job_post_id = job_post_id;
	}

	public int getUser_account_id() {
		return user_account_id;
	}

	public void setUser_account_id(int user_account_id) {
		this.user_account_id = user_account_id;
	}

	public int getJob_post_id() {
		return job_post_id;
	}

	public void setJob_post_id(int job_post_id) {
		this.job_post_id = job_post_id;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + job_post_id;
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
		JobPostActivityId other = (JobPostActivityId) obj;
		if (job_post_id != other.job_post_id)
			return false;
		if (user_account_id != other.user_account_id)
			return false;
		return true;
	}
}
