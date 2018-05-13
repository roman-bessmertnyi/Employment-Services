package com.romanbessmertnyi.employmentservices.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="user_log")
public class UserLog {
	@Id
	@NotNull
    @Column(name="user_account_id", nullable=false)
    private int user_account_id;
	
	@OneToOne()
	@JoinColumn(name="user_account_id")
    private UserAccount user_account;
	
	@NotNull
    @Column(name="last_login_date", nullable=false)
    private Date last_login_date;
	
	@NotNull
    @Column(name="last_job_apply_date", nullable=false)
    private Date last_job_apply_date;

	public int getUser_account_id() {
		return user_account_id;
	}

	public void setUser_account_id(int user_account_id) {
		this.user_account_id = user_account_id;
	}

	public Date getLast_login_date() {
		return last_login_date;
	}

	public void setLast_login_date(Date last_login_date) {
		this.last_login_date = last_login_date;
	}

	public Date getLast_job_apply_date() {
		return last_job_apply_date;
	}

	public void setLast_job_apply_date(Date last_job_apply_date) {
		this.last_job_apply_date = last_job_apply_date;
	}
	public UserAccount getUser_account() {
		return user_account;
	}

	public void setUser_account(UserAccount user_account) {
		this.user_account = user_account;
	}

	@Override
	public String toString() {
		return "UserLog [user_account_id=" + user_account_id + ", last_login_date=" + last_login_date
				+ ", last_job_apply_date=" + last_job_apply_date + "]";
	}

}
