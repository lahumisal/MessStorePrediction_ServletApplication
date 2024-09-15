<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="CSS/LoginPage.css">
</head>
<body>
  <div class="wrapper">
    <form action="validlogin" name="frm" method="get">
    
      <thead>
        <tr>
          <th colspan="2" align ="left" ></th>
        </tr>
      </thead>
    
      <h2>Login</h2>
        <div class="input-field">
	        <input type="email" id="un" name="username" required>
	        <label>Enter your email</label>
     	</div>
	      <div class="input-field">
	        <input type="password" id="up" name="password" required>
	        <label>Enter your password</label>
	      </div>
      	
      		<button type="submit" name="s">Log In</button>
	      
    </form>
  </div>
</body>
</html>
