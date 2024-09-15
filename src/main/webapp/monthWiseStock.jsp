<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   	<%@include file="ViewStock.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
        function fetchMonthWiseData() {
            var selectedMonth = document.getElementById("monthSelect").value;
            window.location.href = "monthWiseStock.jsp?month=" + selectedMonth;
        }
    </script>
</head>
<body>
	<div class="row mb-2 d-flex align-items-center justify-content-center" style="min-width: 20%;">
        <div class="col-md-6">
            <div class="card flex-md-row mb-4 box-shadow h-md-250 shadow-lg p-3 mb-5 bg-white rounded">
                <div class="card-body d-flex flex-column align-items-start">
                    <h3 class="mb-0">
                        <a class="text-dark" href="monthWiseStock.jsp">All Product Stock List Month Wise</a>
                    </h3>
                    <div class="mb-1 text-muted">Nov 12</div>

                    <select id="monthSelect" class="form-select  mb-2" style="width: 100%;height: 40px;" aria-label="Default select example" onchange="fetchMonthWiseData()">
                        <option >Open this select menu</option>
                        <option value="January">January</option>
                        <option value="February">February</option>
                        <option value="March">March</option>
                        <option value="April">April</option>
                        <option value="May">May</option>
                        <option value="June">June</option>
                        <option value="July">July</option>
                        <option value="August">August</option>
                        <option value="September">September</option>
                        <option value="October">October</option>
                        <option value="November">November</option>
                        <option value="December">December</option>
                    </select>

                    <%@ page import="java.util.*,org.messpredict.controller.*,org.messpredict.model.*,org.messpredict.repository.*,org.messpredict.services.*" %>
                    <%
                        String month = request.getParameter("month");
                        if (month != null) {
                        	viewStockService listserv = new viewStockServiceImpl();
                            List<viewStockListModel> Listmodel = listserv.isViewMonthWiseStock(month);
                            if (Listmodel != null) {
                    %>
                    <div id="showGrid" class="tab" style="width: 100%;">
                        <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col" align="center">Product ID</th>
                                    <th scope="col" align="center">Product Name</th>
                                    <th scope="col" align="center">Product Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    int count = 0;
                                    for (viewStockListModel m : Listmodel) {
                                        count++;
                                %>
                                <tr class="header row-hover bg-white">
                                    <th scope="row"><%= count %></th>
                                    <td align="center"><%= m.getPr_name() %></td>
                                    <td align="center"><%= m.getG_date() %></td>
                                    
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <%
                            } else {
                                out.println("<p>No data found for the selected month.</p>");
                            }
                        }
                    %>

                </div>
            </div>
        </div>
    </div>
</body>
</html>