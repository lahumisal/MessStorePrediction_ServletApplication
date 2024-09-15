package org.messpredict.controller;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.messpredict.services.AddProductService;
import org.messpredict.services.AddProductServiceImpl;

@WebServlet("/delProd")
public class deleteProductControler extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int delId=Integer.parseInt(request.getParameter("delId"));
		
		AddProductService delsserv=new AddProductServiceImpl();
		boolean del=delsserv.isDeleteProd(delId);
		if(del) {
			out.print("<script>alert('Product deleted successfully');</script>");
			RequestDispatcher rd=request.getRequestDispatcher("viewProod.jsp");
			rd.include(request, response);
		}else {
			out.print("<script>alert('Product not deleted');</script>");
			RequestDispatcher rd=request.getRequestDispatcher("viewProod.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
