package employmentservices.model;
// Generated 22.06.2018 15:44:18 by Hibernate Tools 5.2.10.Final

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * JobPostActivityId generated by hbm2java
 */
@Embeddable
public class JobPostActivityId implements java.io.Serializable {

	private int userAccountId;
	private int jobPostId;

	public JobPostActivityId() {
	}

	public JobPostActivityId(int userAccountId, int jobPostId) {
		this.userAccountId = userAccountId;
		this.jobPostId = jobPostId;
	}

	@Column(name = "user_account_id", nullable = false)
	public int getUserAccountId() {
		return this.userAccountId;
	}

	public void setUserAccountId(int userAccountId) {
		this.userAccountId = userAccountId;
	}

	@Column(name = "job_post_id", nullable = false)
	public int getJobPostId() {
		return this.jobPostId;
	}

	public void setJobPostId(int jobPostId) {
		this.jobPostId = jobPostId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof JobPostActivityId))
			return false;
		JobPostActivityId castOther = (JobPostActivityId) other;

		return (this.getUserAccountId() == castOther.getUserAccountId())
				&& (this.getJobPostId() == castOther.getJobPostId());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getUserAccountId();
		result = 37 * result + this.getJobPostId();
		return result;
	}

}
