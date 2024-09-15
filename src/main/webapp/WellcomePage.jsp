<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mess Prediction System</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" >
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" ></script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
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
            <a class="text-muted" href="WellcomePage.jsp">Subscribe</a>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#">Wellcome</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
            <a class="text-muted" href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mx-3"><circle cx="10.5" cy="10.5" r="7.5"></circle><line x1="21" y1="21" x2="15.8" y2="15.8"></line></svg>
            </a>
            <form action="Log" method="get">
                <input type="submit" value="Login" class="btn btn-sm btn-outline-secondary">
            </form>
          </div>
        </div>
      </header>

      

      <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
        <div class="col-md-6 px-0">
        
          <h1 class="display-4 font-italic"><b>Mess store prediction system and message accommodation</b></h1>
          <p class="lead my-3">&nbsp;&nbsp;&nbsp;&nbsp;<b>This structure should help us managing and predicting inventory
		    needs in a mess store over the next specific month/year 
		    as requirement.</b></p>
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

    <main role="main" class="container">
      <div class="row">
        <div class="col-md-8 blog-main">
          <h3 class="pb-3 mb-4 font-italic border-bottom">
            More about us...
          </h3>

          <div class="blog-post">
            <h2 class="blog-post-title">Why use this?</h2>
            <p class="blog-post-meta">June 10, 2024 by <a href="#">Lahu</a></p>

            <p>we check previous data and check customer requirement</p>
            <hr>
            <p>we apply all logic in main cases as our requirement which is 
			   dependent upon previous available stock as well as feature required 
			   stock</p>
            <blockquote>
              <p>     After that we get a prediction result which is give us feature information 
			    about storage capacity of all products when we perches the product in  
			    which month using<b class="text-danger"><i> Linear Regression</i></b> 
			   </p>
            
            <h3>Objective</h3>
            <p> The primary objective of the<b> Mess Store Prediction System</b> is to maintain store records and 
            	provide reliable predictions to optimize inventory management. By accurately forecasting future needs, 
            	the system helps in adjusting the store's capacity, thereby ensuring that the mess store operates smoothly 
            	and efficiently.
            </p>
          </div><!-- /.blog-post -->

          
          <div class="blog-post">
            <h2 class="blog-post-title">New feature</h2>
            <p class="blog-post-meta">December 14, 2024 by <a href="">Lahu</a></p>

            <p>achieve this by maintaining records of store inventory and using predictive analytics to forecast future stock requirements. </p>
            
            <p>Utilizing <em style="color: red;">Regression algorithms</em> this system provides predictions to help us to decide when to increase or decrease inventory levels.</p>
          </div><!-- /.blog-post -->

          
        </div><!-- /.blog-main -->

        <aside class="col-md-4 blog-sidebar">
          <div class="p-3 mb-3 bg-light rounded">
            <h4 class="font-italic">About</h4>
            <p class="mb-0"> The primary objective of the Mess Store Prediction System is to 
            maintain store records and provide reliable predictions to optimize inventory management.
            By accurately forecasting future needs, the system helps in adjusting the store's capacity,
            thereby ensuring that the mess store operates smoothly and efficiently.</p>
          </div>

          <div class="p-3">
            <h2 class="font-italic">Archives</h2>
            	<h5>&spades; Cost Savings </h5>
			     <b>Better Budgeting:</b>  Helps plan and budget more accurately by    
			     predicting future needs. Many students or costumers work in  
			     different cities but they are not able to perches daily feed.<br><br>
				<h5>&spades; Accurate Record-Keeping </h5>
			     <b>Centralized Data:</b> Keeps all records in one place, making it easy to
			     access and manage information.
			     Compliance: Ensures records are accurate and up-to-date for      
			     regulatory compliance and audits.

          </div>

          <div class="p-3">
            <h4 class="font-italic">Elsewhere</h4>
            <ol class="list-unstyled">
              <li><a href="#">GitHub</a></li>
              <li><a href="#">Twitter</a></li>
              <li><a href="#">Facebook</a></li>
            </ol>
          </div>
        </aside><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </main><!-- /.container -->

    <footer class="blog-footer flex">
      <p>
        <button type="button" class="btn btn-primary"><a href="#" class="text-white" >Back to top</a></button>
      </p>
    </footer>
</body>
</html>