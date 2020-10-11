package guide;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import ftp.Ftp;

/**
 * Servlet implementation class AddGuideServlet
 */
@WebServlet("/AddGuideServlet")
@MultipartConfig
public class AddGuideServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String enemyID = request.getParameter("enemyID");
		String enemyName = request.getParameter("enemyName");
		String title = request.getParameter("title");
		String massege = request.getParameter("massege");
		Part part = request.getPart("image0");
		String name = extractFileName(part);


		request.setAttribute("enemyID", enemyID);
		request.setAttribute("enemyName", enemyName);
		ServletContext context = getServletContext();
		RequestDispatcher dispatchar = context.getRequestDispatcher("/page/Guide/GuideList.jsp");
		dispatchar.forward(request, response);
	}

	private String extractFileName(Part part) {
		  // System.out.println(part.getHeader("Content-Disposition"));
		  // これが出力される-> form-data; name="file"; filename="pic_278.png"
		  String[] splitedHeader = part.getHeader("Content-Disposition").split(";");

		  String fileName = null;
		  for(String item: splitedHeader) {
			  System.out.println(item);
		      if(item.trim().startsWith("filename")) {
		          fileName = item.substring(item.indexOf('"')).replaceAll("\"", "");
		      }
		  }
		  return fileName;
	}

	private void  FTP() {
		try {
			Ftp ftp = new Ftp("160.251.4.111", 21, "root", "K-ronos0710", false, false, "/usr/local/temp", "C:/Temp/", "EUC_JP");
			if ( ftp.connect() ) {
				ftp.setLocalPath("C:/Temp/");
				ftp.put();
				ftp.disconnect();
			}
		}catch (Exception e) {
		      System.out.println(e.getMessage());
	    }
	}

}
