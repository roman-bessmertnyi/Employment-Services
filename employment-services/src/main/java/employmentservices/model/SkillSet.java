package employmentservices.model;
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
 * SkillSet generated by hbm2java
 */
@Entity
@Table(name = "skill_set")
public class SkillSet implements java.io.Serializable {

	private int id;
	private String skillSetName;
	private Set<SeekerSkillSet> seekerSkillSets = new HashSet<SeekerSkillSet>(0);

	public SkillSet() {
	}

	public SkillSet(int id, String skillSetName) {
		this.id = id;
		this.skillSetName = skillSetName;
	}

	public SkillSet(int id, String skillSetName, Set<SeekerSkillSet> seekerSkillSets) {
		this.id = id;
		this.skillSetName = skillSetName;
		this.seekerSkillSets = seekerSkillSets;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "skill_set_name", nullable = false, length = 50)
	public String getSkillSetName() {
		return this.skillSetName;
	}

	public void setSkillSetName(String skillSetName) {
		this.skillSetName = skillSetName;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "skillSet")
	public Set<SeekerSkillSet> getSeekerSkillSets() {
		return this.seekerSkillSets;
	}

	public void setSeekerSkillSets(Set<SeekerSkillSet> seekerSkillSets) {
		this.seekerSkillSets = seekerSkillSets;
	}

}
