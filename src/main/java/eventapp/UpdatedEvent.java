package eventapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/update")
public class UpdatedEvent extends HttpServlet
{
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
		String title = req.getParameter("title");
		String loc = req.getParameter("location");
		String date = req.getParameter("date");
		String guest = req.getParameter("guest");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ums", "root", "1234");
			
			PreparedStatement ps = con.prepareStatement("update user set title=?, location=? ,date=? ,guest=? where id =?");
			
			ps.setString(1, title);
			ps.setString(2, loc);
			ps.setString(3, date);
			ps.setString(4, guest);
			ps.setInt(5, id);
			
			int row = ps.executeUpdate();
			
			PrintWriter pw = res.getWriter();
			
			pw.write("<h1>"+row+" Updated  Successfully</h1>");
			
			ps.close();
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}

	}
}
