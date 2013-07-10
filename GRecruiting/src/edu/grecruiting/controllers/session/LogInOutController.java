package edu.grecruiting.controllers.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		UserEntity currentUser = UserEntityManager.getByLoginPassword("login1", "pass1");
		HttpSession session = request.getSession(true);
		session.setAttribute("TYPE", currentUser.getType());
		session.setAttribute("ID", currentUser.getId());
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Первый сервлет</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>OK</h1>");
            out.println("</body>");
            out.println("</html>");

        } finally {
            out.close();
        }
		
	}

}
