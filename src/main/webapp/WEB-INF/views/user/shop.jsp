<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="user.shop" /> | Molle Co., Ltd</title>
<!-- BEGIN MAIN -->
<main class="main">
	<!-- BEGIN INNER TOP -->
	<div class="inner-top">
		<div class="inner-top__main wrapper">
			<div class="inner-top__cols">
				<div class="inner-top__left">
					<h1 class="inner-top__title">
						<s:message code="user.shop" />
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
								<s:message code="user.shop" />
							</li>
						</ul>
					</div>
				</div>
				<div class="inner-top__right">
					<div class="inner-top__image" data-bg="assets/img/shop-banner.jpg"></div>
				</div>
			</div>
			<img class="inner-top__bg" data-lazy="assets/img/svg/vector-inner-top.svg">
		</div>
	</div>
	<!-- INNER TOP END -->

	<!-- BEGIN SHOP -->
	<div class="shop wrapper">
		<div class="shop__cols">
			<!-- BEGIN LEFT COLUMN -->
			<aside class="shop__left">
				<form action="shop/search" method="post">
					<div class="search-form">
						<input class="search-form__input" type="text" name="keywords" value="${keywords}"
							placeholder="<s:message code="user.searchph"/>">
						<button class="search-form__button" type="submit"></button>
					</div>
				</form>
				<div class="filters">
					<section class="widget js-slidedown">
						<h2 class="widget__title widget__title_hide-mob">
							<s:message code="user.category" />
						</h2>
						<a class="widget__button js-slidedown-button" href="javascript:void(0);">
							<s:message code="user.category" />
						</a>
						<div class="widget__hide js-slidedown-hide">
							<ul class="side-nav">
								<c:forEach var="item" items="${list}">
									<li class="side-nav__item">
										<a class="side-nav__link" href="shop?=${item.name}">${item.name}</a>
									</li>
								</c:forEach>
							</ul>
						</div>
					</section>
					<form>
						<section class="widget js-slidedown">
							<!-- <input class="text-input" type="number" name="min" value="${param.min}" placeholder="Min">
                        	<input class="text-input" type="number" name="max" value="${param.max}" placeholder="Max"> -->
							<h3 class="widget__title widget__title_hide-mob">
								<s:message code="user.price" />
							</h3>
							<div class="widget__hide js-slidedown-hide">
								<div class="range">
									<div class="range__slider" id="range-slider"></div>
								</div>
							</div>
						</section>
						<button class="apply-button button">
							<span class="button__text">
								<s:message code="user.apply" />
							</span>
						</button>
					</form>
				</div>
				<div class="desktop-items js-from-2">
					<div class="side-items js-content-2">
						<article class="sale-banner">
							<div class="sale-banner__all">
								<div class="sale-banner__row">
									<div class="sale-banner__cell">
										<div class="sale-banner__content">
											<h4 class="sale-banner__title">
												Season
												<span>sale</span>
											</h4>
											<p class="sale-banner__text">Non aliqua reprehenderit reprehenderit culpa laboris nulla</p>
											<a class="sale-banner__more read-more">
												<s:message code="user.shopnow" />
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="sale-banner__border"></div>
							<div class="sale-banner__image" data-bg="assets/img/sale-banner.jpg"></div>
							<a class="sale-banner__link"></a>
						</article>
					</div>
				</div>
			</aside>
			<!-- LEFT COLUMN END -->

			<!-- BEGIN RIGHT COLUMN -->
			<div class="shop__right">

				<div class="shop-panel">
					<div class="shop-panel__left">
						<span class="shop-panel__text">
							<s:message code="user.shoptext" />
							<b>${product}</b>
							<s:message code="user.shoptext1" />
						</span>
					</div>
					<div class="shop-panel__right">
						<div class="shop-panel__select select select_1">
							<select class="js-formstyler"
								onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
								<option value=""><s:message code="user.sortby" /></option>
								<option value="shop?field=id"><s:message code="user.byid" /></option>
								<option value="shop?field=name"><s:message code="user.byname" /></option>
								<option value="shop?field=price"><s:message code="user.byprice" /></option>
							</select>
						</div>
					</div>
				</div>

				<div class="inner-catalog">
					<c:forEach var="item" items="${items.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="detail/${item.id}">
									<c:if test="${item.img == null}">
										<img class="short-item__image" src="img/products/noavt.png">
									</c:if>
									<c:if test="${item.img != null}">
										<img class="short-item__image" src="img/products/${item.img}">
									</c:if>
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_green">New</span>
										</div>
										<div class="short-item__col">
											<button class="heart-button js-toggle-active"></button>
										</div>
									</div>
								</div>
								<h4 class="short-item__title">
									<a class="short-item__link" href="detail/${item.id}">${item.name}</a>
								</h4>
								<span class="short-item__price">
									<fmt:formatNumber pattern="#,###,###.## $" type="currency" value="${item.price}" currencySymbol="$" />
								</span>
							</div>
						</article>
					</c:forEach>
				</div>
				<div class="page-nav">
					<div class="page-nav__col">
						<a class="page-nav__button prev-button" href="shop?page=${items.number-1}"></a>
					</div>
					<div class="page-nav__col">
						<a class="page-nav__button next-button" href="shop?page=${items.number+1}"></a>
					</div>
				</div>
			</div>
			<!-- RIGHT COLUMN END -->
		</div>
		<div class="mob-items js-to-2"></div>
	</div>
	<!-- SHOP END -->

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
</main>
<!-- MAIN END -->
<jsp:include page="footer.jsp" />