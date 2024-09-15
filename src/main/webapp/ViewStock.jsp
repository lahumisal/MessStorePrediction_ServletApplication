<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Stock</title>

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
  
     <style type="text/css">
    	#myInput {
		  background-position: 10px 10px;
		  background-repeat: no-repeat;
		  width: 200%;
		  font-size: 16px;
		  padding: 12px 20px 12px 40px;
		  border: 1px solid #ddd;
		  margin-bottom: 12px;
		  border-radius: 15px;
		}
    	a:hover{
			text-decoration: none;
		}
    </style>
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
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
        <nav class="nav d-flex justify-content-between">
         <a class="p-2 text-dark h6  " href="AddProduct.jsp">Add Product</a>
          <a class="p-2 text-dark h6  " href="viewProod.jsp">View product</a>
          <a class="p-2 text-dark h6 " href="maintainProd.jsp">Maintain Product</a>
          <a class="p-2 text-dark h6 " href="ViewStock.jsp">View product stock</a>
          <a class="p-2 text-dark h6 " href="CurrentStock.jsp">Current Available stock</a>
          <a class="p-2 text-dark h6 " href="prediction.jsp">predication </a>
        </nav>
      </div>
		<div class="nav-scroller py-1 mb-2 bg-warning d-flex align-items-center justify-content-between">
        <nav class="nav d-flex justify-content-between">
          <a class="p-2 text-dark h6 " href="ViewStock.jsp"></a>
          <a class="p-2 text-dark h6 " href="yearWiseStock.jsp">Year wise stock</a>
          <a class="p-2 text-dark h6 " href="monthWiseStock.jsp">Month wise stock</a>
          <a class="p-2 text-dark h6 " href="dateWiseStock.jsp">Between date wise stock</a>
        </nav>
      </div>
      
      
      
      
    </div>
</body>
</html>