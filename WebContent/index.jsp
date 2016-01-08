<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
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
<body class="animated-css" data-scrolling-animations="false" >
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
						<s:form class="product-search form-inline" action="searchPhone">
							<div class="header-search_filter">
			                	<select class="formDropdown font-additional font-weight-normal" name="searchOPT" id="filterby">
				                  	<option value="brand">Filter By</option>
				                  	<option value="model">型号</option>
				                  	<option value="brand">品牌</option>
			                	</select>
			                	<i class="fa fa-angle-down customColor"></i>
			              	</div>
							<div class="header-search_form">
								<div class="form-group">
									<label class="sr-only" for="searchQuery">Product Name
										...</label> 
									<input type="search" name="searchINFO"
										class="product-search_field font-main font-weight-normal"
										id="searchQuery" placeholder="搜索产品品牌、型号">
								</div>
								<button type="submit"
									class="product-search_btn hvr-bounce-to-right">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</s:form>
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
					<img src="images/main-slider/Iphone6s.jpg" alt="Slide 1">
					<div class="main-slider_content">
						<h3
							class="main-slider_title font-additional font-weight-bold main-slider_fadeInLeft animated"
							style="visibility: hidden; ">
							唯一不同<br> 是处处都不同
						</h3>
						<div class="main-slider_row">
							<div class="line-separator main-slider_zoomIn animated"
								style="visibility: hidden;">
								<img src="images/seperator.png" alt="seperator">
							</div>
						</div>
						<div class="main-slider_buttons">
							<a href="product?phoneID=${phone.proID}"
								class="btn button-border font-additional font-weight-bold hvr-bounce-to-right main-slider_fadeInLeftBig animated before-bg"
								style="visibility: hidden;color:#000">立即查看</a>
						</div>
					</div>
				</div>
				<div class="item slide2">
					<img src="images/main-slider/Samsung.jpg" alt="Slide 2">
					<div class="main-slider_content">
						<div class="main-slider_row">
							<div class="line-separator main-slider_zoomIn animated"
								style="visibility: hidden;">
								<img src="images/seperator.png" alt="seperator">
							</div>
						</div>
						<div
							class="main-slider_smalltitle color-main main-slider_fadeInRight animated"
							style="visibility: hidden;">最热 新品</div>
						<h3
							class="main-slider_title font-additional font-weight-bold text-shadow color-main main-slider_fadeInLeft animated"
							style="visibility: hidden;">秋天 冬天  2015/2016</h3>
						<div class="main-slider_buttons">
							<a href="product?phoneID=${phone.proID}"
								class="btn button-border font-additional font-weight-bold hvr-bounce-to-right main-slider_slideInUp animated before-bg"
								style="visibility: hidden;">立即查看</a>
						</div>
					</div>
				</div>
				<div class="item slide3">
					<img src="images/main-slider/Mi4c.jpg" alt="Slide 3">
					<div class="main-slider_content">
						<br/><br/><br/><br/><br/><br/><br/><br/>
						<div class="main-slider_row">
							<div class="line-separator main-slider_zoomIn animated"
								style="visibility: hidden;">
								<img src="images/white-seperator.png" alt="seperator">
							</div>
						</div>
						<div class="main-slider_buttons">
							<a href="product?phoneID=${phone.proID}"
								class="btn button-border font-additional font-weight-bold hvr-bounce-to-right main-slider_slideInUp animated before-bg"
								style="visibility: hidden; color:#000">立即查看</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<br/>
		<br/>
		<br/>
		<br/>
		<section id="collection" class="borderTopSeparator" >
			<div class="container relative">

				<div class="isotopeBox">
					<h2
						class="title font-additional font-weight-bold text-uppercase wow fadeInUp"
						data-wow-duration="2s">最热手机</h2>
					<span
						class="subTitle font-additional font-weight-normal text-uppercase wow fadeIn"
						data-wow-duration="2s">给你好看 / 给你好用</span>
					<div class="line-seperatorBox clearfix">
						<div class="line-seperator">
							<img src="images/seperator.png" alt="seperator">
						</div>
						<ul id="filter" class="product-filter clearfix">	
							<li><a href="#"
								class="current btn font-additional font-weight-normal text-uppercase before-bg hvr-bounce-to-right"
								data-filter=".newproducts">最新上架</a></li>
							<li><a href="#"
								class="btn font-additional font-weight-normal text-uppercase before-bg hvr-bounce-to-right"
								data-filter=".popular">最流行</a></li>
							<li><a href="#"
								class="btn font-additional font-weight-normal text-uppercase before-bg hvr-bounce-to-right"
								data-filter=".discount">最实用</a></li>
						</ul>
						<div class="isotope-frame">
							<div class="isotope-filter">
								<s:iterator value="#session.poplist" var="phone" >
									<div class="isotope-item newproducts popular">
										<div class="product-item hvr-underline-from-center">
											<div class="product-item_body">
												<img class="product-item_image" src="images/products/${phone.proID%14+4}.jpg"
													alt="Product"> 
												<div class="product-sidebar">
													<a href="product?phoneID=${phone.proID}" class="info"> 
														<span>查看信息</span>
													</a>
												</div>
											</div>
											<a href="product?phoneID=${phone.proID}" class="product-item_footer">
												<div
													class="product-item_title font-additional font-weight-bold text-center text-uppercase">
													${phone.brand} ${phone.model}
												</div>
												<div
													class="product-item_price font-additional font-weight-normal customColor">
													RMB ${phone.prise}
												</div>
											</a>
										</div>
									</div>
								</s:iterator>
								<s:iterator value="#session.dislist" var="phone" >
									<div class="isotope-item popular discount">
										<div class="product-item hvr-underline-from-center">
											<div class="product-item_body">
												<img class="product-item_image" src="images/products/${phone.proID%14+4}.jpg"
													alt="Product"> 
												<div class="product-sidebar">
													<a href="product?phoneID=${phone.proID}" class="info">
														<span>查看信息</span>
													</a>
												</div>
											</div>
											<a href="product?phoneID=${phone.proID}" class="product-item_footer">
												<div
													class="product-item_title font-additional font-weight-bold text-center text-uppercase">
													${phone.brand} ${phone.model}
												</div>
												<div
													class="product-item_price font-additional font-weight-normal customColor">
													RMB ${phone.prise}
												</div>
											</a>
										</div>
									</div>
								</s:iterator>
								<s:iterator value="#session.newlist" var="phone" >
									<div class="isotope-item discount newproducts">
										<div class="product-item hvr-underline-from-center">
											<div class="product-item_body">
												<img class="product-item_image" src="images/products/${phone.proID%14+4}.jpg"
													alt="Product"> 
												<div class="product-sidebar">
													<a href="product?phoneID=${phone.proID}" class="info">
														<span>查看信息</span>
													</a>
												</div>
											</div>
											<a href="product?phoneID=${phone.proID}" class="product-item_footer">
												<div
													class="product-item_title font-additional font-weight-bold text-center text-uppercase">
													${phone.brand} ${phone.model}
												</div>
												<div
													class="product-item_price font-additional font-weight-normal customColor">
													RMB ${phone.prise}
												</div>
											</a>
										</div>
									</div>
								</s:iterator>
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
								查看详细信息！</a>
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