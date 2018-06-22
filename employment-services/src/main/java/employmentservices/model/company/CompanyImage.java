package employmentservices.model.company;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="company_image")
public class CompanyImage {
	@Id @GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "company_image_generator")
	@SequenceGenerator(name="company_image_generator", sequenceName = "company_image_id_seq")
    private int id;
	
	@ManyToOne
    @JoinColumn(name="company_id", nullable=false)
    private Company company;
	
	@NotEmpty
	@Column(name = "company_image", nullable = false)
	private String company_image;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public String getCompany_image() {
		return company_image;
	}

	public void setCompany_image(String company_image) {
		this.company_image = company_image;
	}

	@Override
	public String toString() {
		return "CompanyImage [id=" + id + ", company=" + company + ", company_image=" + company_image + "]";
	}
}
