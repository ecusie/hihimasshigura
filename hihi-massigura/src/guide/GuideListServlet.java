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
 * Servlet implementation class GuideListServlet
 */
@WebServlet("/GuideListServlet")
public class GuideListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String enemyID = request.getParameter("enemyID");
		String enemyName = request.getParameter("enemyName");
		String page = request.getParameter("page");
		System.out.println(page);
		request.setAttribute("enemyID", enemyID);
		request.setAttribute("enemyName", enemyName);
		if (page.equals("Guide")) {
			String count = request.getParameter("count");
			request.setAttribute("count", count);
		}
		ServletContext context = getServletContext();
		RequestDispatcher dispatchar = context.getRequestDispatcher("/page/Guide/" + page + ".jsp");
		dispatchar.forward(request, response);
	}

}
