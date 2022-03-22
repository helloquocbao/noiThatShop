<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<header id="header">
	<div class="row">
		<div class="span4">
			<h1>
				<a class="logo" href="<c:url value="/trang-chu"/>"><span>Twitter
						Bootstrap ecommerce template</span> <img
					src="<c:url value="/assets/user/img/logo-tcl.png"/>"
					alt="bootstrap sexy shop"> </a>
			</h1>
		</div>
		<div class="span4">
			<div class="offerNoteWrapper">
				<h1 class="dotmark">
					<i class="icon-cut"></i> Shop chuyên bán đồ decor và nội thất giành cho gia đình, văn phòng 
					. Chuyên tư vấn và lắp đặt sản phẩm decor $
				</h1>
			</div>
		</div>
		<div class="span4 alignR">
			<p>
				<br> <strong> Hỗ trợ (24/7) : 0800 1234 678 </strong><br>
				<br>
			</p>
			<span class="btn btn-mini">[ ${ TotalQuantityCart } ] <span
				class="icon-shopping-cart"></span></span> <span
				class="btn btn-warning btn-mini">$</span> <span class="btn btn-mini">&pound;</span>
			<span class="btn btn-mini">&euro;</span>
		</div>
	</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				<ul class="nav">

					<li class="active"><a href="<c:url value="/trang-chu"/>"> Trang chủ </a></li>
					<li class=""><a href="<c:url value="/tat-ca-san-pham"/>">Sản phẩm</a></li>
					<li class=""><a href="<c:url value="/gio-hang"/>">Giỏ hàng</a></li>
					<li class=""><a href="#">Bài viết </a></li>
					<li class=""><a href="#">Liên hệ</a></li>

					<%-- <c:forEach var="item" items="${menus }" varStatus="index">
						<c:if test="${index.first }">
							<li class="active">
						</c:if>
						<c:if test="${not index.first }">
							<li class="">
						</c:if>
						<a href="<c:url value="/trang-chu"/>">${item.tenDS } </a>

					</c:forEach> --%>

				</ul>
				<form action="#" class="navbar-search pull-left">
					<input type="text" placeholder="Tiềm kiếm"
						class="search-query span2">
				</form>
				<ul class="nav pull-right">
					<c:if test="${ empty loginInfo }">
						<li class="dropdown"><a data-toggle="dropdown"
							class="dropdown-toggle" href="#"><span class="icon-lock"></span>
								Đăng nhập <b class="caret"></b></a>
							<div class="dropdown-menu">
								<form class="form-horizontal loginFrm">
									<div class="control-group">
										<input type="text" class="span2" id="inputEmail"
											placeholder="Email">
									</div>
									<div class="control-group">
										<input type="password" class="span2" id="inputPassword"
											placeholder="Password">
									</div>
									<div class="control-group">
										<label class="checkbox"> <input type="checkbox">
											Remember me
										</label>
										<button type="submit" class="shopBtn btn-block">Sign
											in</button>
									</div>
								</form>
							</div></li>
					</c:if>
					<c:if test="${ not empty loginInfo }">
						<li><a href="#">${ loginInfo.name } <b class="caret"></b>
						</a></li>
					</c:if>

				</ul>
			</div>
		</div>
	</div>
</div>
