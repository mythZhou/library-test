package com.library.impl;

import java.util.ArrayList;
import java.util.List;

import com.library.domain.Category;

public class CategoryServiceImpl {
	private static final List<Category> categoryDb=new ArrayList<>();
	public void addCategory(String categoryId,String categoryName) {
		Category c=new Category(categoryId,categoryName);
		if(categoryDb.contains(c)) {
			return;
		}
		categoryDb.add(c);
	}
	public void deleteCategory(String categoryId) {
		for(Category c:categoryDb) {
			if(c.getCateID().equals(categoryId)) {
				categoryDb.remove(c);
				break;
			}
		}
	}
	public static List<Category> getCategorydb() {
		return categoryDb;
	}
	
}
