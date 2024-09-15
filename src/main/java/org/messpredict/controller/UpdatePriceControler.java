package org.messpredict.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
@WebServlet("/updaterate")
public class UpdatePriceControler extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int updateId=Integer.parseInt(request.getParameter("uId"));
		
		//out.print("<h1>"+updateId);
		RequestDispatcher rd=request.getRequestDispatcher("updateprod.jsp");
		rd.include(request, response);
		int newprice=Integer.parseInt(request.getParameter("newprice"));
		out.print("<h1>"+newprice);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
