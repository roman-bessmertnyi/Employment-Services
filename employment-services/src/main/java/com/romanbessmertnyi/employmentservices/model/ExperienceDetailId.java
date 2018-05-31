package com.romanbessmertnyi.employmentservices.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
@Embeddable
public class ExperienceDetailId implements Serializable {

    @Column(name="user_account_id", nullable=false)
    private int user_account_id;
	
    @DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
    @Column(name="start_date", nullable=false)
    private Date start_date;
	
    @DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
    @Column(name="end_date", nullable=false)
    private Date end_date;

	public ExperienceDetailId(int user_account_id, Date start_date, Date end_date) {
		super();
		this.user_account_id = user_account_id;
		this.start_date = start_date;
		this.end_date = end_date;
	}

	public int getUser_account_id() {
		return user_account_id;
	}

	public ExperienceDetailId() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void setUser_account_id(int user_account_id) {
		this.user_account_id = user_account_id;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((end_date == null) ? 0 : end_date.hashCode());
		result = prime * result + ((start_date == null) ? 0 : start_date.hashCode());
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
		ExperienceDetailId other = (ExperienceDetailId) obj;
		if (end_date == null) {
			if (other.end_date != null)
				return false;
		} else if (!end_date.equals(other.end_date))
			return false;
		if (start_date == null) {
			if (other.start_date != null)
				return false;
		} else if (!start_date.equals(other.start_date))
			return false;
		if (user_account_id != other.user_account_id)
			return false;
		return true;
	}
	
}
