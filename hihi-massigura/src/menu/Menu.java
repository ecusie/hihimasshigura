package menu;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Menu
 */
@WebServlet("/Menu")
public class Menu extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("アクセス");
		String forwordPage = request.getParameter("page");
		System.out.println(forwordPage);
		ServletContext context = getServletContext();
		RequestDispatcher dispatchar = context.getRequestDispatcher(forwordPage);
		dispatchar.forward(request, response);
	}

}
