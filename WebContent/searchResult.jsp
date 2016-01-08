<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.tiny.ssh.beans.Phone"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>产品信息 | Ecommerce</title>

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
		<%@ page import="java.util.List" %>
		<%@ page import="com.tiny.ssh.beans.Phone" %>
		<%List<Phone> list = (List<Phone>)session.getAttribute("searchList"); %>
		<div class="content-box">
			<div class="category-filter clearfix wow fadeIn"
				data-wow-delay="0.3s">
				<div class="grd-lst pull-left" style="left:10%">
					<span>共搜索到 </span> <a href="#"
						class="grid-type category-active"> <%=list.size()%> </a> <span
						class="slash-seperator"></span>个结果
				</div>
				
			</div>
			<div class="products-cat clearfix">
				<div class="category-pagination col-sm-12">
					<s:iterator value="#session.searchList" var="phone" >
						<li class="col-md-4 col-sm-6 wow fadeIn" data-wow-delay="0.3s">
							<div class="product-item hvr-underline-from-center">
								<div class="product-item_body">
									<img class="product-item_image" src="images/products/${phone.proID%14+4}.jpg"
										alt="Product" sytle="height:600 width:600"> 
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
						</li>
					</s:iterator>
				</div>
			</div>
		</div>
		<br /> <br /> <br /> <br />
		<footer id="footer"> <a
			class="goToTop font-additional color-main text-uppercase" href="#"
			id="scrollTop"> <i class="fa fa-angle-up"></i> <span>Top</span>
		</a>
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 clearfix">
						<span class="footer_copyright font-main" style="color: #fff;">Created
							by <span class="font-main font-weight-semibold">@qingping</span>
							&copy; 2015 All rights reserved.
						</span>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 clearfix"></div>
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