package com.romanbessmertnyi.employmentservices.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="skill_set")
public class SkillSet {

	@Id @GeneratedValue(strategy=GenerationType.SEQUENCE)
	@SequenceGenerator(name="skill_set_generator", sequenceName = "skill_set_id_seq")
    private int id; 
	
	@Column(name="skill_set_name", unique=true, nullable=false)
    private String name;
	
	@OneToOne(mappedBy = "skill_set")
    private SeekerSkillSet seeker_skill_set;

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
		return "SkillSet [id=" + id + ", name=" + name + "]";
	}
}
