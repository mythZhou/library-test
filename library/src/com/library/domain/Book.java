package com.library.domain;

public class Book {
	private String bookID;
	private String bookName;
	private Category bookCate;
	private String price;
	private String path;
	private String info;
	public Book(String bookID, String bookName, Category bookCate, String price, String path, String info) {
		super();
		this.bookID = bookID;
		this.bookName = bookName;
		this.bookCate = bookCate;
		this.price = price;
		this.path = path;
		this.info = info;
	}
	public String getBookID() {
		return bookID;
	}
	public void setBookID(String bookID) {
		this.bookID = bookID;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public Category getBookCate() {
		return bookCate;
	}
	public void setBookCate(Category bookCate) {
		this.bookCate = bookCate;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	@Override
	public String toString() {
		return "Book [bookID=" + bookID + ", bookName=" + bookName + ", bookCate=" + bookCate + ", price=" + price
				+ ", path=" + path + ", info=" + info + "]";
	}
	
}
