package com.romanbessmertnyi.employmentservices.filters;

import java.util.List;

public class SearchFilter<T> {
	private String keyword;
	
	private List<T> categories;
	
	private List<T> chosenCategories;
	
	private String location;

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<T> getCategories() {
		return categories;
	}

	public void setCategories(List<T> categories) {
		this.categories = categories;
	}

	public List<T> getChosenCategories() {
		return chosenCategories;
	}

	public void setChosenCategories(List<T> chosenCategories) {
		this.chosenCategories = chosenCategories;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public SearchFilter(String keyword, List<T> categories, List<T> chosenCategories, String location) {
		super();
		this.keyword = keyword;
		this.categories = categories;
		this.chosenCategories = chosenCategories;
		this.location = location;
	}
	
	public SearchFilter(String keyword, String location) {
		super();
		this.keyword = keyword;
		this.location = location;
	}

	public SearchFilter() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "SearchFilter [keyword=" + keyword + ", categories=" + categories + ", chosenCategories="
				+ chosenCategories + ", location=" + location + "]";
	}
}
