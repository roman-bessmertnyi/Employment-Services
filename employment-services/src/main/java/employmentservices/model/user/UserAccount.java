package employmentservices.model.user;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

import employmentservices.model.job.JobPostActivity;
import employmentservices.model.seeker.SeekerProfile;

@Entity
@Table(name="user_account")
public class UserAccount {

	@Id @GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "user_account_generator")
	@SequenceGenerator(name="user_account_generator", sequenceName = "user_account_id_seq")
    private int id;
	
	@NotEmpty
    @Column(name="email", nullable=false)
    private String email;
	
	@NotEmpty
    @Column(name="password", nullable=false)
    private String password;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull
    @Column(name="date_of_birth", nullable=false)
    private Date date_of_birth;
	
	@NotEmpty
    @Column(name="contact_number", nullable=false)
    private String contact_number;
	
    @Column(name="user_image", nullable=false)
    private String user_image;
	
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull
    @Column(name="registration_date", nullable=false)
    private Date registration_date;
    
	@NotNull
    @Column(name="enabled", nullable=false)
    private boolean enabled;

	@NotNull
    @Column(name="gender", nullable=false)
    private int gender;
	
	@NotNull
    @Column(name="sms_notification_active", nullable=false)
    private boolean sms_notification_active;
	
	@NotNull
    @Column(name="email_notification_active", nullable=false)
    private boolean email_notification_active;
	
	
	@ManyToOne
    @JoinColumn(name="user_type_id", nullable=false)
    private UserType user_type;
	
	@OneToMany(mappedBy = "user_account")
    private List<JobPostActivity> job_post_activities;
	
	@OneToOne(mappedBy = "user_account")
    private UserLog user_log;
	
	@OneToOne(mappedBy = "user_account")
    private SeekerProfile seeker_profile;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getDate_of_birth() {
		return date_of_birth;
	}

	public void setDate_of_birth(Date date_of_birth) {
		this.date_of_birth = date_of_birth;
	}

	public String getContact_number() {
		return contact_number;
	}

	public void setContact_number(String contact_number) {
		this.contact_number = contact_number;
	}

	public String getUser_image() {
		return user_image;
	}

	public void setUser_image(String user_image) {
		this.user_image = user_image;
	}

	public Date getRegistration_date() {
		return registration_date;
	}

	public void setRegistration_date(Date registration_date) {
		this.registration_date = registration_date;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public boolean isSms_notification_active() {
		return sms_notification_active;
	}

	public void setSms_notification_active(boolean sms_notification_active) {
		this.sms_notification_active = sms_notification_active;
	}

	public boolean isEmail_notification_active() {
		return email_notification_active;
	}

	public void setEmail_notification_active(boolean email_notification_active) {
		this.email_notification_active = email_notification_active;
	}

	public UserType getUserType() {
		return user_type;
	}

	public void setUserType(UserType userType) {
		this.user_type = userType;
	}

	public UserLog getUser_log() {
		return user_log;
	}

	public void setUser_log(UserLog user_log) {
		this.user_log = user_log;
	}

	public SeekerProfile getSeeker_profile() {
		return seeker_profile;
	}

	public void setSeeker_profile(SeekerProfile seeker_profile) {
		this.seeker_profile = seeker_profile;
	}

	@Override
	public String toString() {
		return "UserAccount [id=" + id + ", email=" + email + ", password=" + password + ", userType=" + user_type
				+ ", date_of_birth=" + date_of_birth + ", contact_number=" + contact_number + ", user_image="
				+ user_image + ", registration_date=" + registration_date + ", enabled=" + enabled
				+ ", gender=" + gender + ", sms_notification_active=" + sms_notification_active
				+ ", email_notification_active=" + email_notification_active + "]";
	}

/*	public UserLog getUser_log() {
		return user_log;
	}

	public void setUser_log(UserLog user_log) {
		this.user_log = user_log;
	}*/
}
