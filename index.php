<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>xemphimhd</title>
    <link rel="stylesheet" href="./assets/css/main.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;1,300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./assets/css/themify-icons.css">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="app">
        <header class="header">
            <div class="grid">
                <div class="navbar">
                    <div class="logo_img"><img src="./assets/img/mainlogo.png"></div>
                    <ul class="navbar-list">
                        <?php
                        ob_start();
                        session_start();
                        if(isset($_SESSION["email"])) {
                            echo'
                            <li class="navbar-list_item">
                                <a href="#" class="navbar-list_item__link">Tài khoản</a>
                            </li>
                            <li class="navbar-list_item header__navbar-item--gach">
                                <a href="huysession.php" class="navbar-list_item__link">Đăng xuất</a>
                            </li>';
                        }
                        else {
                        echo '
                        <li class="navbar-list_item">
                            <a href="./formlogin.php" class="navbar-list_item__link">Đăng nhập</a>
                        </li>
                        <li class="navbar-list_item header__navbar-item--gach">
                            <a href="./register.php" class="navbar-list_item__link">Đăng ký</a>
                        </li>
                        ';
                        }
                        ?>
                    </ul>
                </div>
            </div>
        </header>
        <?php                    
        if(isset($_SESSION["email"])) {
            echo
        '<div class="sub-header">
            <div class="grid">
                <div class="sub-header__banner">
                    <h1 class="sub-header__banner--name">Triết Thành Lộc<br>WEBSITE XEM PHIM ĐỈNH CAO</h1>
                    <div class="sub-header__banner-detail">
                        <div class="sub-header__banner--welcome">
                           <h3>HOT MOVIE 2022</h3><br>
                           <p>Bullet Train: Sát thủ đối đầu là một bộ phim điện ảnh thuộc thể loại hài hành động - tội phạm của Mỹ công chiếu năm 2022 do David Leitch làm đạo diễn và sản xuất, với phần kịch bản do Zak Olkewicz chắp bút dựa trên tiểu thuyết Maria Beetle của Isaka Kōtarō.</p>
                        </div>
                        <img src="./assets/img/banner.png" alt="poster phim mới" class="sub-header__banner--poster">
                        <div class="sub-header__banner--update">
                            <p>Thuê ngay với giá chỉ:<p>
                            <button class="sub-header__banner--update-btn">20.000đ</button>
                        </div>
                    </div>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/0IOsk2Vlc4o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </div>
        </div>'; } ?>
        <div class="container">
            <div class="grid">
                <div class="grid-row">
                    <div class="grid-column__2">
                        <nav class="category">
                            <h1 class="category-heading">
                                <i class="fas fa-bars"></i>
                                Danh mục
                            </h1>
                            <ul class="category-list">
                                <li class="category-list-item">
                                    <a href="" class="category-list-item__link">Trang chủ</a>
                                </li>
                                <li class="category-list-item">
                                    <a href="" class="category-list-item__link">Truyền hình</a>
                                </li>
                                <li class="category-list-item">
                                    <a href="" class="category-list-item__link">Thể Thao</a>
                                </li>
                                <li class="category-list-item">
                                    <a href="" class="category-list-item__link">Phim bộ</a>
                                </li>
                                <li class="category-list-item">
                                    <a href="" class="category-list-item__link">Phim lẻ</a>
                                </li>
                            </ul>
                        </nav>
                        <?php                 
                        if(isset($_SESSION["email"])) {
                            echo
                        '<div class="Container-Login-Acount">
                            <img src="https://goeco.link/OvQhq" alt="" class="Container-Login-Account__avt"><br>
                            <div class="Container-Login-Account__detail">
                                <h2>Chào mừng người dùng đã đến với website<h2>
                                <ul class="Container-Login-Account-List">
                                    <li class="Container-Login-Account-Item">
                                        <a href="">Tài khoản</a>
                                    </li>
                                    <li class="Container-Login-Account-Item">
                                        <a href="">Thông Tin</a>
                                    </li>
                                    <li class="Container-Login-Account-Item">
                                        <a href="">Trợ giúp</a>
                                    </li>
                                    <li class="Container-Login-Account-Item">
                                        <a href="./huysession.php">Đăng xuất</a>
                                    </li>
                                </ul>
                            </div>   
                        </div>'; } ?>
                    </div>
                    <div class="grid-column__10">
                        <div class="grid-row">
                        <?php
                            require_once "./assets/db/config.php";
                            $sql = "SELECT * FROM movie_info";
                            $result = mysqli_query($conn, $sql);
                            if(mysqli_num_rows($result) > 0 ){
                            while($row = mysqli_fetch_assoc($result)){ ?>
                            <div class="grid-column__2-4">
                                <a class="movie-product-item" href="
                                <?php 
                                    if(isset($_SESSION["email"])) {
                                        echo 'info_movie.php?id='.$row['ID'];
                                    }
                                    else{
                                        echo "./message.php";
                                    }
                                ?>">
                           
                                    <div class="movie-product-img" style="background-image: url(<?php echo $row['Poster']?>)"></div>
                                    <h4 class="movie-product-main-title"><?php echo $row['Name_movie']?></h4>
                                    <h5 class="movie-product-sub-title"><?php echo $row['Name_movie_en']?></h5>
                            </a>
                            </div>
                    <?php }  }else{
                            echo "0 result";
                             } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">                
        </footer>
        <?php                    
        if(!isset($_SESSION["email"])) {
            echo '
            <div class="Alert-Sign-in">
                <h4 class="Alert-Sign-in__noty">Vui lòng đăng nhập tài khoản để có thể sử dụng đầy đủ tính năng của trang web!!!!</h4>
            </div>
            ';
        }
        ?>
    </div>
</body>
</html>