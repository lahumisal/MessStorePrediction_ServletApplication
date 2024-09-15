<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Updated Current Stock</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" >
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" ></script>

<style type="text/css">
    a:hover {
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
                <a class="blog-header-logo text-dark" href="#">Welcome</a>
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
            <a class="p-2 text-dark h6" href="AddProduct.jsp">Add Product</a>
            <a class="p-2 text-dark h6" href="viewProod.jsp">View Product</a>
            <a class="p-2 text-dark h6" href="maintainProd.jsp">Maintain Product</a>
            <a class="p-2 text-dark h6" href="ViewStock.jsp">View Product Stock</a>
            <a class="p-2 text-dark h6" href="CurrentStock.jsp">Current Available Stock</a>
            <a class="p-2 text-dark h6" href="prediction.jsp">Prediction</a>
        </nav>
    </div>

    <div class="row mb-2 d-flex align-items-center justify-content-center" style="min-width: 20%;">
        <div class="col-md-6">
            <div class="card flex-md-row mb-4 box-shadow h-md-250 shadow-lg p-3 mb-5 bg-white rounded">
                <div class="card-body d-flex flex-column align-items-start">
                    <h3 class="mb-0">
                        <a class="text-dark" href="CurrentStock.jsp">Current Stock</a>
                    </h3>
                    <div class="mb-1 text-muted">Nov 12</div>

                    <%@ page import="java.util.*,org.messpredict.model.*,org.messpredict.services.*" %>
                    <%
                        CurrentStockService stockService = new CurrentStockServiceImpl();
                        List<currentStockModel> stockList = stockService.getStockList();
                        if (stockList != null && !stockList.isEmpty()) {
                    %>
                    <div id="showGrid" class="tab" style="width: 100%;">
                        <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col" align="center">ID</th>
                                    <th scope="col" align="center">&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;Product Name</th>
                                    <th scope="col" align="center">Stock Quantity</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    int count = 0;
                                    for (currentStockModel stock : stockList) {
                                        count++;
                                %>
                                <tr class="header row-hover bg-white">
                                    <th scope="row"><%= count %></th>
                                    <td align="center"><%= stock.getPrName() %></td>
                                    <td align="center"><%= stock.getUsed_qty() %></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <% } else { %>
                        <p>No stock available.</p>
                    <% } %>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
