<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, org.messpredict.services.*, org.messpredict.model.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Product Price</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script>
        function fetchChefMonthName() {
            var selectedProductId = document.getElementById("productSelect").value;
            window.location.href = "prediction.jsp?productId=" + selectedProductId;
        }
    </script>
</head>
<body>
    <div class="container">
        <header class="blog-header py-3">
            <div class="row flex-nowrap justify-content-between align-items-center">
                <div class="col-4 pt-1">
                    <a class="text-muted" href="#">Subscribe</a>
                </div>
                <div class="col-4 text-center">
                    <a class="blog-header-logo text-dark" href="#">Welcome</a>
                </div>
                <div class="col-4 d-flex justify-content-end align-items-center">
                    <form action="Log" method="get">
                        <input type="submit" value="Log Out" class="btn btn-sm btn-outline-secondary">
                    </form>
                </div>
            </div>
        </header>

        <div class="nav-scroller py-1 mb-2 bg-warning">
            <nav class="nav d-flex justify-content-between">
                <a class="p-2 text-dark h6" href="AddProduct.jsp">Add Product</a>
                <a class="p-2 text-dark h6" href="viewProod.jsp">View Product</a>
                <a class="p-2 text-dark h6" href="maintainProd.jsp">Maintain Product</a>
                <a class="p-2 text-dark h6" href="ViewStock.jsp">View Product Stock</a>
                <a class="p-2 text-dark h6" href="CurrentStock.jsp">Current Available Stock</a>
                <a class="p-2 text-dark h6" href="prediction.jsp">Prediction</a>
            </nav>
        </div>

        <div class="row d-flex align-items-center justify-content-center bg-success pt-5">
            <div class="col-md-6">
                <div class="card flex-md-row mb-4 box-shadow h-md-250">
                    <div class="card-body d-flex flex-column align-items-start">
                        <h3 class="mb-0">
                            <a class="text-dark" href="AddProduct.jsp">Check Month of Purchase Products</a>
                        </h3>
                        <select id="productSelect" name="productName" class="form-control" onchange="fetchChefMonthName()" required>
                            <option value="" disabled selected>Select a product...</option>
                            <%
                            CurrentStockService stockService = new CurrentStockServiceImpl();
                            List<currentStockModel> stockList = stockService.getStockList();
                            if (stockList != null) {
                                for (currentStockModel stock : stockList) {
                            %>
                                    <option value="<%= stock.getPr_id() %>"><%= stock.getPrName() %></option>
                            <%
                                }
                            } else {
                            %>
                                    <option value="" disabled>No products available</option>
                            <%
                            }
                            %>
                        </select><br>

                        <%
                        String productIdParam = request.getParameter("productId");
                        if (productIdParam != null) {
                            int productId = Integer.parseInt(productIdParam);
                            predictionServices predictionService = new predictionServicesImpl();
                            List<predictionModel> predictions = predictionService.getPrediction(productId);

                            if (predictions != null && !predictions.isEmpty()) {
                        %>
                            <div id="showGrid" class="tab" style="width: 100%;">
                                <table class="table">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th scope="col" align="center">Month</th>
                                            <th scope="col" align="center">&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;Average Product Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                        for (predictionModel m : predictions) {
                                        %>
                                        <tr class="header row-hover bg-white">
                                            <td align="center"><%= m.getMonth() %></td>
                                            <td align="center"><%= m.getAvg_Prod_price() %></td>
                                        </tr>
                                        <%
                                        }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        <%
                            } else {
                        %>
                            <p>No prediction data available for this product.</p>
                        <%
                            }
                        }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
