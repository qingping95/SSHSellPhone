<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>手机卖场 | Ecommerce</title>

<link href="css/master.css" rel="stylesheet">
<link href="css/header.css" rel="stylesheet">
<link href="css/icon-menu.css" rel="stylesheet">

<!-- SWITCHER -->
<link rel="stylesheet" id="switcher-css" type="text/css"
	href="plugins/switcher/css/switcher.css" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="plugins/switcher/css/color1.css" title="color1" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="plugins/switcher/css/color2.css" title="color2" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="plugins/switcher/css/color3.css" title="color3" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="plugins/switcher/css/color4.css" title="color4" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="plugins/switcher/css/color5.css" title="color5" media="all" />

</head>
<body class="animated-css" data-scrolling-animations="false">
	<div class="sp-body">

		<!-- Loader Landing Page -->
		<div id="loader">
			<div class="loader"></div>
		</div>
		<!-- Loader end -->



		<header id="header">
			<div class="header-top">
				<div class="container">
					<ul class="nav nav-pills nav-top navbar-right">

						<li class="dropdown my-cart"><a data-toggle="dropdown"
							class="dropdown-toggle" href="#"><i
								class="fa fa-shopping-cart"></i></a>
							<ul role="menu" class="dropdown-menu header-cart_product_list">
								<li class="added-items">
									<div class="header-cart_product_list_item clearfix">
										<a class="item-preview" href="product-details.html"><img
											src="images/cart-img-1.jpg" alt="Product"></a>
										<h4>
											<a
												class="font-additional font-weight-normal hover-focus-color cart-product-title"
												href="product-details.html">Stylish Wear</a>
										</h4>
										<span class="item-cat font-main font-weight-normal"><a
											class="hover-focus-color cart-product-category" href="#">Men</a></span>
										<span
											class="item-price font-additional font-weight-normal customColor">37.15
											USD</span> <a class="item-del hover-focus-color" href="#"><i
											class="fa fa-trash-o"></i></a>
									</div>
								</li>
								<li class="added-items">
									<div class="header-cart_product_list_item clearfix">
										<a class="item-preview" href="product-details.html"><img
											src="images/cart-img-2.jpg" alt="Product"></a>
										<h4>
											<a
												class="font-additional font-weight-normal hover-focus-color cart-product-title"
												href="product-details.html">Bag</a>
										</h4>
										<span class="item-cat font-main font-weight-normal"><a
											class="hover-focus-color cart-product-category" href="#">Accessories</a></span>
										<span
											class="item-price font-additional font-weight-normal customColor">60.10
											USD</span> <a class="item-del hover-focus-color" href="#"><i
											class="fa fa-trash-o"></i></a>
									</div>
								</li>
							</ul></li>
					</ul>
				</div>
				<div class="container-fluid trigger-container">
					<div class="row text-center">
						<button class="menu-trigger">
							<i class="fa fa-bars"></i>
						</button>
					</div>
				</div>
			</div>
			<div class="header-middle">
				<div class="container relative">
					<div class="header-search pull-right">
						<div class="header-search_form">
							<form class="product-search form-inline" action="#" method="POST">
								<div class="form-group">
									<label class="sr-only" for="searchQuery">Product Name
										...</label> <input type="search"
										class="product-search_field font-main font-weight-normal"
										id="searchQuery" placeholder="Product Name ...">
								</div>
								<button type="submit"
									class="product-search_btn hvr-bounce-to-right">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</header>

		<!-- icon-menu -->

		<!-- icon-menu -->

		<section id="main-slider">
			<div id="owl-main-slider"
				class="enable-owl-carousel owl-main-slider owl-carousel owl-theme"
				data-navigation="true" data-pagination="false"
				data-single-item="true" data-auto-play="7000"
				data-transition-style="fadeUp" data-main-text-animation="true"
				data-after-init-delay="4000" data-after-move-delay="500"
				data-stop-on-hover="true">
				<div class="item slide1">
					<img src="images/main-slider/slide-1.jpg" alt="Slide 1">
					<div class="main-slider_content">
						<div class="main-slider_smalltitle main-slider_zoomIn animated"
							style="visibility: hidden;">
							<span class="customColor">get upto 30% offer for order
								over $400!</span>
						</div>
						<h3
							class="main-slider_title font-additional font-weight-bold main-slider_fadeInLeft animated"
							style="visibility: hidden;">
							BIGGEST FASHION 2015<br> COLLECTION
						</h3>
						<div class="main-slider_row">
							<div class="line-separator main-slider_zoomIn animated"
								style="visibility: hidden;">
								<img src="images/seperator.png" alt="seperator">
							</div>
						</div>
						<div class="main-slider_buttons">
							<a href="#"
								class="btn button-border font-additional font-weight-bold hvr-bounce-to-right main-slider_fadeInLeftBig animated before-bg"
								style="visibility: hidden;">SHOP NOW</a> <a href="#"
								class="btn button-border font-additional font-weight-bold hvr-bounce-to-right main-slider_fadeInRightBig animated before-bg"
								style="visibility: hidden;">PURCHASE</a>
						</div>
					</div>
				</div>
				<div class="item slide2">
					<img src="images/main-slider/slide-2.jpg" alt="Slide 2">
					<div class="main-slider_content">
						<div class="main-slider_row">
							<div class="line-separator main-slider_zoomIn animated"
								style="visibility: hidden;">
								<img src="images/seperator.png" alt="seperator">
							</div>
						</div>
						<div
							class="main-slider_smalltitle color-main main-slider_fadeInRight animated"
							style="visibility: hidden;">HOT COLLECTION</div>
						<h3
							class="main-slider_title font-additional font-weight-bold text-shadow color-main main-slider_fadeInLeft animated"
							style="visibility: hidden;">AUTUMN WINTER 2015/2016</h3>
						<div class="main-slider_buttons">
							<a href="#"
								class="btn button-border font-additional font-weight-bold hvr-bounce-to-right main-slider_slideInUp animated before-bg"
								style="visibility: hidden;">SHOP NOW</a>
						</div>
					</div>
				</div>
				<div class="item slide3">
					<img src="images/main-slider/slide-3.jpg" alt="Slide 3">
					<div class="main-slider_content">

						<h3
							class="main-slider_title font-additional font-weight-normal text-shadow main-slider_fadeInLeft animated"
							style="visibility: hidden; padding-bottom: 5px;">style &amp;
							comfort</h3>
						<div class="main-slider_row">
							<div class="line-separator main-slider_zoomIn animated"
								style="visibility: hidden;">
								<img src="images/white-seperator.png" alt="seperator">
							</div>
						</div>
						<span
							class="main-slider_desc font-main main-slider_fadeInRight animated"
							style="visibility: hidden;">Proin est Pellentesque risus
							magna vulputate vitae sodales aliquam morb non sem lacus porta
							molis. Nunc condimentum metus</span>
						<div class="main-slider_buttons">
							<a href="#"
								class="btn button-border font-additional font-weight-bold hvr-bounce-to-right main-slider_slideInUp animated before-bg"
								style="visibility: hidden;">SHOP NOW</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<br/>
		<br/>
		<br/>
		<br/>
		<section id="collection" class="borderTopSeparator">
			<div class="container relative">

				<div class="isotopeBox">
					<h2
						class="title font-additional font-weight-bold text-uppercase wow fadeInUp"
						data-wow-duration="2s">BEST SELLERS</h2>
					<span
						class="subTitle font-additional font-weight-normal text-uppercase wow fadeIn"
						data-wow-duration="2s">NEW ARRIVAL / TRENDY COLLECTION</span>
					<div class="line-seperatorBox clearfix">
						<div class="line-seperator">
							<img src="images/seperator.png" alt="seperator">
						</div>
						<ul id="filter" class="product-filter clearfix">
							<li><a href="#"
								class="current btn font-additional font-weight-normal text-uppercase before-bg hvr-bounce-to-right"
								data-filter=".newproducts">NEW PRODUCTS</a></li>
							<li><a href="#"
								class="btn font-additional font-weight-normal text-uppercase before-bg hvr-bounce-to-right"
								data-filter=".popular">POPULAR</a></li>
							<li><a href="#"
								class="btn font-additional font-weight-normal text-uppercase before-bg hvr-bounce-to-right"
								data-filter=".discount">DISCOUNT</a></li>
						</ul>
						<div class="isotope-frame">
							<div class="isotope-filter">
								<div class="isotope-item  newproducts discount">
									<div class="product-item hvr-underline-from-center">
										<div class="product-item_body">
											<img class="product-item_image" src="images/products/4.jpg"
												alt="Product"> <a class="product-item_link"
												href="product-details.html"> <span
												class="product-item_sale color-main font-additional customBgColor circle">-15%</span>
											</a>
											<div class="product-sidebar">
												<a href="#" class="buy"> <span>BUY ITEM</span></a>
												<a href="product-details.html" class="info"> <span>QUICK VIEW</span></a> 
												<a href="#" class="favorites"> <span>ADD TO FAVORITE</span> </a>
											</div>
										</div>
										<a href="product-details.html" class="product-item_footer">
											<div
												class="product-item_title font-additional font-weight-bold text-center text-uppercase">WOMEN
												CAP</div>
											<div
												class="product-item_price font-additional font-weight-normal customColor">
												$240.00 <span>$265.00</span>
											</div>
										</a>
									</div>
								</div>
								<div class="isotope-item  newproducts popular">
									<div class="product-item hvr-underline-from-center">
										<div class="product-item_body">
											<img class="product-item_image" src="images/products/5.jpg"
												alt="Product"> 
											<div class="product-sidebar">
												<a href="#" class="buy"> <span>BUY ITEM</span>
												</a> <a href="product-details.html" class="info"> <span>QUICK
														VIEW</span>
												</a> <a href="#" class="favorites"> <span>ADD TO
														FAVORITE</span>
												</a>
											</div>
										</div>
										<a href="product-details.html" class="product-item_footer">
											<div
												class="product-item_title font-additional font-weight-bold text-center text-uppercase">BLACK
												DRESS</div>
											<div
												class="product-item_price font-additional font-weight-normal customColor">$560.00</div>
										</a>
									</div>
								</div>
								<div class="isotope-item  newproducts discount">
									<div class="product-item hvr-underline-from-center">
										<div class="product-item_body">
											<img class="product-item_image" src="images/products/6.jpg"
												alt="Product"> 
											<div class="product-sidebar">
												<a href="#" class="buy"> <span>BUY ITEM</span>
												</a> <a href="product-details.html" class="info"> <span>QUICK
														VIEW</span>
												</a> <a href="#" class="favorites"> <span>ADD TO
														FAVORITE</span>
												</a>
											</div>
										</div>
										<a href="product-details.html" class="product-item_footer">
											<div
												class="product-item_title font-additional font-weight-bold text-center text-uppercase">STYLISH
												WEAR</div>
											<div
												class="product-item_price font-additional font-weight-normal customColor">$175.00</div>
										</a>
									</div>
								</div>
								<div class="isotope-item  newproducts popular">
									<div class="product-item hvr-underline-from-center">
										<div class="product-item_body">
											<img class="product-item_image" src="images/products/7.jpg"
												alt="Product"> 
											<div class="product-sidebar">
												<a href="#" class="buy"> <span>BUY ITEM</span>
												</a> <a href="product-details.html" class="info"> <span>QUICK
														VIEW</span>
												</a> <a href="#" class="favorites"> <span>ADD TO
														FAVORITE</span>
												</a>
											</div>
										</div>
										<a href="product-details.html" class="product-item_footer">
											<div
												class="product-item_title font-additional font-weight-bold text-center text-uppercase">LEATHER
												JACKET</div>
											<div
												class="product-item_price font-additional font-weight-normal customColor">$300.00</div>
										</a>
									</div>
								</div>
								<div class="isotope-item  popular">
									<div class="product-item hvr-underline-from-center">
										<div class="product-item_body">
											<img class="product-item_image" src="images/products/8.jpg"
												alt="Product"> 
											<div class="product-sidebar">
												<a href="#" class="buy"> <span>BUY ITEM</span>
												</a> <a href="product-details.html" class="info"> <span>QUICK
														VIEW</span>
												</a> <a href="#" class="favorites"> <span>ADD TO
														FAVORITE</span>
												</a>
											</div>
										</div>
										<a href="product-details.html" class="product-item_footer">
											<div
												class="product-item_title font-additional font-weight-bold text-center text-uppercase">GRAY
												COAT</div>
											<div
												class="product-item_price font-additional font-weight-normal customColor">
												$240.00 <span>$250.00</span>
											</div>
										</a>
									</div>
								</div>
								<div class="isotope-item  discount">
									<div class="product-item hvr-underline-from-center">
										<div class="product-item_body">
											<img class="product-item_image" src="images/products/9.jpg"
												alt="Product"> 
											<div class="product-sidebar">
												<a href="#" class="buy"> <span>BUY ITEM</span>
												</a> <a href="product-details.html" class="info"> <span>QUICK
														VIEW</span>
												</a> <a href="#" class="favorites"> <span>ADD TO
														FAVORITE</span>
												</a>
											</div>
										</div>
										<a href="product-details.html" class="product-item_footer">
											<div
												class="product-item_title font-additional font-weight-bold text-center text-uppercase">MEN
												COAT</div>
											<div
												class="product-item_price font-additional font-weight-normal customColor">$500.00</div>
										</a>
									</div>
								</div>
								<div class="isotope-item  popular">
									<div class="product-item hvr-underline-from-center">
										<div class="product-item_body">
											<img class="product-item_image" src="images/products/10.jpg"
												alt="Product"> 
											<div class="product-sidebar">
												<a href="#" class="buy"> <span>BUY ITEM</span>
												</a> <a href="product-details.html" class="info"> <span>QUICK
														VIEW</span>
												</a> <a href="#" class="favorites"> <span>ADD TO
														FAVORITE</span>
												</a>
											</div>
										</div>
										<a href="product-details.html" class="product-item_footer">
											<div
												class="product-item_title font-additional font-weight-bold text-center text-uppercase">STYLISH
												WEAR</div>
											<div
												class="product-item_price font-additional font-weight-normal customColor">$175.00</div>
										</a>
									</div>
								</div>
								<div class="isotope-item discount">
									<div class="product-item hvr-underline-from-center">
										<div class="product-item_body">
											<img class="product-item_image" src="images/products/11.jpg"
												alt="Product"> 
											<div class="product-sidebar">
												<a href="#" class="buy"> <span>BUY ITEM</span>
												</a> <a href="product-details.html" class="info"> <span>QUICK
														VIEW</span>
												</a> <a href="#" class="favorites"> <span>ADD TO
														FAVORITE</span>
												</a>
											</div>
										</div>
										<a href="product-details.html" class="product-item_footer">
											<div
												class="product-item_title font-additional font-weight-bold text-center text-uppercase">WOMEN
												DRESS</div>
											<div
												class="product-item_price font-additional font-weight-normal customColor">$150.00</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section id="discount" class="discount background-container">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 clearfix">
						<img class="discount-image wow fadeIn" data-wow-delay="0.3s"
							data-wow-duration="2s" src="images/iphone6s-2.jpg" alt="Discounts">
					</div>
					<div
						class="col-lg-6 col-md-6 col-sm-12 col-xs-12 clearfix text-center">
						<div class="discount-info">
							<span
								class="discount-info_small_txt customColor text-uppercase wow fadeInUp text-center"
								data-wow-delay="0.6s" data-wow-duration="2s">唯一的不同，是处处都不同。</span> <span
								class="discount-info_shadow_txt font-additional font-weight-bold wow fadeIn text-center"
								data-wow-delay="0.8s" data-wow-duration="2s"
								style="color: #000;font-size:25">iPhone 6s <br>土豪金版
								<span class="font-additional font-weight-normal customColor">RMB 6088</span>！ 
							</span>
							<div class="line-separatorBox">
								<div class="line-separator"
									style="visibility: hidden; margin-top: 15px; margin-bottom: 30px;">
									<img src="images/seperator.png" alt="seperator">
								</div>
							</div>
							<a href="#"
								class="discount-info_link button-border font-additional font-weight-bold customBorderColor text-uppercase hvr-bounce-to-right before-bg">
								立即购买！</a>
						</div>
					</div>
				</div>
			</div>
		</section>

		<footer id="footer">
			<a class="goToTop font-additional color-main text-uppercase" href="#"
				id="scrollTop"> <i class="fa fa-angle-up"></i> <span>Top</span>
			</a>
			<div class="footer-bottom">
          <div class="container">
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 clearfix">
                <span class="footer_copyright font-main" style="color:#fff;">Created by <span class="font-main font-weight-semibold">@qingping</span> &copy; 2015 All rights reserved.</span>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 clearfix">
              </div>
            </div>
          </div>
        </div>
		</footer>
	</div>

	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/modernizr.custom.js"></script>
	<script src="js/jquery.placeholder.min.js"></script>
	<script src="js/smoothscroll.min.js"></script>

	<script src="plugins/owl-carousel/owl.carousel.min.js"></script>

	<script src="plugins/bxslider/jquery.bxslider.min.js"></script>

	<script src="plugins/switcher/js/bootstrap-select.js"></script>
	<script src="plugins/switcher/js/evol.colorpicker.min.js"
		type="text/javascript"></script>
	<script src="plugins/switcher/js/dmss.js"></script>

	<script type="text/javascript"
		src="plugins/isotope/jquery.isotope.min.js"></script>

	<script src="js/wow.min.js"></script>
	<script src="js/cssua.min.js"></script>
	<script src="js/theme.js"></script>

</body>
</html>