<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng ký</title>
    <link rel="stylesheet" href="./assets/css/styleregister.css">
</head>
<?php
    ob_start();
    session_start();
    if(isset($_SESSION["email"])) {
        header("Location: index.php");
    }
?>
<body>
    <div class="container">
        <div class="title">Đăng ký thành viên</div>
        <div class="content">
            <form method='post' action='validate_register.php'>
                <div class="user-detail">
                    <div class="input-detail">
                        <span class="detail">Email:</span>
                        <input type="text" name="txtEmail" placeholder="Nhập Email" required>
                    </div>
                    <div class="input-detail">
                        <span class="detail">Họ:</span>
                        <input type="text" name="txtHo" placeholder="Nhập họ" required>
                    </div>
                    <div class="input-detail">
                        <span class="detail">Mật khẩu:</span>
                        <input type="password" name="pwd" placeholder="Nhập mật khẩu" required>
                    </div>
                    <div class="input-detail">
                        <span class="detail">Tên:</span>
                        <input type="text" name="txtTen" placeholder="Nhập tên" required>
                    </div>
                    <div class="input-detail">
                        <span class="detail">Ngày sinh:</span>
                        <input type="date" name="dateNgaySinh" required>
                    </div>
                    <div class="input-detail">
                        <span class="detail">Số điện thoại:</span>
                        <input type="text" name="txtSoDienThoai" placeholder="Nhập số điện thoại" required>
                    </div>
                </div>
                <div class="gender-detail">
                    <span class="gender-title">Giới tính:</span>
                    <div class="category">
                        <input type="radio" name="txtGioiTinh" value="Nam" checked="checked"> Nam
                        <input type="radio" name="txtGioiTinh" value="Nữ"> Nữ 
                    </div>
                </div>
                <div class="button">
                    <input type="submit" value="Đăng ký" class="submit">
                    <input type="reset" value="Nhập lại" class="reset">
                </div>             
            </form>
        </div>
    </div>
</body>
</html>