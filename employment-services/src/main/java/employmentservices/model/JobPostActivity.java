package employmentservices.model;
// Generated 22.06.2018 15:44:18 by Hibernate Tools 5.2.10.Final

import java.util.Date;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * JobPostActivity generated by hbm2java
 */
@Entity
@Table(name = "job_post_activity")
public class JobPostActivity implements java.io.Serializable {

	private JobPostActivityId id;
	private JobPost jobPost;
	private UserAccount userAccount;
	private Date applyDate;

	public JobPostActivity() {
	}

	public JobPostActivity(JobPostActivityId id, JobPost jobPost, UserAccount userAccount, Date applyDate) {
		this.id = id;
		this.jobPost = jobPost;
		this.userAccount = userAccount;
		this.applyDate = applyDate;
	}

	@EmbeddedId

	@AttributeOverrides({
			@AttributeOverride(name = "userAccountId", column = @Column(name = "user_account_id", nullable = false)),
			@AttributeOverride(name = "jobPostId", column = @Column(name = "job_post_id", nullable = false)) })
	public JobPostActivityId getId() {
		return this.id;
	}

	public void setId(JobPostActivityId id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "job_post_id", nullable = false, insertable = false, updatable = false)
	public JobPost getJobPost() {
		return this.jobPost;
	}

	public void setJobPost(JobPost jobPost) {
		this.jobPost = jobPost;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_account_id", nullable = false, insertable = false, updatable = false)
	public UserAccount getUserAccount() {
		return this.userAccount;
	}

	public void setUserAccount(UserAccount userAccount) {
		this.userAccount = userAccount;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "apply_date", nullable = false, length = 13)
	public Date getApplyDate() {
		return this.applyDate;
	}

	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}

}
