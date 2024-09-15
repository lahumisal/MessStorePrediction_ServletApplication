<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="maintainProd.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="row mb-2 d-flex align-items-center justify-content-center "
		style="min-width: 20%;">
		<div class="col-md-6">
			<div
				class="card flex-md-row mb-4 box-shadow h-md-250 shadow-lg p-3 mb-5 bg-white rounded "
				style="">
				<div class="card-body d-flex flex-column align-items-start">
					<h3 class="mb-0">
						<a class="text-dark" href="maintainProdBydate.jsp">All Product List Date Wise</a>
					</h3>
					<div class="mb-1 text-muted ">Nov 12</div>

					<%@ page import="java.util.*,org.messpredict.controller.*,org.messpredict.model.*,org.messpredict.repository.*,org.messpredict.services.*"%>
					<%!maintainOrderMasterService listserv = new maintainOrderMasterServiceImpl();%>
					<%
					List<MaintainPerchessModel> Listmodel = listserv.isViewDateWiseProductList();
					%>
					<div class="tab">
						<input type="text" id="myInput"
							onkeyup="searchUsingAjax(this.value)"
							placeholder="Search for names.." title="Type in a name"><br>
					</div>
					<div id="showGrid" class="tab ">
						<table class="table">
							<thead class="thead-dark">
								<tr>
									<th scope="col" align="center">Product ID</th>
									<th scope="col" align="center">Product Name</th>
									<th scope="col" align="center">Product Quantity</th>
									<th scope="col" align="center">Product Price</th>
									<th scope="col" align="center">Product Date</th>
								</tr>
							</thead>
							<tbody>
								<%
								int count = 0;
								for (MaintainPerchessModel m : Listmodel) {
									count++;
								%>
								<tr class="header row-hover bg-white">
									<th scope="row"><%=count%></th>
									<td align="center"><%=m.getPr_name()%></td>
									<td align="center"><%=m.getTotal_QTY()%></td>
									<td align="center"><%=m.getTotal_Price()%></td>
									<td align="center"><%=m.getG_date()%></td>

								</tr>
								<%
								}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>