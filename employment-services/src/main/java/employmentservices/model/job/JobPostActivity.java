package employmentservices.model.job;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import employmentservices.model.user.UserAccount;

@Entity
@Table(name="job_post_activity")
public class JobPostActivity {
	@EmbeddedId
    private JobPostActivityId jobPostActivityId;
	
	@NotNull
    @Column(name="apply_date", nullable=false)
    private Date apply_date;
	
	@ManyToOne()
	@JoinColumn(name="user_account_id", insertable=false, updatable=false)
    private UserAccount user_account;
	
	@ManyToOne()
	@JoinColumn(name="job_post_id", insertable=false, updatable=false)
    private JobPost job_post;

	public JobPostActivityId getJobPostActivityId() {
		return jobPostActivityId;
	}

	public void setJobPostActivityId(JobPostActivityId jobPostActivityId) {
		this.jobPostActivityId = jobPostActivityId;
	}

	public Date getApply_date() {
		return apply_date;
	}

	public void setApply_date(Date apply_date) {
		this.apply_date = apply_date;
	}

	public UserAccount getUser_account() {
		return user_account;
	}

	public void setUser_account(UserAccount user_account) {
		this.user_account = user_account;
	}

	public JobPost getJob_post() {
		return job_post;
	}

	public void setJob_post(JobPost job_post) {
		this.job_post = job_post;
	}

	@Override
	public String toString() {
		return "JobPostActivity [jobPostActivityId=" + jobPostActivityId + ", apply_date=" + apply_date
				+ ", user_account=" + user_account + ", job_post=" + job_post + "]";
	}
}
