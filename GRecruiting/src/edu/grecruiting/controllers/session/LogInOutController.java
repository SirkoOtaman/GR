package edu.grecruiting.controllers.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.grecruiting.model.student.StudentEntity;
import edu.grecruiting.model.user.UserEntity;
import edu.grecruiting.model.user.UserEntityManager;

/**
 * Servlet implementation class LogInOutController
 */
@WebServlet("/LogInOutController")
public class LogInOutController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LogInOutController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("submitLogin")!=null){
			String login = request.getParameter("login");
			String pass = request.getParameter("pass");
			UserEntity currentUser = UserEntityManager.getByLoginPassword(login, pass);
			if(currentUser!=null){
				HttpSession session = request.getSession(true);
				session.setAttribute("USER", currentUser);
			}
		}
		if(request.getParameter("submitLogOut")!=null){
			request.getSession().invalidate();
		}
		response.sendRedirect("/GRecruiting/student/student.jsp");
	}

}
