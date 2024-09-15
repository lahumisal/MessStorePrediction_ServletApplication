package org.messpredict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.messpredict.model.AddProductModel;
import org.messpredict.services.AddProductService;
import org.messpredict.services.AddProductServiceImpl;

@WebServlet("/isAddProd")
public class AddProductControler extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String prodName=request.getParameter("productName");
		String catName=request.getParameter("catName");
		int Prodprice=Integer.parseInt(request.getParameter("price"));
		
		AddProductModel model=new AddProductModel();
		model.setProdName(prodName);
		model.setProdCat(catName);
		model.setPrice(Prodprice);
		
		AddProductService serv=new AddProductServiceImpl();
		boolean b=serv.isAddProduct(model);
		if(b) {
			out.print("<script>alert('Product Added successfully');</script>");
			RequestDispatcher red=request.getRequestDispatcher("viewProod.jsp");
			red.include(request, response);
		}else {
			out.print("<script>alert('Product not Added');</script>");
			RequestDispatcher red=request.getRequestDispatcher("viewProod.jsp");
			red.include(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
