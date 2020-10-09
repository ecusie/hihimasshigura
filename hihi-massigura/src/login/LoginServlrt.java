package login;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comon.DBOperation;


/**
 * Servlet implementation class LoginServlrt
 */
@WebServlet("/LoginServlrt")
public class LoginServlrt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {




		ServletContext context = getServletContext();
		RequestDispatcher dispatchar = context.getRequestDispatcher("/page/Login/Login.jsp");
		dispatchar.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String  forword = "/page/Login/Login.jsp";
		DBOperation db = new DBOperation();

        String user_name = request.getParameter("name");
        String user_pass = request.getParameter("pass");
        String sql = "SELECT * FROM user WHERE user_name='" + user_name + "'";

        ResultSet result = db.getSQL(sql);
        String dbpass = "";
        try {
        	dbpass = result.getString("user_pass");
        }catch (Exception e) {
		}

        System.out.println(dbpass);
        if (user_pass.equals(dbpass)) {
        	forword = "/page/Home/HomeFrame.jsp";
        }

		ServletContext context = getServletContext();
		RequestDispatcher dispatchar = context.getRequestDispatcher(forword);
		dispatchar.forward(request, response);
	}

}
