package org.messpredict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.messpredict.model.*;
import org.messpredict.repository.DBParent;
import org.messpredict.services.*;

import com.mysql.cj.Session;

@WebServlet("/validlogin")
public class ValidateServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String path=this.getServletContext().getRealPath("/")+"resources\\db.properties";// current folder path
//		out.print(path);
		DBParent.path=path;
		
		String userName=request.getParameter("username");
		String password=request.getParameter("password");
		
		String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
	    Pattern pattern = Pattern.compile(emailRegex);
	    Matcher matcher = pattern.matcher(userName);

	    if (!matcher.matches()) {
	      request.setAttribute("errorMessage", "Invalid email format.");
	      RequestDispatcher rd = request.getRequestDispatcher("LoginPage.jsp");
	      rd.forward(request, response);
	      return;
	    }

	    loginmodel model = new loginmodel();
	    model.setUser(userName);
	    model.setPass(password);

	    ValidateUserService validserv = new ValidateUserServiceImpl();
	    boolean login = validserv.isValidate(model);
	    if (login) {
	      HttpSession session = request.getSession();
	      session.setAttribute("userid", userName);
	      RequestDispatcher rd = request.getRequestDispatcher("DashBoard.jsp");
	      rd.forward(request, response);
	    } else {
	      request.setAttribute("errorMessage", "Invalid username or password.");
	      RequestDispatcher rd = request.getRequestDispatcher("LoginPage.jsp");
	      rd.forward(request, response);
	    }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

