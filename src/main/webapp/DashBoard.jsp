<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" >
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" ></script>
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
    <style type="text/css">
    a:hover{
			text-decoration: none;
		}
		.jumbotron{
			background-image: linear-gradient(#000046,#1CB5E0);
		}
    </style>
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
        <nav class="nav d-flex justify-content-between ">
         <a class="p-2 text-dark h6 " href="AddProduct.jsp">Add Product</a>
          <a class="p-2 text-dark h6" href="viewProod.jsp">View product</a>
          <a class="p-2 text-dark h6" href="maintainProd.jsp">Maintain Product</a>
          <a class="p-2 text-dark h6" href="ViewStock.jsp">View product stock</a>
          <a class="p-2 text-dark h6" href="CurrentStock.jsp">Current Available stock</a>
          <a class="p-2 text-dark h6" href="prediction.jsp">predication </a>
        </nav>
      </div>

      <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
        <div class="col-md-6 px-0">
          <h1 class="display-4 font-italic">Mess store prediction system and message accommodation</h1>
          <p class="lead my-3">&nbsp;&nbsp;&nbsp;&nbsp;This structure should help us managing and predicting inventory
		    needs in a mess store over the next specific month/year 
		    as requirement.</p>
        </div>
      </div>


      <div class="row mb-2">
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 box-shadow h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-primary"></strong>
              <h3 class="mb-0">
                <a class="text-dark d-flex" href="#">Featured post</a>
              </h3>
              <div class="mb-1 text-muted">Dec 12</div>
              <p class="card-text mb-auto">Coming soon.....</p>
              <img class="card-img-right flex-auto d-none d-md-block" src="Imgs/gift.png" alt="Card image cap">
            </div>
            
          </div>
        </div>
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 box-shadow h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-success"></strong>
              <h3 class="mb-0">
                <a class="text-dark" href="#">Upcoming Bonus</a>
              </h3>
              <div class="mb-1 text-muted">Jav 31</div>
              <p class="card-text mb-auto">Coming soon...</p>
              <img class="card-img-right flex-auto d-none d-md-block" src="Imgs/gift.png" alt="Card image cap">
            </div>
          </div>
        </div>
      </div>
      
      
      
    </div>
</body>
</html>