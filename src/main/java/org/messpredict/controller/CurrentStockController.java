package org.messpredict.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.messpredict.model.currentStockModel;
import org.messpredict.services.CurrentStockService;
import org.messpredict.services.CurrentStockServiceImpl;

@WebServlet("/abcd")
public class CurrentStockController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int productId = Integer.parseInt(request.getParameter("productName"));
		int usedQty=Integer.parseInt(request.getParameter("qty"));
		
		CurrentStockService sev=new CurrentStockServiceImpl();
		int TotalQty=sev.getTotalQty(productId);
		
		int NewQuantity=TotalQty-usedQty;

		boolean isUpdated = sev.updateQuantity(productId, NewQuantity);

		if (isUpdated) {
			RequestDispatcher rd=request.getRequestDispatcher("UpdatedCurrentStock.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd=request.getRequestDispatcher("CurrentStock.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
