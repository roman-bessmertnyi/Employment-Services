package employmentservices.model.seeker;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="experience_detail")
public class ExperienceDetail {
	
	@EmbeddedId
    private ExperienceDetailId experienceDetailId;
	
	@NotNull
    @Column(name="is_current_job", nullable=false)
    private boolean is_current_job;
	
	@NotEmpty
    @Column(name="job_title", nullable=false)
    private String job_title;
	
	@NotEmpty
    @Column(name="company_name", nullable=false)
    private String company_name;
	
	@NotEmpty
    @Column(name="description", nullable=false)
    private String description;
	
	@ManyToOne()
	@JoinColumn(name="user_account_id", insertable=false, updatable=false)
    private SeekerProfile seeker_profile;

	public ExperienceDetailId getExperienceDetailId() {
		return experienceDetailId;
	}

	public void setExperienceDetailId(ExperienceDetailId experienceDetailId) {
		this.experienceDetailId = experienceDetailId;
	}

	public boolean isIs_current_job() {
		return is_current_job;
	}

	public void setIs_current_job(boolean is_current_job) {
		this.is_current_job = is_current_job;
	}

	public String getJob_title() {
		return job_title;
	}

	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public SeekerProfile getSeeker_profile() {
		return seeker_profile;
	}

	public void setSeeker_profile(SeekerProfile seeker_profile) {
		this.seeker_profile = seeker_profile;
	}

	@Override
	public String toString() {
		return "ExperienceDetail [experienceDetailId=" + experienceDetailId + ", is_current_job=" + is_current_job
				+ ", job_title=" + job_title + ", company_name=" + company_name + ", description=" + description
				+ ", seeker_profile=" + seeker_profile + "]";
	}
	
}
