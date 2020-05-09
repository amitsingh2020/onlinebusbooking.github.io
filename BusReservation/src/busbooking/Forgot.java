package busbooking;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Forgot
 */
@WebServlet("/Forgot")
public class Forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String uemail=request.getParameter("uemail");
		String upass=request.getParameter("upass");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","");
			PreparedStatement ps=connection.prepareStatement("update login set pass=? where email=?");
			
			ps.setString(2,uemail);
			ps.setString(1,upass);
			int i=ps.executeUpdate();
			if(i>0) {
				response.sendRedirect("updatepass.jsp");
				
			}
			else {
				RequestDispatcher rd=request.getRequestDispatcher("forgot.jsp");
				response.getWriter().println("<h3 style=\"color:#C60E07;\">**Invalid User Id Please Enter Valid Id</h3>");
				rd.include(request,response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
