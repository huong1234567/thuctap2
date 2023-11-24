<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp"/>
<title><s:message code="user.contact"/> | Molle Co., Ltd</title>
<!-- BEGIN MAIN -->
        <main class="main">              
            <!-- BEGIN INNER TOP -->
            <div class="inner-top">
                <div class="inner-top__main wrapper">
                    <div class="inner-top__cols">
                        <div class="inner-top__left">
                            <h1 class="inner-top__title">Giỏ hàng của bạn</h1>
                            <div class="breadcrumbs">
                                <ul class="breadcrumbs__list">
                                    <li class="breadcrumbs__item">
                                        <a class="breadcrumbs__link" href="#">Trang Chủ</a>
                                    </li>
                                    <li class="breadcrumbs__item">Thông tin của bạn</li>                                
                                </ul>
                            </div>
                        </div>
                        <div class="inner-top__right">
                            <div class="inner-top__image" data-bg="assets/img/slides/slide1.jpg"></div>
                        </div>                        
                    </div>
                    <img class="inner-top__bg" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" data-lazy="assets/img/svg/vector-inner-top.svg" alt="">
                </div>
            </div>
            <!-- INNER TOP END -->

            <!-- BEGIN WISHLIST -->
            <div class="profile-page wrapper">

                <div class="profile-page__cols">

                    <!-- BEGIN LEFT COLUMN -->
                    <div class="profile-page__left">

                        <div class="profile-nav tabs-nav js-line">
                            <ul class="profile-nav__list tabs-nav__list tabs-nav__list_left">
                                <li class="tabs-nav__item js-line-item js-tabs-item active">
                                    <a class="tabs-nav__link js-line-link js-tabs-link" href="#profile-tab-2">Giỏ hàng của bạn</a>
                                </li>
                            </ul>
                            <div class="tabs-nav__line js-line-element"></div>
                        </div>
                         <div class="profile-tab js-tabs-content active" id="profile-tab-2">
                            <div class="orders js-faq">
                                <div class="order js-faq-item">
                                    <div class="order__top">
                                        <a class="order__button js-faq-button" href="javascript:void(0);">
                                            <div class="order-header">
                                                <div class="order-header__col">
                                                    <span class="order-header__number">${order}</span>
                                                </div>
                                                <div class="order-header__col">
                                                    <span class="order-header__date">${account.username}</span>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="order__hide js-faq-hide">
                                        <div class="order__content">
                                            <div class="order-table">
                                                <article class="order-table__item">
                                                    <div class="order-table__cols">
                                                        <div class="order-table__col">
                                                            <a class="order-table__image-link" href="product_page.html">
                                                                <img class="order-table__image" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" data-lazy="https://via.placeholder.com/50x56" alt="">
                                                            </a>
                                                        </div>
                                                        <div class="order-table__col">
                                                            <h4 class="order-table__title">
                                                                <a class="order-table__link" href="product_page.html">Fashionee - catton shirt (S)</a>
                                                            </h4>
                                                            <span class="order-table__text">x1</span>
                                                        </div>
                                                        <div class="order-table__col">
                                                            <span class="order-table__price">$33.99</span>
                                                        </div>                                                                                
                                                    </div>
                                                </article>
                                            </div>
                                            <div class="order-total">
                                                <div class="order-total__item">
                                                    <div class="order-total__col">
                                                        <span class="order-total__title">Order amount:</span>
                                                    </div>
                                                    <div class="order-total__col">
                                                        <div class="order-total__price">$146.98</div>
                                                    </div>                                                    
                                                </div>
                                                <div class="order-total__item">
                                                    <div class="order-total__col">
                                                        <span class="order-total__title">Delivered to:</span>
                                                    </div>
                                                    <div class="order-total__col">
                                                        <div class="order-total__text">27 Division St, New York, NY 10002, USA</div>
                                                    </div>                                                    
                                                </div>                                                
                                            </div>    
                                        </div>
                                    </div>
                                </div>
							</div>
                            <div class="profile-tab__bottom">
                                <div class="profile-tab__col">
                                    <button class="profile-tab__button button">
                                        <span class="button__text">Delete history</span>
                                    </button>
                                </div>
                                <div class="profile-tab__col">
                                    <div class="profile-tab__checkbox checkbox">
                                        <label class="checkbox__label">
                                            <input class="checkbox__input" type="checkbox">
                                            <span class="checkbox__icon"></span>
                                            <span class="checkbox__text">Show only active</span>
                                        </label>
                                    </div>                        
                                </div>                    
                            </div>                            
    
                        </div>
                         <!-- TAB 2 END -->

                    </div>
                    <!-- LEFT COLUMN END -->

                </div>

            </div>
            <!-- WISHLIST END -->         
        </main>
        <!-- MAIN END -->
<jsp:include page="footer.jsp"/>