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
                    <h1 class="inner-top__title"><s:message code="user.contact"/></h1>
                    <div class="breadcrumbs">
                        <ul class="breadcrumbs__list">
                            <li class="breadcrumbs__item">
                                <a class="breadcrumbs__link" href="index"><s:message code="user.home"/></a>
                            </li>➥&#160;&#160;
                            <li class="breadcrumbs__item"><s:message code="user.contact"/></li>
                        </ul>
                    </div>
                </div>
                <div class="inner-top__right">
                    <div class="inner-top__image" data-bg="assets/img/contact-banner.jpg"></div>
                </div>
            </div>
            <img class="inner-top__bg" data-lazy="assets/img/svg/vector-inner-top.svg" alt="">
        </div>
    </div>
    <!-- INNER TOP END -->

    <!-- BEGIN CONTACTS -->
    <div class="contacts-page">
        <div class="contacts-page__main wrapper">
            <div class="contacts-page__cols">
                <div class="contacts-page__left">
                    <form>
                        <div class="contacts-form">
                            <div class="contacts-form__top">
                                <h2 class="contacts-form__title"><s:message code="user.contacttitle"/></h2>
                                <p class="contacts-form__text"><s:message code="user.contacttext"/></p>
                            </div>
                            <div class="contacts-form__cols">
                                <div class="contacts-form__col">
                                    <input class="text-input" type="text" placeholder="<s:message code="user.fnameph"/>">
                                </div>
                                <div class="contacts-form__col">
                                    <input class="text-input" type="email" placeholder="<s:message code="user.email"/>">
                                </div>
                            </div>
                            <textarea class="textarea" placeholder="<s:message code="user.feedbackph"/>"></textarea>
                            <button class="contacts-form__button button">
                                <span class="button__text"><s:message code="user.submit"/></span>
                            </button>
                        </div>
                    </form>
                </div>
                <div class="contacts-page__right">
                    <div class="contacts">
                        <section class="contacts__item">
                            <div class="contacts__left">
                                <h3 class="contacts__title"><s:message code="user.contact"/>:</h3>
                            </div>
                            <div class="contacts__right">
                                <a class="contacts__number">0853338609</a><br>
                                <a class="contacts__link">caodangfpt.danang@fpt.edu.vn</a>
                            </div>
                        </section>
                        <section class="contacts__item">
                            <div class="contacts__left">
                                <h3 class="contacts__title"><s:message code="user.location"/>:</h3>
                            </div>
                            <div class="contacts__right">
                                <span class="contacts__text">Innovation Building, 137 Nguyen Thi Thap<br> Da Nang</span>
                            </div>
                        </section>
                        <section class="contacts__item">
                            <div class="contacts__left">
                                <h3 class="contacts__title"><s:message code="user.social"/>:</h3>
                            </div>
                            <div class="contacts__right">
                                <div class="contacts__socials socials">
                                    <ul class="socials__list">
                                        <li class="socials__item">
                                            <a class="socials__link" href="#">Fb</a>
                                        </li>
                                        <li class="socials__item">
                                            <a class="socials__link" href="#">Tw</a>
                                        </li>
                                        <li class="socials__item">
                                            <a class="socials__link" href="#">Ins</a>
                                        </li>
                                        <li class="socials__item">
                                            <a class="socials__link" href="#">Pt</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
            <img class="contacts-page__vector" data-lazy="assets/img/svg/vector-contacts.svg" alt="">
        </div>
        <div class="contacts-page__map">
            <div class="map" id="map"></div>
        </div>
    </div>
    <!-- CONTACTS END -->
</main>
<!-- MAIN END -->
<jsp:include page="footer.jsp"/>