<%@page import="java.util.List"%>
<%@page import="org.messpredict.services.*,org.messpredict.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Current Stock</title>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" >
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" ></script>
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <script type="text/javascript" 	src="JS/FrontPage.js"></script>
  
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
      function checkNumber(input) {
          const value = input.value;
          const numberPattern = /^[0-9]+$/;
          if (!numberPattern.test(value)) {
              alert("Please enter a valid number.");
              input.value = ''; // Clear the invalid input
              input.focus(); // Set focus back to the input field
              return false;
          }
          return true;
      }
    </script>
   <style type="text/css">
   	a:hover{
			text-decoration: none;
		}
   </style>
</head>
<body>
	<div class="container">
      <header class="blog-header py-3 ">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            <a class="text-muted" href="#">Subscribe</a>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#">Wellcome</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
            <a class="text-muted" href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mx-3"><circle cx="10.5" cy="10.5" r="7.5"></circle><line x1="21" y1="21" x2="15.8" y2="15.8"></line></svg>
            </a>
            <form action="Log" method="get">
                <input type="submit" value="Log Out" class="btn btn-sm btn-outline-secondary">
            </form>
          </div>
        </div>
      </header>
	
      <div class="nav-scroller py-1 mb-2 bg-warning">
        <nav class="nav d-flex justify-content-between ">
          <a class="p-2 text-dark h6  " href="AddProduct.jsp">Add Product</a>
          <a class="p-2 text-dark h6  " href="viewProod.jsp">View product</a>
          <a class="p-2 text-dark h6 " href="maintainProd.jsp">Maintain Product</a>
          <a class="p-2 text-dark h6 " href="ViewStock.jsp">View product stock</a>
          <a class="p-2 text-dark h6 " href="CurrentStock.jsp">Current Available stock</a>
          <a class="p-2 text-dark h6 " href="prediction.jsp">predication </a>
        </nav>
      </div>

      <div class="row d-flex align-items-center justify-content-center">
        <div class="col-md-6 ">
          <div class="card flex-md-row mb-4 box-shadow h-md-250 shadow-lg p-3 mb-5 bg-white rounded">
            <div class="card-body d-flex flex-column align-items-start">
              <h3 class="mb-0">
                <a class="text-dark" href="CurrentStock.jsp">Current Stock Check</a>
              </h3><br>
				<form action="abcd" method="get" name="frm">
				    <select name="productName" class="form-control" required style="width: 170%;">
				        <option value="" disabled selected>Select used product here....</option>
				        <%
				            CurrentStockServiceImpl stockService = new CurrentStockServiceImpl();
				            List<currentStockModel> stockList = stockService.getStockList();
				            if (stockList != null) {
				                for (currentStockModel stock : stockList) {
				       			%>
				                    <option value="<%=stock.getPr_id()%>"><%=stock.getPrName()%></option>
				        		<%
				                }
				            } else {
				       			 %>
				                	<option value="" disabled>No products available</option>
						        <%
						            }
						        %>
				    </select><br>
				    <input type="text" name="qty" onkeyup="checkNumber(this)" required placeholder="Enter Used Quantity..If not use Enter 0" style="width: 170%; height: 40px;">
				    <button type="submit" class="btn btn-primary mt-3">Submit</button>
				</form>
			</div>
          </div>
        </div>
      </div>
      
      
      
    </div>
</body>
</html>