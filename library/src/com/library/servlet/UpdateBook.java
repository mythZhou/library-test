package com.library.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.library.domain.Book;
import com.library.domain.Category;
import com.library.impl.BookServiceImpl;
import com.library.impl.CategoryServiceImpl;

/**
 * Servlet implementation class UpdateBook
 */
@WebServlet("/UpdateBook")
public class UpdateBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bookId=request.getParameter("bookId");
		//response.getWriter().println(bookId);
		String bookName=request.getParameter("bookName");
		String categoryId=request.getParameter("categoryId");
		String bookPrice=request.getParameter("bookPrice");
		String bookPic=request.getParameter("bookPic");
		String remarks=request.getParameter("remarks");
		response.getWriter().print(bookPic);
		CategoryServiceImpl csi=new CategoryServiceImpl();
		List<Category> cateList=csi.getCategorydb();
		BookServiceImpl bsi=new BookServiceImpl();
	//	List<Book> bookList=bsi.getBooks();
		Category C = null;
		for(Category c:cateList) {
			if(c.getCateID().equals(categoryId)) {
				C=c;
				break;
			}
		}
		Book b=new Book(bookId,bookName,C,bookPrice,bookPic,remarks);
		bsi.updateBook(b);
		response.sendRedirect("/library/BookServlet");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
