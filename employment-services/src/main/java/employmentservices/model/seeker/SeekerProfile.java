package employmentservices.model.seeker;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import employmentservices.model.user.UserAccount;

@Entity
@Table(name = "seeker_profile")
public class SeekerProfile {
	@Id
	@NotNull
	@Column(name = "user_account_id", nullable = false)
	private int userAccountId;

	@NotEmpty
	@Column(name = "first_name", nullable = false)
	private String first_name;

	@NotEmpty
	@Column(name = "last_name", nullable = false)
	private String last_name;

	@Column(name = "current_salary")
	private int current_salary;

	@Column(name = "is_annually_monthly")
	private boolean is_annually_monthly;

	@Column(name = "currency")
	private String currency;

	@NotEmpty
	@Column(name = "headline", nullable = false)
	private String headline;
	
	@Column(name = "description")
	private String description;

	@OneToOne()
	@JoinColumn(name = "user_account_id")
	private UserAccount user_account;

	@OneToMany(mappedBy = "seeker_profile")
	private List<EducationDetail> education_details;

	@OneToMany(mappedBy = "seeker_profile")
	private List<ExperienceDetail> experience_details;

	@OneToMany(mappedBy = "seeker_profile")
	private List<SeekerSkillSet> seeker_skills;

	public int getUserAccountId() {
		return userAccountId;
	}

	public void setUserAccountId(int user_account_id) {
		this.userAccountId = user_account_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public int getCurrent_salary() {
		return current_salary;
	}

	public void setCurrent_salary(int current_salary) {
		this.current_salary = current_salary;
	}

	public boolean isIs_annually_monthly() {
		return is_annually_monthly;
	}

	public void setIs_annually_monthly(boolean is_annually_monthly) {
		this.is_annually_monthly = is_annually_monthly;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public UserAccount getUser_account() {
		return user_account;
	}

	public void setUser_account(UserAccount user_account) {
		this.user_account = user_account;
	}

	public List<EducationDetail> getEducation_details() {
		return education_details;
	}

	public void setEducation_details(List<EducationDetail> education_details) {
		this.education_details = education_details;
	}

	public List<ExperienceDetail> getExperience_details() {
		return experience_details;
	}

	public void setExperience_details(List<ExperienceDetail> experience_details) {
		this.experience_details = experience_details;
	}

	public List<SeekerSkillSet> getSeeker_skills() {
		return seeker_skills;
	}

	public void setSeeker_skills(List<SeekerSkillSet> seeker_skills) {
		this.seeker_skills = seeker_skills;
	}

	public String getHeadline() {
		return headline;
	}

	public void setHeadline(String headline) {
		this.headline = headline;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
