package employmentservices.model.seeker;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="seeker_skill_set")
public class SeekerSkillSet {
	@EmbeddedId
    private SeekerSkillSetId seekerSkillSetId;
	
	@NotNull
    @Column(name="skill_level", nullable=false)
    private int skill_level;
	
	@ManyToOne()
	@JoinColumn(name="user_account_id", insertable=false, updatable=false)
    private SeekerProfile seeker_profile;
	
	@OneToOne()
	@JoinColumn(name="skill_set_id", insertable=false, updatable=false)
    private SkillSet skill_set;

	public SeekerSkillSetId getSeekerSkillSetId() {
		return seekerSkillSetId;
	}

	public void setSeekerSkillSetId(SeekerSkillSetId seekerSkillSetId) {
		this.seekerSkillSetId = seekerSkillSetId;
	}

	public int getSkill_level() {
		return skill_level;
	}

	public void setSkill_level(int skill_level) {
		this.skill_level = skill_level;
	}

	public SeekerProfile getSeeker_profile() {
		return seeker_profile;
	}

	public void setSeeker_profile(SeekerProfile seeker_profile) {
		this.seeker_profile = seeker_profile;
	}

	public SkillSet getSkill_set() {
		return skill_set;
	}

	public void setSkill_set(SkillSet skill_set) {
		this.skill_set = skill_set;
	}

	@Override
	public String toString() {
		return "SeekerSkillSet [seekerSkillSetId=" + seekerSkillSetId + ", skill_level=" + skill_level
				+ ", seeker_profile=" + seeker_profile + ", skill_set=" + skill_set + "]";
	}
}
