package com.romanbessmertnyi.employmentservices.model;

import java.util.List;

public class JobFilter {
	private String keyword;
	
	private List<JobType> categories;
	
	private List<JobType> chosenCategories;
	
	private String location;

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<JobType> getCategories() {
		return categories;
	}

	public void setCategories(List<JobType> categories) {
		this.categories = categories;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public JobFilter(String keyword, List<JobType> categories, String location) {
		super();
		this.keyword = keyword;
		this.categories = categories;
		this.chosenCategories = categories;
		this.location = location;
	}

	@Override
	public String toString() {
		return "JobFilter [keyword=" + keyword + ", categories=" + categories + ", chosenCategories=" + chosenCategories
				+ ", location=" + location + "]";
	}

	public List<JobType> getChosenCategories() {
		return chosenCategories;
	}

	public void setChosenCategories(List<JobType> chosenCategories) {
		this.chosenCategories = chosenCategories;
	}
}
