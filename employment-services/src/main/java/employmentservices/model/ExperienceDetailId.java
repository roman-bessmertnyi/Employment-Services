package employmentservices.model;
// Generated 22.06.2018 15:44:18 by Hibernate Tools 5.2.10.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * ExperienceDetailId generated by hbm2java
 */
@Embeddable
public class ExperienceDetailId implements java.io.Serializable {

	private int id;
	private Date startDate;
	private Date endDate;

	public ExperienceDetailId() {
	}

	public ExperienceDetailId(int id, Date startDate, Date endDate) {
		this.id = id;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	@Column(name = "id", nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "start_date", nullable = false, length = 13)
	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	@Column(name = "end_date", nullable = false, length = 13)
	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ExperienceDetailId))
			return false;
		ExperienceDetailId castOther = (ExperienceDetailId) other;

		return (this.getId() == castOther.getId())
				&& ((this.getStartDate() == castOther.getStartDate()) || (this.getStartDate() != null
						&& castOther.getStartDate() != null && this.getStartDate().equals(castOther.getStartDate())))
				&& ((this.getEndDate() == castOther.getEndDate()) || (this.getEndDate() != null
						&& castOther.getEndDate() != null && this.getEndDate().equals(castOther.getEndDate())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getId();
		result = 37 * result + (getStartDate() == null ? 0 : this.getStartDate().hashCode());
		result = 37 * result + (getEndDate() == null ? 0 : this.getEndDate().hashCode());
		return result;
	}

}
