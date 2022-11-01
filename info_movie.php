<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>xemphimhd</title>
    <link rel="stylesheet" href="./assets/css/main.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;1,300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/themify-icons.css">
    <link href=”https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css” rel=”stylesheet”/>
</head>
<body>
    <div class="app">
        <header class="header">
            <div class="grid">
                <div class="navbar">
                    <div class="logo_img"><img src="./assets/img/mainlogo.png"></div>
                    <ul class="navbar-list">
                        <li class="navbar-list_item">
                            <a href="#" class="navbar-list_item__link">Tài khoản</a>
                        </li>
                        <li class="navbar-list_item header__navbar-item--gach">
                            <a href="./huysession.php" class="navbar-list_item__link">Đăng xuất</a>
                        </li>
                    </ul>
                </div>
            </div>
        </header>
        <div class="container">
            <div class="grid">
                <div class="grid-row">
                    <div class="grid-column__4">
                        <div class="movie-info__contain">
                        <?php
                                require_once "./assets/db/config.php";
                                $id = $_GET['id'];
                                $sql = "SELECT * FROM movie_info Where ID = '$id'";
                                $result = mysqli_query($conn, $sql);
                                $row = mysqli_fetch_assoc($result);
                        ?>
                                <img src="<?php echo $row['Poster']?>" class="movie_info--poster">
                        </div>
                        <button class="click-bttn">30.000đ</button> 
                    </div>
                    <div class="grid-column__8">
                        <div class="movie-info__contain">
                            <h1><?php echo $row['Name_movie']?></h1>
                            <h2><?php echo $row['Name_movie_en']?></h2>
                            <h3><i class="fa-brands fa-imdb"></i>Điểm số: <?php echo $row['Score']?></h3>
                            <h3>Ngày phát hành: <?php echo $row['Release_Day'] ?></h3>
                            <h3>Đạo diễn: <?php echo $row['Director'] ?></h3>
                            <h4>Nội dung chính:</h4>
                            <p style = "text-align: justify; font-size: 12pt; margin: 10px; line-height: 2rem;"><?php echo $row['Description']?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="footer-content">
                         
            </div>
        </footer>
    </div>
</body>
</html>