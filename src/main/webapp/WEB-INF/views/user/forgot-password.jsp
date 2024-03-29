<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title><s:message code="user.forgottitle"/> | Molle Co., Ltd</title>
<!-- BEGIN MAIN -->
<main class="main">
    <!-- BEGIN INNER TOP -->
    <div class="inner-top">
        <div class="inner-top__main wrapper">
            <div class="inner-top__cols">
                <div class="inner-top__left">
                    <h1 class="inner-top__title"><s:message code="user.forgottitle"/></h1>
                    <div class="breadcrumbs">
                        <ul class="breadcrumbs__list">
                            <li class="breadcrumbs__item">
                                <a class="breadcrumbs__link" href="index"><s:message code="user.home"/></a>
                            </li>➥&#160;&#160;
                            <li class="breadcrumbs__item"><s:message code="user.forgottitle"/></li>
                        </ul>
                    </div>
                </div>
                <div class="inner-top__right">
                    <div class="inner-top__image" data-bg="assets/img/login-banner.jpg"></div>
                </div>
            </div>
            <img class="inner-top__bg" src="assets/img/svg/vector-inner-top.svg"
                data-lazy="assets/img/svg/vector-inner-top.svg">
        </div>
    </div>
    <!-- INNER TOP END -->

    <!-- BEGIN LOGIN -->
    <div class="login-page">
        <div class="login-page__all">
            <div class="login-page__banner" data-bg="assets/img/login-bg.jpg"></div>
            <div class="login-page__main">
                <form action="forgot-password" method="post">
                    <div class="login-form">
                        <div class="login-form__top">
                            <h2 class="login-form__title">Tìm tài khoản</h2>
                            <p class="login-form__text">Vui lòng nhập email hoặc số điện thại di động để tìm kiếm tài khoản của bạn</p>
                        </div>
	                    <span class="login-form__label">Email</span>
                        <input class="text-input" type="email" name="email" placeholder="Nhập email" required>
                        <button class="login-form__button button" type="submit">
                            <span class="button__text">Tìm kiếm</span>
                        </button>
                    </div>
                </form>
                <img class="login-page__vector" data-lazy="assets/img/svg/vector-login.svg">
            </div>
        </div>
    </div>
    <!-- LOGIN END -->
</main>
<!-- MAIN END -->
<jsp:include page="footer.jsp" />