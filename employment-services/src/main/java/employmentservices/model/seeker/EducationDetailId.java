package employmentservices.model.seeker;
// Generated 22.06.2018 15:44:18 by Hibernate Tools 5.2.10.Final

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * EducationDetailId generated by hbm2java
 */
@Embeddable
public class EducationDetailId implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 298407541162931875L;
	private int id;
	private String certificateDegreeName;
	private String major;

	public EducationDetailId() {
	}

	public EducationDetailId(int id, String certificateDegreeName, String major) {
		this.id = id;
		this.certificateDegreeName = certificateDegreeName;
		this.major = major;
	}

	@Column(name = "id", nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "certificate_degree_name", nullable = false, length = 50)
	public String getCertificateDegreeName() {
		return this.certificateDegreeName;
	}

	public void setCertificateDegreeName(String certificateDegreeName) {
		this.certificateDegreeName = certificateDegreeName;
	}

	@Column(name = "major", nullable = false, length = 50)
	public String getMajor() {
		return this.major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof EducationDetailId))
			return false;
		EducationDetailId castOther = (EducationDetailId) other;

		return (this.getId() == castOther.getId())
				&& ((this.getCertificateDegreeName() == castOther.getCertificateDegreeName())
						|| (this.getCertificateDegreeName() != null && castOther.getCertificateDegreeName() != null
								&& this.getCertificateDegreeName().equals(castOther.getCertificateDegreeName())))
				&& ((this.getMajor() == castOther.getMajor()) || (this.getMajor() != null
						&& castOther.getMajor() != null && this.getMajor().equals(castOther.getMajor())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getId();
		result = 37 * result + (getCertificateDegreeName() == null ? 0 : this.getCertificateDegreeName().hashCode());
		result = 37 * result + (getMajor() == null ? 0 : this.getMajor().hashCode());
		return result;
	}

}
