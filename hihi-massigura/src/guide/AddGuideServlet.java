package guide;

import java.io.IOException;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import comon.DBOperation;
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
		String url = request.getParameter("url");
		String massege = request.getParameter("massege");
		DBOperation db = new DBOperation();
		int ccount = NextCount(db, "chat");
		if (massege != null) {
			Date date = new Date();
			String str = new SimpleDateFormat("yyyy-MM-dd").format(date);
			java.sql.Date day = java.sql.Date.valueOf(str);
			String sql = "insert into chat values (" + ccount + ",'" + day + "','" + massege + "')";
			db.INSERTSet(sql);
		}
		int count = NextCount(db, "guide");
		System.out.println(ccount);
		String sql = "insert into guide values (" + count + "," + enemyID + ",1," + ccount + ",0,'" + title + "',0,'" + url + "')";
		//String sql = "insert into guide values (2, 2, 1, 0, 0, 'えうあｓｄ', 0, 'aaaa')";
		db.INSERTSet(sql);
		request.setAttribute("enemyID", enemyID);
		request.setAttribute("enemyName", enemyName);
		db.close();
		ServletContext context = getServletContext();
		RequestDispatcher dispatchar = context.getRequestDispatcher("/page/Guide/GuideList.jsp");
		dispatchar.forward(request, response);
	}

	private String ExtractFileName(Part part) {
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


	private int NextCount(DBOperation db, String table) {
		try {
			ResultSet rs = db.getSQL("select count(*) as count from " + table);
			rs.next();
			int count = rs.getInt("count");
			return count + 1;
		}catch (Exception e) {
			System.out.println("Exception:" + e.getMessage());
			return 0;
		}
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
