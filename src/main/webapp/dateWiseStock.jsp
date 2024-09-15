<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ViewStock.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script>
        function fetchDateWiseData() {
            var fdate = document.getElementById("fdateSelect").value;
            var ldate = document.getElementById("ldateSelect").value;
            if (fdate && ldate) {
                window.location.href = "dateWiseStock.jsp?fdate=" + fdate + "&ldate=" + ldate;
            }
        }
    </script>
</head>
<body>
    <div class="data row mb-2 d-flex align-items-center justify-content-center"
        style="min-width: 20%;">
        <div class="col-md-6">
            <div class="card flex-md-row mb-4 box-shadow h-md-250 shadow-lg p-3 mb-5 bg-white rounded">
                <div class="card-body d-flex flex-column align-items-start">
                    <h3 class="mb-0">
                        <a class="text-dark" href="dateWiseStock.jsp">All Product Stock List Between 2 Dates</a>
                    </h3>
                    <div class="mb-1 text-muted">Nov 12</div>

                    <label><b>Select 1st Date</b></label>
                    <input type="date" id="fdateSelect" name="fdate" onchange="fetchDateWiseData()" style="width: 100%;" required><br>
                    <label><b>Select 2nd Date</b></label>
                    <input type="date" id="ldateSelect" name="ldate" onchange="fetchDateWiseData()" style="width: 100%;" required><br>
                    
                    <%@ page import="java.util.*, org.messpredict.controller.*, org.messpredict.model.*, org.messpredict.repository.*, org.messpredict.services.*" %>
                    <%
                        String fdate = request.getParameter("fdate");
                        String ldate = request.getParameter("ldate");

                        if (fdate != null && ldate != null) {
                            viewStockService list = new viewStockServiceImpl();
                            List<viewStockListModel> Listmodel = list.isViewDateWiseStock(fdate, ldate);
                            if (Listmodel != null) {
                    %>
                    <div id="showGrid" class="tab" style="width: 100%;">
                        <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col" align="center">Product ID</th>
                                    <th scope="col" align="center">Grocery Name</th>
                                    <th scope="col" align="center">Grocery Quantity</th>
                                    <th scope="col" align="center">Grocery Date</th>
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
                                    <td align="center"><%= m.getG_qty() %></td>
                                    <td align="center"><%= m.getG_date() %></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <%
                            }
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
