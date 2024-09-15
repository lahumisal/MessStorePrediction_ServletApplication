<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset_Password</title>

<link rel="stylesheet" href="CSS/FrontPage.css">
<script src="JS/FrontPage.js"></script>

</head>
<body>
 
 	<div class="main-Container">
		<div class="photo">
			<img alt="" src="Imgs\welcome.jpg">
		</div>
	
		<h2>Mess Store Prediction System & Message accommodation <br><br>
			<button	onclick="document.getElementById('id01').style.display='block'" style="width: auto;"><b>Click Here for update Password</b></button>
		</h2>
		
		<div id="id01" class="modal">

			<form class="modal-content animate" action="FargotPass" method="get" name="frm" >
				<div class="imgcontainer">
					<span
						onclick="document.getElementById('id01').style.display='none'"
						class="close" title="Close Modal">&times;</span> <img
						src="Imgs\img_avatar2.png" alt="Avatar" class="avatar">
				</div>

				<div class="container">
					<label><b>Username</b></label> 
					<input type="text"placeholder="Enter Username" id="un" name="username" required>
					<label><b>Password</b></label> 
					<input type="password" placeholder="Enter New Password" id="up" name="password" required></input>

					<button type="submit" name="s" onclick="return confirm('Are you sure you want to Update Password?');">Update Password</button>
					<label> <input type="checkbox" checked="checked" name="remember" onclick="updatepass()"> Remember me </label>
				</div>

			</form>
		</div>
	</div>

</body>
</html>