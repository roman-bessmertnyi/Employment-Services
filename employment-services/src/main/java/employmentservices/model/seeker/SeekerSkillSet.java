package employmentservices.model.seeker;
// Generated 22.06.2018 15:44:18 by Hibernate Tools 5.2.10.Final

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * SeekerSkillSet generated by hbm2java
 */
@Entity
@Table(name = "seeker_skill_set")
public class SeekerSkillSet implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1637638297742808878L;
	private SeekerSkillSetId id;
	private SeekerProfile seekerProfile;
	private SkillSet skillSet;
	private int skillLevel;

	public SeekerSkillSet() {
	}

	public SeekerSkillSet(SeekerSkillSetId id, SeekerProfile seekerProfile, SkillSet skillSet, int skillLevel) {
		this.id = id;
		this.seekerProfile = seekerProfile;
		this.skillSet = skillSet;
		this.skillLevel = skillLevel;
	}

	@EmbeddedId

	@AttributeOverrides({ @AttributeOverride(name = "seekerId", column = @Column(name = "seeker_id", nullable = false)),
			@AttributeOverride(name = "skillSetId", column = @Column(name = "skill_set_id", nullable = false)) })
	public SeekerSkillSetId getId() {
		return this.id;
	}

	public void setId(SeekerSkillSetId id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "seeker_id", nullable = false, insertable = false, updatable = false)
	public SeekerProfile getSeekerProfile() {
		return this.seekerProfile;
	}

	public void setSeekerProfile(SeekerProfile seekerProfile) {
		this.seekerProfile = seekerProfile;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "skill_set_id", nullable = false, insertable = false, updatable = false)
	public SkillSet getSkillSet() {
		return this.skillSet;
	}

	public void setSkillSet(SkillSet skillSet) {
		this.skillSet = skillSet;
	}

	@Column(name = "skill_level", nullable = false)
	public int getSkillLevel() {
		return this.skillLevel;
	}

	public void setSkillLevel(int skillLevel) {
		this.skillLevel = skillLevel;
	}

}
