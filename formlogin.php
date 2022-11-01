<?php 
	include_once "validate_login.php";
?>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Đăng nhập</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <style>
	#btn-login:hover {
		background-color:  #7283a6 !important;
	}
  </style>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link rel="stylesheet" href="./assets/css/stylelogin.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="box-form">
	<div class="left">
		<div class="overlay">
			<h1>Xemphimhd.com</h1>
			<p>Xem phim online chất lượng cao, xem phim nhanh. Phim Media cập nhật các bộ phim HD, xem phim miễn phí. Rất nhiều phim hành động mới, tâm lý tình cảm hấp dẫn</p>
			<span>
				<p>Nền tảng của chúng tôi</p>
				<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
				<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
			</span>
		</div>
	</div>
	
	
	<div class="right">
		<h5>Login</h5>
		<p>Don't have an account? <a href="./register.php">Creat Your Account</a> it takes less than a minute</p>
		<form method="post" name="loginform">
			<div class="inputs">
				<input type="text" name="email" value="<?php if(isset($_COOKIE['email'])) echo $_COOKIE['email'];?>" placeholder="Email" required>
				<br>
				<input type="password" name="password" placeholder="password" required>
				<div class="remember-me--forget-password">
					<label>
						<input type="checkbox" name="item">
						<span class="text-checkbox">Remember me</span>
					</label>
					<p>forget password?</p>
				</div>
				<input type="submit" name="login" id="btn-login" style="background-color: #3b5998; color: white; 
				border-radius: 10px; width: fit-content; padding: 0.5rem 30px; margin: 10px; font-weight: 600;" value="Login">
			</div>
		</form>
		<span><?php if (isset($error_message)) { echo $error_message; } ?></span>
	</div>
</div>  
</body>
</html>