<%-- 
    Document   : managerproductdetail
    Created on : May 4, 2019, 5:42:40 PM
    Author     : nguyenhuuhoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>shop quần áo online - Nguyễn Hữu Hòa</title>
	<meta charset="UTF-8">
	<meta name="description" content=" Divisima | eCommerce Template">
	<meta name="keywords" content="divisima, eCommerce, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i" rel="stylesheet">


	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/flaticon.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>
	<link rel="stylesheet" href="css/jquery-ui.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/style.css"/>


	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 text-center text-lg-left">
						<!-- logo -->
						<a href="trangchu" class="site-logo">
							<img src="img/logo.png" alt="">
						</a>
					</div>
					<div class="col-xl-6 col-lg-5">
                                            <h3>Quản lí shop (administrator)</h3>
					</div>
					
				</div>
			</div>
		</div>
		<nav class="main-navbar">
			<div class="container">
				<!-- menu -->
				<ul class="main-menu">
					<li><a href="trangchu">Trang chủ</a></li>
                                        <li><a href="qlsanpham?sort=az">Quản lí sản phẩm</a>
                                        <li><a href="qlloaisanpham">Quản lí loại sản phẩm</a>
				</ul>
			</div>
		</nav>
	</header>
	<!-- Header section end -->
        
        <!-- product section -->
	<section class="product-section">
		<div class="container">
			<div class="back-link">
				<a href="qlsanpham?sort=az"> &lt;&lt; Về danh sách sản phẩm</a>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="product-pic-zoom">
                                            <img class="product-big-img" src="${requestScope.item.image}" alt="">
					</div>
				</div>
				<div class="col-lg-6 product-details">
                                    <h2 class="p-title">${requestScope.item.name}</h2>
                                    <h4 class="p-price">$&emsp;${requestScope.item.cost}VNĐ</h4>
                                    <h4 class="p-stock">Số lượng còn lại: <span>${requestScope.item.number}</span></h4>
                                
                                    <div id="accordion" class="accordion-area">
						<div class="panel">
							<div class="panel-header" id="headingOne">
								<button class="panel-link active" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapse1">Thông tin chi tiết</button>
							</div>
							<div id="collapse1" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
								<div class="panel-body">
									<h4 class="p-stock">Xuất xứ: <span>${requestScope.item.location}</span></h4>
                                                                        <h4 class="p-stock">Nhà sản xuất: <span>${requestScope.item.nsx}</span></h4>
                                                                        <h4 class="p-stock">Mô tả: <span>${requestScope.item.description}</span></h4>
                                                                        <h4 class="p-stock">Loại sản phẩm: <span>${requestScope.item.type.name}</span></h4>
								</div>
							</div>
						</div>
                                    </div>
				</div>
			</div>
		</div>
	</section>
	<!-- product section end -->
        
        
    <jsp:include page="footer.jsp"></jsp:include>  
