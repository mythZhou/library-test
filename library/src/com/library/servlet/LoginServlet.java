package com.library.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.library.domain.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code=(String)request.getSession().getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
		String username=request.getParameter("username");
		//response.getWriter().println(username);
		String password=request.getParameter("password");
		String checkcode=request.getParameter("checkcode");
		if(checkcode==null||!checkcode.equalsIgnoreCase(code)) {
			request.setAttribute("info", "验证码输入不正确！");
			request.getRequestDispatcher("/login.jsp").forward(request, response);;
			return;
		}
		List<User> userList=(List<User>)getServletContext().getAttribute("User");
		User u=new User(username,password);
		//response.getWriter().println(u);
		if(userList.contains(u)) {//如果用户名或密码正确
			request.getSession().setAttribute("existUser", u);
			response.sendRedirect("/library/CategoryServlet");
		}else {
			String info="用户名或密码错误";
			request.setAttribute("info",info );
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
