package com.library.domain;

public class Category {
	private String cateID;
	private String cateName;
	public Category(String cateID, String cateName) {
		super();
		this.cateID = cateID;
		this.cateName = cateName;
	}
	public String getCateID() {
		return cateID;
	}
	public void setCateID(String cateID) {
		this.cateID = cateID;
	}
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	@Override
	public String toString() {
		return "分类编号：" + cateID + ", 分类名称：" + cateName;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cateID == null) ? 0 : cateID.hashCode());
		result = prime * result + ((cateName == null) ? 0 : cateName.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Category category = (Category) obj;
		if(category.getCateID()==null) {
			return false;
		}
		if(category.getCateName()==null) {
			return false;
		}
		if(cateID==null) {
			if(category.getCateID()!=null) {
				return false;
			}
		}else if(!cateID.equals(category.getCateID())) {
			return false;
		}
		if(cateName==null) {
			if(category.getCateName()!=null) {
				return false;
			}
		}else if(!cateName.equals(category.getCateName())) {
			return false;
		}
		return true;
	}
	
}
