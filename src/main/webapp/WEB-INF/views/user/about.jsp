<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="user.aboutus" /> | Molle Co., Ltd</title>
<main class="main">
	<div class="inner-top">
		<div class="inner-top__main wrapper">
			<div class="inner-top__cols">
				<div class="inner-top__left">
					<h1 class="inner-top__title">
						<s:message code="user.aboutus" />
					</h1>
					<div class="breadcrumbs">
						<ul class="breadcrumbs__list">
							<li class="breadcrumbs__item">
								<a class="breadcrumbs__link" href="index">
									<s:message code="user.home" />
								</a>
							</li>
							➥&#160;&#160;
							<li class="breadcrumbs__item">
								<s:message code="user.aboutus" />
							</li>
						</ul>
					</div>
				</div>
				<div class="inner-top__right">
					<div class="inner-top__image" data-bg="assets/img/about-banner.jpg"></div>
				</div>
			</div>
			<img class="inner-top__bg" data-lazy="assets/img/svg/vector-inner-top.svg">
		</div>
	</div>

	<article class="about-company wrapper">
		<div class="about-company__top">
			<h2 class="about-company__title">Giới thiệu về công ty</h2>
			<p class="about-company__text">Đại diện chính thức của thương hiệu quần áo Mollee nổi tiếng thế giới
				tại Châu Âu và thế giới.</p>
		</div>
		<div class="about-company__cols">
			<div class="about-company__col">
				<section class="about-section">
					<h3 class="about-section__title">Sự khởi đầu của cuộc hành trình của chúng tôi</h3>
					<span class="about-section__year">2020</span>
					<p class="about-section__text">
						Năm 2020, công ty chúng tôi kỷ niệm 5 năm thành lập - đây là những năm tích lũy kinh nghiệm kinh doanh
						trên khắp thế giới. <br> Tham gia với chúng tôi trong số các khách hàng của chúng tôi! Bạn chỉ có
						thể mua những thứ ban đầu từ chúng tôi. Chúng tôi cung cấp các sản phẩm của các thương hiệu yêu thích
						của bạn - quần áo, giày dép, phụ kiện, hàng dệt may và nhiều hơn nữa - các sản phẩm chất lượng cho mọi
						sở thích và lứa tuổi từ Châu Âu.
					</p>
				</section>
			</div>
			<div class="about-company__col">
				<div class="about-stats">
					<h3 class="collection-title">
						<span class="collection-title__count">5${product}</span>
						<span class="collection-title__plus">+</span>
						<span class="collection-title__text">
							<s:message code="user.prodfyou" />
						</span>
					</h3>
					<img class="about-stats__vector" data-lazy="assets/img/svg/vector-about.svg">
				</div>
			</div>
			<div class="about-company__col">
				<div class="about-stats about-stats_bottom">
					<h3 class="collection-title">
						<span class="collection-title__count">1${account}</span>
						<span class="collection-title__plus">+</span>
						<span class="collection-title__text">
							<s:message code="user.clients" />
						</span>
					</h3>
					<img class="about-stats__vector" data-lazy="assets/img/svg/vector-about.svg">
				</div>
			</div>
			<div class="about-company__col">
				<section class="about-section">
					<h3 class="about-section__title">Bây giờ chúng ta là ai?</h3>
					<span class="about-section__year">2022</span>
					<p class="about-section__text">
						Hiện chúng tôi có đội ngũ hơn 500 công nhân lành nghề và khoảng 27 thương hiệu quần áo hợp tác với chúng
						tôi. Đặt hàng tại cửa hàng của chúng tôi giúp tiết kiệm thời gian và công sức để tìm những gì bạn cần;
						sự hỗ trợ của các chuyên gia tư vấn có kinh nghiệm trong việc chọn mẫu. <br> Các chuyên gia của
						chúng tôi sẽ giúp bạn xác định kích thước của bạn, cho bạn biết về các loại vải và chất liệu.
					</p>
				</section>
			</div>
		</div>
	</article>

	<!-- BEGIN NEWSLETTER -->
	<aside class="newsletter">
		<div class="newsletter__banner" data-bg="assets/img/newsletter-banner.jpg">
			<div class="newsletter__main">
				<div class="newsletter__bg">
					<div class="newsletter__max">
						<h4 class="newsletter__title">
							<s:message code="user.news" />
						</h4>
						<p class="newsletter__text">
							<s:message code="user.newstext" />
						</p>
						<form>
							<div class="newsletter-form">
								<div class="newsletter-form__left">
									<input class="newsletter-form__input text-input" type="email"
										placeholder="<s:message code="user.emailph"/>">
								</div>
								<div class="newsletter-form__right">
									<button class="newsletter-form__button button">
										<span class="button__text">
											<s:message code="user.subscribe" />
										</span>
									</button>
								</div>
							</div>
						</form>
					</div>
					<img class="newsletter__vector" src="assets/img/svg/vector-newsletter.svg">
				</div>
			</div>
		</div>
	</aside>
	<!-- NEWSLETTER END -->

	<div class="brands-block wrapper">
		<ul class="brands">
			<li class="brands__item">
				<a class="brands__link" href="#">
					<span class="brands__cell">
						<img class="brands__logo brands__logo_1" data-lazy="assets/img/svg/brand_1.svg">
					</span>
				</a>
			</li>
			<li class="brands__item">
				<a class="brands__link" href="#">
					<span class="brands__cell">
						<img class="brands__logo brands__logo_2" data-lazy="assets/img/svg/brand_2.svg">
					</span>
				</a>
			</li>
			<li class="brands__item">
				<a class="brands__link" href="#">
					<span class="brands__cell">
						<img class="brands__logo brands__logo_3" data-lazy="assets/img/svg/brand_3.svg">
					</span>
				</a>
			</li>
			<li class="brands__item">
				<a class="brands__link" href="#">
					<span class="brands__cell">
						<img class="brands__logo brands__logo_4" data-lazy="assets/img/svg/brand_4.svg">
					</span>
				</a>
			</li>
			<li class="brands__item">
				<a class="brands__link" href="#">
					<span class="brands__cell">
						<img class="brands__logo brands__logo_5" data-lazy="assets/img/svg/brand_5.svg">
					</span>
				</a>
			</li>
		</ul>
	</div>
</main>
<jsp:include page="footer.jsp" />