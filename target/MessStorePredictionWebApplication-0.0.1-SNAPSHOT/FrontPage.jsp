<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<link rel="stylesheet" href="CSS/FrontPage.css">
</head>
<body>
 
 	<div class="main-Container">
	<div class="photo">
		<img alt="" src="Imgs\welcome.jpg">
	</div>
		<h2>Mess Store Prediction System & Message accommodation <br><br>
	
		<button
			onclick="document.getElementById('id01').style.display='block'"
			style="width: 10%; height: 40px;"><b>Login</b></button>
		</h2>
		<div id="id01" class="modal">

			<form class="modal-content animate" action="validlogin" method="get" >
				<div class="imgcontainer">
					<span onclick="document.getElementById('id01').style.display='none'"
						class="close" title="Close Modal">&times;</span> 
						<img src="Imgs\img_avatar2.png" alt="Avatar" class="avatar">
				</div>

				<div class="container" >
					<label><b>Username</b></label> 
					<input type="text"placeholder="Enter Username" id="un" name="username" required></input>
					<label><b>Password</b></label> 
					<input type="password" placeholder="Enter Password" id="up" name="password" required></input>

					<button type="submit"  name="s" >Login</button>
					<label> <input type="checkbox"  name="remember"> Remember me </label>
				</div>

				<div class="container" style="background-color: #f1f1f1">
					<button type="button"
						onclick="document.getElementById('id01').style.display='none'"
						class="cancelbtn">Cancel</button>
					<span class="psw"> <a href="ForgetPass.jsp">Forgot password?</a></span>
				</div>
				
			</form>
		</div>
	</div>

</body>
</html>