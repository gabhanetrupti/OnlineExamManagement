package myPackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Forgot")
public class Forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_system","root","root");
			
			String email = request.getParameter("email");
			String pass = request.getParameter("pass");
			
			PreparedStatement ps = conn.prepareStatement("update users set password=? where email=?");
			ps.setString(2, email);
			ps.setString(1, pass);
			
			int i = ps.executeUpdate();
			
			if(i>0)
			{
				response.sendRedirect("update.jsp");
			}
			else {
				response.sendRedirect("error.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
