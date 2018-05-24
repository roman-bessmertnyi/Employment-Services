package com.romanbessmertnyi.employmentservices.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@SuppressWarnings("serial")
@Embeddable
public class EducationDetailId implements Serializable {

	@Column(name="user_account_id", nullable=false)
    private int user_account_id;
	
    @Column(name="certificate_degree_name", nullable=false)
    private String certificate_degree_name;
	
    @Column(name="major", nullable=false)
    private String major;

	public EducationDetailId(int user_account_id, String certificate_degree_name, String major) {
		super();
		this.user_account_id = user_account_id;
		this.certificate_degree_name = certificate_degree_name;
		this.major = major;
	}

	public int getUser_account_id() {
		return user_account_id;
	}

	public void setUser_account_id(int user_account_id) {
		this.user_account_id = user_account_id;
	}

	public String getCertificate_degree_name() {
		return certificate_degree_name;
	}

	public void setCertificate_degree_name(String certificate_degree_name) {
		this.certificate_degree_name = certificate_degree_name;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((certificate_degree_name == null) ? 0 : certificate_degree_name.hashCode());
		result = prime * result + ((major == null) ? 0 : major.hashCode());
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
		EducationDetailId other = (EducationDetailId) obj;
		if (certificate_degree_name == null) {
			if (other.certificate_degree_name != null)
				return false;
		} else if (!certificate_degree_name.equals(other.certificate_degree_name))
			return false;
		if (major == null) {
			if (other.major != null)
				return false;
		} else if (!major.equals(other.major))
			return false;
		if (user_account_id != other.user_account_id)
			return false;
		return true;
	}

	public EducationDetailId() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
