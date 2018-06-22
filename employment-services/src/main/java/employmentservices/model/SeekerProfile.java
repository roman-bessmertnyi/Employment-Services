package employmentservices.model;
// Generated 22.06.2018 15:44:18 by Hibernate Tools 5.2.10.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * SeekerProfile generated by hbm2java
 */
@Entity
@Table(name = "seeker_profile")
public class SeekerProfile implements java.io.Serializable {

	private int id;
	private Currency currency;
	private Location location;
	private UserAccount userAccount;
	private String firstName;
	private String lastName;
	private String headline;
	private String description;
	private String website;
	private Integer salary;
	private Boolean isAnnuallyMonthly;
	private int age;
	private String contactNumber;
	private String resumePath;
	private String imagePath;
	private Set<EducationDetail> educationDetails = new HashSet<EducationDetail>(0);
	private Set<SeekerSkillSet> seekerSkillSets = new HashSet<SeekerSkillSet>(0);
	private Set<ExperienceDetail> experienceDetails = new HashSet<ExperienceDetail>(0);
	private Set<SeekerTag> seekerTags = new HashSet<SeekerTag>(0);

	public SeekerProfile() {
	}

	public SeekerProfile(int id, Currency currency, Location location, UserAccount userAccount, String firstName,
			String lastName, String headline, String description, String website, int age, String contactNumber) {
		this.id = id;
		this.currency = currency;
		this.location = location;
		this.userAccount = userAccount;
		this.firstName = firstName;
		this.lastName = lastName;
		this.headline = headline;
		this.description = description;
		this.website = website;
		this.age = age;
		this.contactNumber = contactNumber;
	}

	public SeekerProfile(int id, Currency currency, Location location, UserAccount userAccount, String firstName,
			String lastName, String headline, String description, String website, Integer salary,
			Boolean isAnnuallyMonthly, int age, String contactNumber, String resumePath, String imagePath,
			Set<EducationDetail> educationDetails, Set<SeekerSkillSet> seekerSkillSets,
			Set<ExperienceDetail> experienceDetails, Set<SeekerTag> seekerTags) {
		this.id = id;
		this.currency = currency;
		this.location = location;
		this.userAccount = userAccount;
		this.firstName = firstName;
		this.lastName = lastName;
		this.headline = headline;
		this.description = description;
		this.website = website;
		this.salary = salary;
		this.isAnnuallyMonthly = isAnnuallyMonthly;
		this.age = age;
		this.contactNumber = contactNumber;
		this.resumePath = resumePath;
		this.imagePath = imagePath;
		this.educationDetails = educationDetails;
		this.seekerSkillSets = seekerSkillSets;
		this.experienceDetails = experienceDetails;
		this.seekerTags = seekerTags;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "currency_id", nullable = false)
	public Currency getCurrency() {
		return this.currency;
	}

	public void setCurrency(Currency currency) {
		this.currency = currency;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "location_id", nullable = false)
	public Location getLocation() {
		return this.location;
	}

	public void setLocation(Location location) {
		this.location = location;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_account_id", nullable = false)
	public UserAccount getUserAccount() {
		return this.userAccount;
	}

	public void setUserAccount(UserAccount userAccount) {
		this.userAccount = userAccount;
	}

	@Column(name = "first_name", nullable = false, length = 50)
	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name = "last_name", nullable = false, length = 50)
	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Column(name = "headline", nullable = false, length = 200)
	public String getHeadline() {
		return this.headline;
	}

	public void setHeadline(String headline) {
		this.headline = headline;
	}

	@Column(name = "description", nullable = false, length = 4000)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "website", nullable = false, length = 50)
	public String getWebsite() {
		return this.website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	@Column(name = "salary")
	public Integer getSalary() {
		return this.salary;
	}

	public void setSalary(Integer salary) {
		this.salary = salary;
	}

	@Column(name = "is_annually_monthly")
	public Boolean getIsAnnuallyMonthly() {
		return this.isAnnuallyMonthly;
	}

	public void setIsAnnuallyMonthly(Boolean isAnnuallyMonthly) {
		this.isAnnuallyMonthly = isAnnuallyMonthly;
	}

	@Column(name = "age", nullable = false)
	public int getAge() {
		return this.age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Column(name = "contact_number", nullable = false, length = 20)
	public String getContactNumber() {
		return this.contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	@Column(name = "resume_path", length = 200)
	public String getResumePath() {
		return this.resumePath;
	}

	public void setResumePath(String resumePath) {
		this.resumePath = resumePath;
	}

	@Column(name = "image_path", length = 200)
	public String getImagePath() {
		return this.imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "seekerProfile")
	public Set<EducationDetail> getEducationDetails() {
		return this.educationDetails;
	}

	public void setEducationDetails(Set<EducationDetail> educationDetails) {
		this.educationDetails = educationDetails;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "seekerProfile")
	public Set<SeekerSkillSet> getSeekerSkillSets() {
		return this.seekerSkillSets;
	}

	public void setSeekerSkillSets(Set<SeekerSkillSet> seekerSkillSets) {
		this.seekerSkillSets = seekerSkillSets;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "seekerProfile")
	public Set<ExperienceDetail> getExperienceDetails() {
		return this.experienceDetails;
	}

	public void setExperienceDetails(Set<ExperienceDetail> experienceDetails) {
		this.experienceDetails = experienceDetails;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "seekerProfile")
	public Set<SeekerTag> getSeekerTags() {
		return this.seekerTags;
	}

	public void setSeekerTags(Set<SeekerTag> seekerTags) {
		this.seekerTags = seekerTags;
	}

}
