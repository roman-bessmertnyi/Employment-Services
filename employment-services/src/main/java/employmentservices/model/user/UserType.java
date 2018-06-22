package employmentservices.model.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="user_type")
public class UserType {
	@Id @GeneratedValue(strategy=GenerationType.SEQUENCE)
	@SequenceGenerator(name="user_type_generator", sequenceName = "user_type_id_seq")
    private int id; 
	
	@Column(name="user_type_name", unique=true, nullable=false)
    private String name;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "UserType [id=" + id + ", name=" + name + "]";
	}
}
