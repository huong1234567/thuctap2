<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp"/>
<title><s:message code="user.profile1"/> | Molle Co., Ltd</title>
<!-- BEGIN MAIN -->
<main class="main">
    <!-- BEGIN INNER TOP -->
    <div class="inner-top">
        <div class="inner-top__main wrapper">
            <div class="inner-top__cols">
                <div class="inner-top__left">
                    <h1 class="inner-top__title"><s:message code="user.profile"/></h1>
                    <div class="breadcrumbs">
                        <ul class="breadcrumbs__list">
                            <li class="breadcrumbs__item">
                                <a class="breadcrumbs__link" href="index"><s:message code="user.home"/></a>
                            </li>➥&#160;&#160;
                            <li class="breadcrumbs__item"><s:message code="user.profile1"/></li>
                        </ul>
                    </div>
                </div>
                <div class="inner-top__right">
                    <div class="inner-top__image" data-bg="assets/img/banner-profile.jpg"></div>
                </div>
            </div>
            <img class="inner-top__bg" data-lazy="assets/img/svg/vector-inner-top.svg">
        </div>
    </div>
    <!-- INNER TOP END -->

    <!-- BEGIN PROFILE -->
    <div class="profile-page wrapper">
        <div class="login-form" style="max-width:100%">
			<div class="login-form__top">
			    <h2 class="login-form__title"><s:message code="user.profiletitle"/></h2>
				<p class="login-form__text"><s:message code="user.profiletext"/></p>
			</div>
			<form action="profile/update" method="post" enctype="multipart/form-data">
				<span class="login-form__label"><s:message code="user.image"/></span>
				<input class="text-input" type="file" name="img" value="${item.img}">
				<span class="login-form__label"><s:message code="user.username"/></span>
				<input class="text-input" type="text" name="username" value="${item.username}" disabled>
				<span class="login-form__label"><s:message code="user.fullname"/></span>
				<input class="text-input" type="text" name="fullname" value="${item.fullname}" required>
				<span class="login-form__label"><s:message code="user.email"/></span>
				<input class="text-input" type="email" name="email" value="${item.email}" required>
				<span class="login-form__label"><s:message code="user.password"/></span>
				<input class="text-input" type="password" name="password" value="${item.password}" required>
				<button class="login-form__button button" type="submit">
				    <span class="button__text">Update</span>
				</button>
			</form>
		</div>
		<img class="login-page__vector" data-lazy="assets/img/svg/vector-login.svg">
    </div>
    <!-- PROFILE END -->
</main>
<!-- MAIN END -->
<jsp:include page="footer.jsp" />