<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="user.home" /> | Molle Co., Ltd</title>
<!-- BEGIN MAIN -->
<main class="main">
	<!-- BEGIN FIRST SCREEN -->
	<div class="first-screen">
		<div class="first-screen__left">
			<div class="first-screen__mob-cols">
				<div class="first-screen__mob-col">
					<div class="slider-count">
						<span class="slider-count__text js-main-count">
							<span>1</span>
							/3
						</span>
					</div>
				</div>
				<div class="first-screen__mob-col">
					<ul class="first-screen__socials side-socials">
						<li class="side-socials__item">
							<a class="side-socials__link">FB</a>
						</li>
						<li class="side-socials__item">
							<a class="side-socials__link">TW</a>
						</li>
						<li class="side-socials__item">
							<a class="side-socials__link">INS</a>
						</li>
						<li class="side-socials__item">
							<a class="side-socials__link">PT</a>
						</li>
					</ul>
				</div>
				<div class="first-screen__mob-col js-to-1"></div>
			</div>
		</div>
		<div class="first-screen__center">
			<div class="main-slider">
				<div class="main-slider__list-wrap">
					<div class="main-slider__list js-main-slider loaded">
						<div class="main-slider__item js-slide active">
							<div class="main-slider__max">
								<div class="main-slider__row">
									<div class="main-slider__cell">
										<div class="main-slider__content">
											<span class="main-slider__subtitle category-subtitle">
												<s:message code="user.newc" />
											</span>
											<h2 class="main-slider__title">
												<s:message code="user.fashionweek" />
											</h2>
											<a href="shop" class="main-slider__button button">
												<span class="button__text">
													<s:message code="user.shopnow" />
												</span>
											</a>
										</div>
										<div class="main-slider__image-wrap">
											<div class="main-slider__image" data-bg="assets/img/slides/slide1.jpg"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="main-slider__item js-slide">
							<div class="main-slider__max">
								<div class="main-slider__row">
									<div class="main-slider__cell">
										<div class="main-slider__content">
											<span class="main-slider__subtitle category-subtitle">
												<s:message code="user.newc" />
											</span>
											<h2 class="main-slider__title">
												<s:message code="user.fashionweek" />
											</h2>
											<a href="shop" class="main-slider__button button">
												<span class="button__text">
													<s:message code="user.shopnow" />
												</span>
											</a>
										</div>
										<div class="main-slider__image-wrap">
											<div class="main-slider__image" data-bg="assets/img/slides/slide2.jpg"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="main-slider__item js-slide">
							<div class="main-slider__max">
								<div class="main-slider__row">
									<div class="main-slider__cell">
										<div class="main-slider__content">
											<span class="main-slider__subtitle category-subtitle">
												<s:message code="user.newc" />
											</span>
											<h2 class="main-slider__title">
												<s:message code="user.fashionweek" />
											</h2>
											<a href="shop" class="main-slider__button button">
												<span class="button__text">
													<s:message code="user.shopnow" />
												</span>
											</a>
										</div>
										<div class="main-slider__image-wrap">
											<div class="main-slider__image" data-bg="assets/img/slides/slide3.jpg"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="main-slider__bg-wrap">
					<img class="main-slider__bg" data-lazy="assets/img/svg/vector-first-screen.svg">
					<div class="scroll-down">
						<span class="scroll-down__icon"></span>
					</div>
				</div>
			</div>
		</div>
		<div class="first-screen__right js-from-1">
			<div class="slider-dots dots-1 js-main-dots"></div>
			<div class="slider-arrows arrows-1 js-main-arrows js-content-1"></div>
		</div>
	</div>
	<!-- FIRST SCREEN END -->
	<!-- BEGIN BEST SELLERS -->
	<section class="main-block wrapper">
		<div class="main-block__top">
			<span class="main-block__subtitle category-subtitle">
				<s:message code="user.topp" />
			</span>
			<h3 class="main-block__title">
				<s:message code="user.bestsellat" />
				Mollee
			</h3>
		</div>
		<div class="catalog-slider js-catalog loaded">
			<div class="catalog-slider__list-wrap">
				<div class="catalog-slider__list js-catalog-carousel">
					<c:forEach var="item" items="${items.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="detail/${item.id}">
									<c:if test="${item.img == null}">
										<img class="short-item__image" data-lazy="img/products/noavt.png">
									</c:if>
									<c:if test="${item.img != null}">
										<img class="short-item__image" data-lazy="img/products/${item.img}">
									</c:if>
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_red">
												<s:message code="user.sale" />
											</span>
											<span class="item-tag item-tag_green">
												<s:message code="user.newp" />
											</span>
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
			</div>
			<div class="catalog-slider__cols">
				<div class="catalog-slider__col">
					<button class="prev-button js-catalog-prev"></button>
				</div>
				<div class="catalog-slider__col dots-2 js-catalog-dots"></div>
				<div class="catalog-slider__col">
					<button class="next-button js-catalog-next"></button>
				</div>
			</div>
			<div class="load-icon"></div>
			<img class="catalog-slider__bg" data-lazy="assets/img/svg/vector-catalog.svg">
		</div>
	</section>
	<!-- BEST SELLERS END -->
	<!-- BEGIN COLLECTION -->
	<section class="collection-block wrapper">
		<div class="collection-block__content">
			<div class="collections">
				<div class="collections__top">
					<div class="collections__max">
						<h3 class="collection-title">
							<span class="collection-title__count">5${product}</span>
							<span class="collection-title__plus">+</span>
							<span class="collection-title__text">
								<s:message code="user.prodfyou" />
							</span>
						</h3>
					</div>
				</div>
				<article class="collection collection_1">
					<div class="collection__all">
						<div class="collection__mob-image">
							<a class="collection__image" data-bg="assets/img/collections/collection1.jpg"></a>
							<span class="collection__category">
								<s:message code="user.accessorie" />
							</span>
						</div>
						<div class="collection__row">
							<div class="collection__cell">
								<div class="collection__content">
									<span class="collection__subtitle category-subtitle">
										<s:message code="user.newaccessorie" />
									</span>
									<h4 class="collection__title">
										<s:message code="user.fashionsummer" />
									</h4>
									<a href="shop" class="collection__more read-more">
										<s:message code="user.shopnow" />
									</a>
								</div>
							</div>
						</div>
						<a class="collection__link"></a>
					</div>
				</article>
				<article class="season-sale">
					<div class="season-sale__all">
						<div class="season-sale__image" data-bg="assets/img/collections/collection2.jpg"></div>
						<div class="season-sale__row">
							<div class="season-sale__cell">
								<div class="season-sale__content">
									<h4 class="season-sale__title">
										<s:message code="user.seasonsale" />
									</h4>
									<p class="season-sale__text">
										<s:message code="user.seasonsaletext" />
									</p>
									<a href="shop" class="season-sale__more read-more">
										<s:message code="user.shopnow" />
									</a>
								</div>
							</div>
						</div>
						<a class="season-sale__link"></a>
					</div>
				</article>
				<article class="collection collection_2">
					<div class="collection__all">
						<div class="collection__mob-image">
							<a class="collection__image" data-bg="assets/img/collections/collection3.jpg"></a>
							<span class="collection__category">
								<s:message code="user.sweter" />
							</span>
						</div>
						<div class="collection__row">
							<div class="collection__cell">
								<div class="collection__content">
									<span class="collection__subtitle category-subtitle">
										<s:message code="user.menc" />
									</span>
									<h4 class="collection__title">
										<s:message code="user.newautumn" />
									</h4>
									<a href="shop" class="collection__more read-more">
										<s:message code="user.shopnow" />
									</a>
								</div>
							</div>
						</div>
						<a class="collection__link"></a>
					</div>
				</article>
				<article class="collection collection_3">
					<div class="collection__all">
						<div class="collection__mob-image">
							<a class="collection__image" data-bg="assets/img/collections/collection4.jpg"></a>
							<span class="collection__category">
								<s:message code="user.dress" />
							</span>
						</div>
						<div class="collection__row">
							<div class="collection__cell">
								<div class="collection__content">
									<span class="collection__subtitle category-subtitle">
										<s:message code="user.womenc" />
									</span>
									<h4 class="collection__title">
										<s:message code="user.trendylook" />
									</h4>
									<a href="shop" class="collection__more read-more">
										<s:message code="user.shopnow" />
									</a>
								</div>
							</div>
						</div>
						<a class="collection__link"></a>
					</div>
				</article>
				<div class="collections__bottom">
					<div class="collections__max">
						<h3 class="collection-title">
							<span class="collection-title__count">1${account}</span>
							<span class="collection-title__plus">+</span>
							<span class="collection-title__text">
								<s:message code="user.clients" />
							</span>
						</h3>
					</div>
				</div>
			</div>
			<div class="load-more">
				<a class="button">
					<span class="button__text">
						<s:message code="user.seeall" />
					</span>
				</a>
			</div>
		</div>
		<img class="collection-block__bg-left" data-lazy="assets/img/svg/vector-collections.svg"> <img
			class="collection-block__bg-right" data-lazy="assets/img/svg/vector-collections.svg">
	</section>
	<!-- COLLECTION END -->
	<!-- BEGIN PRODUCTS -->
	<section class="main-block wrapper">
		<div class="main-block__top">
			<span class="main-block__subtitle category-subtitle">
				<s:message code="user.newc" />
			</span>
			<h3 class="main-block__title">
				<s:message code="user.fprod" />
			</h3>
		</div>
		<div class="products-nav tabs-nav js-line">
			<ul class="tabs-nav__list">
				<li class="tabs-nav__item js-tabs-item js-line-item active">
					<a class="tabs-nav__link js-line-link js-tabs-link" href="#products-1">
						<s:message code="user.all" />
					</a>
				</li>
				<li class="tabs-nav__item js-line-item js-tabs-item">
					<a class="tabs-nav__link js-line-link js-tabs-link" href="#products-2">
						<s:message code="user.men" />
					</a>
				</li>
				<li class="tabs-nav__item js-line-item js-tabs-item">
					<a class="tabs-nav__link js-line-link js-tabs-link" href="#products-3">
						<s:message code="user.women" />
					</a>
				</li>
				<li class="tabs-nav__item js-line-item js-tabs-item">
					<a class="tabs-nav__link js-line-link js-tabs-link" href="#products-4">
						<s:message code="user.accessorie" />
					</a>
				</li>
				<li class="tabs-nav__item js-line-item js-tabs-item">
					<a class="tabs-nav__link js-line-link js-tabs-link" href="#products-5">
						<s:message code="user.newarrival" />
					</a>
				</li>
			</ul>
			<div class="tabs-nav__line js-line-element"></div>
		</div>
		<!-- BEGIN TAB 1 -->
		<div class="product-tab js-tabs-content active" id="products-1">
			<div class="main-catalog">
				<div class="main-catalog__list">
					<c:forEach var="item" items="${items.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="detail/${item.id}">
									<c:if test="${item.img == null}">
										<img class="short-item__image" data-lazy="img/products/noavt.png">
									</c:if>
									<c:if test="${item.img != null}">
										<img class="short-item__image" data-lazy="img/products/${item.img}">
									</c:if>
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_green">
												<s:message code="user.newp" />
											</span>
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
				<img class="main-catalog__bg" data-lazy="assets/img/svg/vector-catalog.svg">
			</div>
		</div>
		<!-- TAB 1 END -->
		<!-- BEGIN TAB 2 -->
		<div class="product-tab js-tabs-content" id="products-2">
			<div class="main-catalog">
				<div class="main-catalog__list"></div>
				<img class="main-catalog__bg" data-lazy="assets/img/svg/vector-catalog.svg">
			</div>
		</div>
		<!-- TAB 2 END -->
		<!-- BEGIN TAB 3 -->
		<div class="product-tab js-tabs-content" id="products-3">
			<div class="main-catalog">
				<div class="main-catalog__list"></div>
				<img class="main-catalog__bg" data-lazy="assets/img/svg/vector-catalog.svg">
			</div>
		</div>
		<!-- TAB 3 END -->
		<!-- BEGIN TAB 4 -->
		<div class="product-tab js-tabs-content" id="products-4">
			<div class="main-catalog">
				<div class="main-catalog__list"></div>
				<img class="main-catalog__bg" data-lazy="assets/img/svg/vector-catalog.svg">
			</div>
		</div>
		<!-- TAB 4 END -->
		<!-- BEGIN TAB 5 -->
		<div class="product-tab js-tabs-content" id="products-5">
			<div class="main-catalog">
				<div class="main-catalog__list"></div>
				<img class="main-catalog__bg" data-lazy="assets/img/svg/vector-catalog.svg">
			</div>
		</div>
		<!-- TAB 5 END -->
		<div class="load-more">
			<a class="button" href="shop">
				<span class="button__text">
					<s:message code="user.seeall" />
				</span>
			</a>
		</div>
	</section>
	<!-- PRODUCTS END -->
	<!-- BEGIN ADVANTAGES -->
	<div class="advantages wrapper">
		<div class="advantages__list">
			<article class="advantage">
				<div class="advantage__content">
					<div class="advantage__icon-wrap">
						<img class="advantage__icon" data-lazy="assets/img/svg/advantages-icon_1.svg">
					</div>
					<h4 class="advantage__title">
						<s:message code="user.freeship" />
					</h4>
					<div class="advantage__line"></div>
					<p class="advantage__text">Non aliqua reprehenderit reprehenderit culpa laboris nulla minim anim
						velit</p>
				</div>
				<img class="advantage__bg" data-lazy="assets/img/svg/vector-advantages.svg">
			</article>
			<article class="advantage">
				<div class="advantage__content">
					<div class="advantage__icon-wrap">
						<img class="advantage__icon" data-lazy="assets/img/svg/advantages-icon_2.svg">
					</div>
					<h4 class="advantage__title">
						<s:message code="user.service" />
					</h4>
					<div class="advantage__line"></div>
					<p class="advantage__text">Non aliqua reprehenderit reprehenderit culpa laboris nulla minim anim
						velit</p>
				</div>
				<img class="advantage__bg" data-lazy="assets/img/svg/vector-advantages.svg">
			</article>
			<article class="advantage">
				<div class="advantage__content">
					<div class="advantage__icon-wrap">
						<img class="advantage__icon" data-lazy="assets/img/svg/advantages-icon_3.svg">
					</div>
					<h4 class="advantage__title">
						<s:message code="user.moneyback" />
					</h4>
					<div class="advantage__line"></div>
					<p class="advantage__text">Non aliqua reprehenderit reprehenderit culpa laboris nulla minim anim
						velit</p>
				</div>
				<img class="advantage__bg" data-lazy="assets/img/svg/vector-advantages.svg">
			</article>
		</div>
	</div>
	<!-- ADVANTAGES END -->

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