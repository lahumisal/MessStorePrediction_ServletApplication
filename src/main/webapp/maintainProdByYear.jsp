<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="maintainProd.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Year wise data</title>
   
    <script>
        function fetchYearWiseData() {
            var selectedYear = document.getElementById("yearSelect").value;
            window.location.href = "maintainProdByYear.jsp?year=" + selectedYear;
        }
    </script>
</head>
<body>
    <div class="row mb-2 d-flex align-items-center justify-content-center" style="min-width: 20%;">
        <div class="col-md-6">
            <div class="card flex-md-row mb-4 box-shadow h-md-250 shadow-lg p-3 mb-5 bg-white rounded">
                <div class="card-body d-flex flex-column align-items-start ">
                    <h3 class="mb-0">
                        <a class="text-dark" href="maintainProdByYear.jsp">All Product List Year Wise</a>
                    </h3>
                    <div class="mb-1 text-muted">Nov 12</div>

                    <select id="yearSelect" class="form-select mb-2" style="width: 100%; height: 40px;" aria-label="Default select example" onchange="fetchYearWiseData()">
                        <option selected>Open this select menu</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                        <option value="2023">2023</option>
                        <option value="2024">2024</option>
                    </select>

                    <%@ page import="java.util.*,org.messpredict.controller.*,org.messpredict.model.*,org.messpredict.repository.*,org.messpredict.services.*" %>
                    <%
                        String year = request.getParameter("year");
                        if (year != null) {
                            maintainOrderMasterService list = new maintainOrderMasterServiceImpl();
                            List<YearWiseProductModel> Listmodel = list.isYearWiseProductList(Integer.parseInt(year));
                            if (Listmodel != null) {
                    %>
                    <div id="showGrid" class="tab" style="width: 100%;">
                        <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col" align="center">Product ID</th>
                                    <th scope="col" align="center">Product Name</th>
                                    <th scope="col" align="center">Product Price</th>
                                    <th scope="col" align="center">Product Quantity</th>
                                    <th scope="col" align="center">Product Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    int count = 0;
                                    for (YearWiseProductModel m : Listmodel) {
                                        count++;
                                %>
                                <tr class="header row-hover bg-white">
                                    <th scope="row"><%= count %></th>
                                    <td align="center"><%= m.getPr_name() %></td>
                                    <td align="center"><%= m.getPr_rate() %></td>
                                    <td align="center"><%= m.getQty() %></td>
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
                                out.println("<p>No data found for the selected year.</p>");
                            }
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
