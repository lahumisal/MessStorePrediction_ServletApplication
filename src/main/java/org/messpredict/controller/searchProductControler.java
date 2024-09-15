package org.messpredict.controller;

import java.io.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.messpredict.model.ProdListByName;
import org.messpredict.model.ViewProdListModel;
import org.messpredict.services.AddProductService;
import org.messpredict.services.AddProductServiceImpl;

@WebServlet("/searchprod")
public class searchProductControler extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("n");
		
		AddProductService searchprod=new AddProductServiceImpl();
		
		List<ProdListByName> prodmodel=searchprod.getProdListByName(name);
		
		 out.print("<table class='table'>");
	        out.print("<thead class='thead-dark' align='center'>");
	        out.print("<tr>");
	        out.print("<th scope='col' align='center'>Product ID</th>");
	        out.print("<th scope='col' align='center'>Product Name</th>");
	        out.print("<th scope='col' align='center'>Product Category</th>");
	        out.print("<th scope='col' align='center'>Product Price</th>");
	        out.print("<th scope='col' align='center'>Delete Product</th>");
	        out.print("<th scope='col' align='center'>Update Price</th>");
	        out.print("</tr>");
	        out.print("</thead>");
	        out.print("<tbody>");
		 for (ProdListByName prodList : prodmodel) {
			 out.print("<tr class='header row-hover bg-white'>");
	            out.print("<td scope='col' align='center'>" + prodList.getProd_id() + "</td>");
	            out.print("<td scope='col' align='center'>" + prodList.getProd_name() + "</td>");
	            out.print("<td scope='col' align='center'>" + prodList.getProd_cat() + "</td>");
	            out.print("<td scope='col' align='center'>" + prodList.getProd_price() + "</td>");
	            out.print("<td align='center'><button type='button' class='btn btn-danger'><a class='text-white ' href='delProd?delId="+prodList.getProd_id()+"'>Delete</a></button></td>");
				out.print("<td align='center'><button type='button' class='btn btn-success'><a class='text-white ' href='#'>Update</a></button></td>");
			
	            out.print("</tr>");
		    }
		out.print("</tbody>");
		out.print("</table>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
