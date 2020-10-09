package login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


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

		/*boolean bool = false;
		DBOperation db = new DBOperation();
        //コネクションオブジェクト
            String user_name = request.getParameter("name");
            String user_pass = request.getParameter("pass");
            String sql = "SELECT * FROM user WHERE user_name='" + user_name + "'";

            ResultSet rset = db.getSQL(sql);
            String dbpass = result.getString("user_pass");
            System.out.println(dbpass);
            if (user_pass.equals(dbpass)) {
            	bool = true;
            	System.out.println(result);
            }




		RequestDispatcher dispatchar = null;
		if (bool) {
			dispatchar = context.getRequestDispatcher("/page/Home/HomeFrame.jsp");
		}else {
			dispatchar = context.getRequestDispatcher("/page/Login/Login.jsp");
		}*/
		ServletContext context = getServletContext();
		RequestDispatcher disdispatchar = context.getRequestDispatcher("/page/test/test.html");
		disdispatchar.forward(request, response);
	}

}
