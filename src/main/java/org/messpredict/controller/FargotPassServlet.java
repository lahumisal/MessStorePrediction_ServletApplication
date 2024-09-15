package org.messpredict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.messpredict.model.ForgetPassModel;
import org.messpredict.repository.DBParent;
import org.messpredict.services.ForgetPassService;
import org.messpredict.services.ForgetPassServiceImpl;

@WebServlet("/FargotPass")
public class FargotPassServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String path=this.getServletContext().getRealPath("/")+"resources\\db.properties";// current folder path
//		out.print(path);
		DBParent.path=path;
		
		String userName=request.getParameter("username");
		String NewPass=request.getParameter("password");
		
		ForgetPassModel model=new ForgetPassModel();
		model.setUser(userName);
		model.setPass(NewPass);
		
		ForgetPassService passmodel=new ForgetPassServiceImpl();
		boolean updatePass=passmodel.isUpdatePass(model);
		if(updatePass) {
			RequestDispatcher r = request.getRequestDispatcher("FrontPage.jsp");
		    r.forward(request, response);
		}else {
			out.print("<h1>Password is not update</h1>");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

}
