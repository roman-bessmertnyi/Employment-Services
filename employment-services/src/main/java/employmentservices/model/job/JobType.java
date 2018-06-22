package employmentservices.model.job;
// Generated 22.06.2018 15:44:18 by Hibernate Tools 5.2.10.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * JobType generated by hbm2java
 */
@Entity
@Table(name = "job_type")
public class JobType implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 809827647209111133L;
	private int id;
	private String jobType;
	private Set<JobPost> jobPosts = new HashSet<JobPost>(0);

	public JobType() {
	}

	public JobType(int id, String jobType) {
		this.id = id;
		this.jobType = jobType;
	}

	public JobType(int id, String jobType, Set<JobPost> jobPosts) {
		this.id = id;
		this.jobType = jobType;
		this.jobPosts = jobPosts;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "job_type", nullable = false, length = 20)
	public String getJobType() {
		return this.jobType;
	}

	public void setJobType(String jobType) {
		this.jobType = jobType;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "jobType")
	public Set<JobPost> getJobPosts() {
		return this.jobPosts;
	}

	public void setJobPosts(Set<JobPost> jobPosts) {
		this.jobPosts = jobPosts;
	}

}
