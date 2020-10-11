package guide;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GuideTop
 */
@WebServlet("/GuideTop")
public class GuideTopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String selectedFruit = request.getParameter("optionsRadios");
		request.setAttribute("optionsRadios", selectedFruit);
		ServletContext context = getServletContext();
		RequestDispatcher dispatchar = context.getRequestDispatcher("/page/Guide/GuideTop.jsp");
		dispatchar.forward(request, response);
	}

}
