package employmentservices.model.user;
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
 * UserType generated by hbm2java
 */
@Entity
@Table(name = "user_type")
public class UserType implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2518841929112900683L;
	private int id;
	private String userTypeName;
	private Set<UserAccount> userAccounts = new HashSet<UserAccount>(0);

	public UserType() {
	}

	public UserType(int id, String userTypeName) {
		this.id = id;
		this.userTypeName = userTypeName;
	}

	public UserType(int id, String userTypeName, Set<UserAccount> userAccounts) {
		this.id = id;
		this.userTypeName = userTypeName;
		this.userAccounts = userAccounts;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "user_type_name", nullable = false, length = 20)
	public String getUserTypeName() {
		return this.userTypeName;
	}

	public void setUserTypeName(String userTypeName) {
		this.userTypeName = userTypeName;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "userType")
	public Set<UserAccount> getUserAccounts() {
		return this.userAccounts;
	}

	public void setUserAccounts(Set<UserAccount> userAccounts) {
		this.userAccounts = userAccounts;
	}

}