package eventapp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
@WebServlet("/all")
public class FetchAllEventServlet extends HttpServlet
{
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ums", "root", "1234");
			
			PreparedStatement ps = con.prepareStatement("Select * from user");
			
			ResultSet rs = ps.executeQuery();
			req.setAttribute("rs", rs);
			
			RequestDispatcher rd = req.getRequestDispatcher("allevent.jsp");
			rd.forward(req, res);
			
			rs.close();
			ps.close();
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
	}
}
