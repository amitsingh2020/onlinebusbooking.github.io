package busbooking;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@SuppressWarnings("serial")
@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		System.out.println("ok");
	            String upass=request.getParameter("upass");
				String uemail=request.getParameter("uemail");
				
			
				System.out.println("ok");
				try {
					
					Class.forName("com.mysql.jdbc.Driver");
					System.out.println("ok");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","");
					System.out.println("ok");
					PreparedStatement ps=con.prepareStatement("select * from login where email=? and pass=? ");
					System.out.println("ok");
					ps.setString(1, uemail);
					ps.setString(2, upass);
					ResultSet rs=ps.executeQuery();
					HttpSession session=request.getSession();
		            session.setAttribute("uemail", uemail);
					session.setAttribute("upass", upass);
				
					if(rs.next()) {
						response.sendRedirect("StationList.jsp");
					}	
					else {
						RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
						response.getWriter().println("<h3 style=\"color:#C60E07;\">**Invalid user id or password</h3>");
						rd.include(request,response);
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
	}

}
