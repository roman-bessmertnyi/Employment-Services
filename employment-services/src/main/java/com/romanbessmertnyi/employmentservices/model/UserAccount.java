package com.romanbessmertnyi.employmentservices.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="user_account")
public class UserAccount {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
	
	@NotEmpty
    @Column(name="password", nullable=false)
    private String password;
	
	@NotEmpty
    @Column(name="email", nullable=false)
    private String email;
	
	@ManyToOne
    @JoinColumn(name="user_type_id", nullable=false)
    private UserType userType;
	
	@NotEmpty
    @Column(name="enabled", nullable=false)
    private boolean enabled;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public UserType getUserType() {
		return userType;
	}

	public void setUserType(UserType userType) {
		this.userType = userType;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	@Override
	public String toString() {
		return "UserAccount [id=" + id + ", password=" + password + ", email=" + email + ", userType=" + userType
				+ ", enabled=" + enabled + "]";
	}
}
