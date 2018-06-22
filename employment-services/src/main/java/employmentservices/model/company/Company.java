package employmentservices.model.company;
// Generated 22.06.2018 15:44:18 by Hibernate Tools 5.2.10.Final

import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import employmentservices.model.job.JobPost;
import employmentservices.model.job.Location;

/**
 * Company generated by hbm2java
 */
@Entity
@Table(name = "company")
public class Company implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 899121659928964185L;
	private int id;
	private BusinessStream businessStream;
	private EmployeeAmount employeeAmount;
	private Location location;
	private String companyName;
	private String headline;
	private String description;
	private String companyWebsite;
	private Date establishmentDate;
	private String contactNumber;
	private String email;
	private String companyDetail;
	private Set<JobPost> jobPosts = new HashSet<JobPost>(0);

	public Company() {
	}

	public Company(int id, BusinessStream businessStream, EmployeeAmount employeeAmount, Location location,
			String companyName, String headline, String description, String companyWebsite, Date establishmentDate,
			String contactNumber, String email, String companyDetail) {
		this.id = id;
		this.businessStream = businessStream;
		this.employeeAmount = employeeAmount;
		this.location = location;
		this.companyName = companyName;
		this.headline = headline;
		this.description = description;
		this.companyWebsite = companyWebsite;
		this.establishmentDate = establishmentDate;
		this.contactNumber = contactNumber;
		this.email = email;
		this.companyDetail = companyDetail;
	}

	public Company(int id, BusinessStream businessStream, EmployeeAmount employeeAmount, Location location,
			String companyName, String headline, String description, String companyWebsite, Date establishmentDate,
			String contactNumber, String email, String companyDetail, Set<JobPost> jobPosts) {
		this.id = id;
		this.businessStream = businessStream;
		this.employeeAmount = employeeAmount;
		this.location = location;
		this.companyName = companyName;
		this.headline = headline;
		this.description = description;
		this.companyWebsite = companyWebsite;
		this.establishmentDate = establishmentDate;
		this.contactNumber = contactNumber;
		this.email = email;
		this.companyDetail = companyDetail;
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "business_stream_id", nullable = false)
	public BusinessStream getBusinessStream() {
		return this.businessStream;
	}

	public void setBusinessStream(BusinessStream businessStream) {
		this.businessStream = businessStream;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "employee_amount_id", nullable = false)
	public EmployeeAmount getEmployeeAmount() {
		return this.employeeAmount;
	}

	public void setEmployeeAmount(EmployeeAmount employeeAmount) {
		this.employeeAmount = employeeAmount;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "location_id", nullable = false)
	public Location getLocation() {
		return this.location;
	}

	public void setLocation(Location location) {
		this.location = location;
	}

	@Column(name = "company_name", nullable = false, length = 100)
	public String getCompanyName() {
		return this.companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	@Column(name = "headline", nullable = false, length = 200)
	public String getHeadline() {
		return this.headline;
	}

	public void setHeadline(String headline) {
		this.headline = headline;
	}

	@Column(name = "description", nullable = false, length = 1000)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "company_website", nullable = false, length = 200)
	public String getCompanyWebsite() {
		return this.companyWebsite;
	}

	public void setCompanyWebsite(String companyWebsite) {
		this.companyWebsite = companyWebsite;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "establishment_date", nullable = false, length = 13)
	public Date getEstablishmentDate() {
		return this.establishmentDate;
	}

	public void setEstablishmentDate(Date establishmentDate) {
		this.establishmentDate = establishmentDate;
	}

	@Column(name = "contact_number", nullable = false, length = 20)
	public String getContactNumber() {
		return this.contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	@Column(name = "email", nullable = false)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "company_detail", nullable = false, length = 4000)
	public String getCompanyDetail() {
		return this.companyDetail;
	}

	public void setCompanyDetail(String companyDetail) {
		this.companyDetail = companyDetail;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "company")
	public Set<JobPost> getJobPosts() {
		return this.jobPosts;
	}

	public void setJobPosts(Set<JobPost> jobPosts) {
		this.jobPosts = jobPosts;
	}

}
