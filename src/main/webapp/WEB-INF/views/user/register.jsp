<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp"/>
<title><s:message code="user.register"/> | Molle Co., Ltd</title>
<!-- BEGIN MAIN -->
<main class="main">
    <!-- BEGIN INNER TOP -->
    <div class="inner-top">
        <div class="inner-top__main wrapper">
            <div class="inner-top__cols">
                <div class="inner-top__left">
                    <h1 class="inner-top__title"><s:message code="user.register"/></h1>
                    <div class="breadcrumbs">
                        <ul class="breadcrumbs__list">
                            <li class="breadcrumbs__item">
                                <a class="breadcrumbs__link" href="index"><s:message code="user.home"/></a>
                            </li>➥&#160;&#160;
                            <li class="breadcrumbs__item"><s:message code="user.register"/></li>
                        </ul>
                    </div>
                </div>
                <div class="inner-top__right">
                    <div class="inner-top__image" data-bg="assets/img/login-banner.jpg"></div>
                </div>
            </div>
            <img class="inner-top__bg" data-lazy="assets/img/svg/vector-inner-top.svg">
        </div>
    </div>
    <!-- INNER TOP END -->

    <!-- BEGIN REGISTER -->
    <div class="login-page">
        <div class="login-page__all">
            <div class="login-page__banner" data-bg="assets/img/login-bg.jpg"></div>
            <div class="login-page__main">
                <div class="login-form login-form_reg">
                    <div class="login-form__top">
                        <h2 class="login-form__title"><s:message code="user.registertitle"/></h2>
                        <p class="login-form__text"><s:message code="user.registertext"/></p>
                    </div>
					<c:if test="${not empty message}">
						<div style="margin-top:20px;color:red;text-align:center">${message}</div>
					</c:if>
                	<form action="register" method="post">
	                    <span class="login-form__label"><s:message code="user.username"/></span>
	                    <input class="text-input" type="text" name="username" placeholder="<s:message code="user.userph"/>" required>
	                    <span class="login-form__label"><s:message code="user.password"/></span>
	                    <input class="text-input" type="password" name="password" placeholder="<s:message code="user.passph"/>" required>
	                    
	                    <span class="login-form__label"><s:message code="user.password1"/></span>
	                    <input class="text-input" type="password" name="password" placeholder="<s:message code="user.passph"/>" required>
	                    
	                    
	                    <span class="login-form__label"><s:message code="user.fullname"/></span>
	                    <input class="text-input" type="text" name="fullname" placeholder="<s:message code="user.fnameph"/>" required>
	                    <span class="login-form__label"><s:message code="user.email"/></span>
	                    <input class="text-input" type="email" name="email" placeholder="<s:message code="user.emailph"/>" required>
	                    <div class="login-form__bottom">
	                        <div class="login-form__col">
	                            <div class="login-form__checkbox checkbox">
	                                <label class="checkbox__label">
	                                    <input class="checkbox__input" type="checkbox">
	                                    <span class="checkbox__icon"></span>
	                                    <span class="checkbox__text"><s:message code="user.agreereg"/> <a><s:message code="user.privacy"/></a></span>
	                                </label>
	                            </div>
	                        </div>
	                        <div class="login-form__col">
	                            <span class="login-form__small-text">
	                                <s:message code="user.reglogin"/> <a href="login"><s:message code="user.login1"/></a>
	                            </span>
	                        </div>
	                    </div>
	                    <button class="login-form__button button" type="submit">
	                        <span class="button__text"><s:message code="user.register1"/></span>
	                    </button>
                    </form>
                </div>
                <img class="login-page__vector" data-lazy="assets/img/svg/vector-login.svg">
            </div>
        </div>
    </div>
    <!-- REGISTER END -->
</main>
<!-- MAIN END -->
<jsp:include page="footer.jsp" />