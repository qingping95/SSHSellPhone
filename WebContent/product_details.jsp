<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.tiny.ssh.beans.Phone" %>
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

		<section id="pageTitleBox" class="paralax breadcrumb-container"  style="background-image:url(images/main-slider/Iphone6s.jpg);">
        <div class="overlay"></div>
        <div class="container relative">
          <h1 class="title font-additional font-weight-normal wow zoomIn" data-wow-delay="0.3s" style="color:#000">
          	${session.product.brand} ${session.product.model}
          </h1>
          <ul class="breadcrumb-list">
            <li>
              <a href="index.jsp" class="font-additional font-weight-normal" style="color:#000">主页</a>
              <span><i class="fa fa-angle-double-right" style="color:#A0522D"></i> </span>
            </li>
            <li>
              <a href="index.jsp" class="font-additional font-weight-normal" style="color:#000">手机</a>
              <span><i class="fa fa-angle-double-right" style="color:#A0522D"></i></span>
            </li>
            <li>
              <a href="#" class="font-additional font-weight-normal" style="color:#000">产品信息</a>
            </li>
          </ul>
        </div>
      </section>
      
			<section id="productDetails" class="product-details">
				<div class="container">
					<div class="row narrow-content">
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 clearfix">
							<div class="product-gallery vertical-pager">
									<img src="images/products/${session.product.proID%14+4}.jpg" alt="product-image" style="height:80%;width:80%" />
							</div>
						</div>
						<div class="product-cart product-details-narrow col-lg-6 col-md-6 col-sm-12 col-xs-12 clearfix">
							<div class="product-options_header clearfix wow fadeIn" data-wow-delay="0.3s">
								<h2 class="font-additional font-weight-bold text-uppercase">
									${session.product.model}
								</h2>
								<h3 class="font-additional font-weight-bold text-uppercase">
									${session.product.brand}
								</h3>
								<div class="product-item_price font-additional font-weight-normal customColor">
									￥${session.product.prise}
								</div>
								<ul class="rating">
									<li><span aria-hidden="true" class="icon-star customColor"></span></li>
									<li><span aria-hidden="true" class="icon-star customColor"></span></li>
									<li><span aria-hidden="true" class="icon-star customColor"></span></li>
									<li><span aria-hidden="true" class="icon-star customColor"></span></li>
									<li><span aria-hidden="true" class="icon-star color-additional"></span></li>
								</ul>
							</div>
							<div class="product-options_body clearfix wow fadeIn" data-wow-delay="0.3s">
								<h4 class="font-additional font-weight-bold text-uppercase">产品样式种类</h4>
								<div class="product-options_desc font-main color-third">
									产品颜色数量：${session.product.colorNum}<br/>
									屏幕尺寸：${session.product.screenSize}
								</div>
							</div>
							<% Phone pho = (Phone)session.getAttribute("product"); %>
							<div class="product-options_footer clearfix wow fadeIn" data-wow-delay="0.3s">
								<div class="product-options_row">									
									<h4 class="font-additional font-weight-bold text-uppercase">产品详细信息</h4>
									<div class="product-options_desc font-main color-third">
										<table width="500" height="200">
											<tr>
												<td>品牌：${session.product.brand}</td>	
												<td>型号：${session.product.model}</td>
											</tr>
											<tr>
												<td>发布时间：${session.product.launchDate}年</td>	
												<td>价格：￥${session.product.prise}</td>
											</tr>
											<tr>
												<td>手机种类：<%=pho.getStyle()==1?"翻盖":"直板"%></td>
												<td>厚度：${session.product.thickness} mm</td>
											</tr>
											<tr>
												<td>重量：${session.product.weight} g</td>
												<td>屏幕尺寸：${session.product.screenSize} 英寸</td>
											</tr>
											<tr>
												<td>分辨率：${session.product.imageResolution}</td>
												<td>RAM容量：${session.product.RAM} MB</td>
											</tr>
											<tr>
												<td>ROM容量：${session.product.ROM} MB</td>
												<td>相机像素：${session.product.camera}</td>
											</tr>
											<tr>
												<td>蓝牙：<%=pho.getBluetooth()==1?"支持":"不支持"%></td>
												<td>WLAN：<%=pho.getWLAN()==1?"支持":"不支持"%></td>
											</tr>
											<tr>
												<td>电池容量：${session.product.batteryCapacity} 毫安时</td>
											</tr>	
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		<br/>
		<br/>
		<br/>
		<br/>
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