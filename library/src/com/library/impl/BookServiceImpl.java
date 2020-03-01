package com.library.impl;

import java.util.ArrayList;
import java.util.List;

import com.library.domain.Book;

public class BookServiceImpl {
	private static final List<Book> books=new ArrayList<>();
	public void addBook(Book book) {
		books.add(book);
	}
	public void updateBook(Book book) {
		String bookId=book.getBookID();
		for(Book b:books) {
			if(b.getBookID().equals(bookId)) {
				books.remove(b);
				break;
			}
		}
		books.add(book);
	}
	public void deleteBook(String bookId) {
		for(Book b:books) {
			if(b.getBookID().equals(bookId)) {
				books.remove(b);
				break;
			}
		}
	}
	public static List<Book> getBooks() {
		return books;
	}
	
}
