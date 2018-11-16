<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!-- header-top-area-start -->
<div class="header-top-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="language-area">
                    <ul id="language-ul-tag" style="cursor: pointer">
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="account-area text-right">
                    <spring:url value="/login" var="loginUrl"/>
                    <spring:url value="/security_logout" var="logoutUrl"/>
                    <ul>
                        <security:authorize access="isAuthenticated()">
                            <li>
                                <a href="/info"> <security:authentication property="principal.username"/></a>
                            </li>
                            <form action="${logoutUrl}" method="post">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                                <button type="submit">Logout</button>

                            </form>
                        </security:authorize>
                        <security:authorize access="isAnonymous()">

                            <li><a href="${loginUrl}"><spring:message code="label.login"/></a></li>

                        </security:authorize>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- header-top-area-end -->
<!-- header-mid-area-start -->
<div class="header-mid-area ptb-40">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-5 col-xs-12">
                <div class="header-search">
                    <form id="search-form" method="get" action="/book/search">
                        <input name="bookName" type="text" placeholder="<spring:message code="label.search.placeholder"/>"/>
                        <a id="btn-search" href="#"><i class="fa fa-search"></i></a>
                    </form>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-4 col-xs-12">
                <div class="logo-area text-center logo-xs-mrg">
                    <a href="/"><img src="/client/assets/img/logo/logo.png" alt="logo"/></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <div class="my-cart">
                    <ul>
                        <li><a href="/cart"><i class="fa fa-shopping-cart"></i><spring:message code="label.cart"/></a>
                            <span>2</span>
                            <div class="mini-cart-sub">
                                <div class="cart-product">
                                    <div class="single-cart">
                                        <div class="cart-img">
                                            <a href="#"><img src="/client/assets/img/product/1.jpg" alt="book"/></a>
                                        </div>
                                        <div class="cart-info">
                                            <h5><a href="#">Joust Duffle Bag</a></h5>
                                            <p>1 x £60.00</p>
                                        </div>
                                        <div class="cart-icon">
                                            <a href="#"><i class="fa fa-remove"></i></a>
                                        </div>
                                    </div>
                                    <div class="single-cart">
                                        <div class="cart-img">
                                            <a href="#"><img src="/client/assets/img/product/3.jpg" alt="book"/></a>
                                        </div>
                                        <div class="cart-info">
                                            <h5><a href="#">Chaz Kangeroo Hoodie</a></h5>
                                            <p>1 x £52.00</p>
                                        </div>
                                        <div class="cart-icon">
                                            <a href="#"><i class="fa fa-remove"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="cart-totals">
                                    <h5>Total <span>£12.00</span></h5>
                                </div>
                                <div class="cart-bottom">
                                    <a class="view-cart" href="/cart"><spring:message code="label.view.cart"/></a>
                                    <a href="checkout.html"><spring:message code="label.checkout"/></a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- header-mid-area-end -->
<!-- main-menu-area-start -->
<div class="main-menu-area hidden-sm hidden-xs" id="header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="menu-area">
                    <nav>
                        <ul>
                            <li class="active"><a href="/"><spring:message code="label.home"/> <i
                                    class="fa fa-angle-down"></i></a>

                            </li>
                            <li><a href="product-details.html"><spring:message code="label.book"/> <i
                                    class="fa fa-angle-down"></i></a>
                                <div class="mega-menu">
                                    <c:forEach items="${categories}" var="cate">
                                        <c:if test="${not empty cate}">
                                            <span>
                                            <a href="#" class="title">${cate.categoryName}</a>
                                            <c:forEach items="${cate.categoryDetails}" var="cateDetail">
                                                <a href="shop.html">${cateDetail.categoryDetailName}</a>
                                            </c:forEach>
                                        </span>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </li>
                            <li><a href="product-details.html"><spring:message code="label.audio.book"/> <i
                                    class="fa fa-angle-down"></i></a>
                                <div class="mega-menu">
    <span>
    <a href="#" class="title">Shirts</a>
    <a href="shop.html">Tops & Tees</a>
    <a href="shop.html">Sweaters </a>
    <a href="shop.html">Hoodies</a>
    <a href="shop.html">Jackets & Coats</a>
    </span>
                                    <span>
    <a href="#" class="title">Tops & Tees</a>
    <a href="shop.html">Long Sleeve </a>
    <a href="shop.html">Short Sleeve</a>
    <a href="shop.html">Polo Short Sleeve</a>
    <a href="shop.html">Sleeveless</a>
    </span>
                                    <span>
    <a href="#" class="title">Jackets</a>
    <a href="shop.html">Sweaters</a>
    <a href="shop.html">Hoodies</a>
    <a href="shop.html">Wedges</a>
    <a href="shop.html">Vests</a>
    </span>
                                    <span>
    <a href="#" class="title">Jeans Pants</a>
    <a href="shop.html">Polo Short Sleeve</a>
    <a href="shop.html">Sleeveless</a>
    <a href="shop.html">Graphic T-Shirts</a>
    <a href="shop.html">Hoodies</a>
    </span>
                                </div>
                            </li>
                            <li><a href="product-details.html"><spring:message code="label.children.book"/> <i
                                    class="fa fa-angle-down"></i></a>
                                <div class="mega-menu mega-menu-2">
    <span>
    <a href="#" class="title">Tops</a>
    <a href="shop.html">Shirts</a>
    <a href="shop.html">Florals</a>
    <a href="shop.html">Crochet</a>
    <a href="shop.html">Stripes</a>
    </span>
                                    <span>
    <a href="#" class="title">Bottoms</a>
    <a href="shop.html">Shorts</a>
    <a href="shop.html">Dresses</a>
    <a href="shop.html">Trousers</a>
    <a href="shop.html">Jeans</a>
    </span>
                                    <span>
    <a href="#" class="title">Shoes</a>
    <a href="shop.html">Heeled sandals</a>
    <a href="shop.html">Flat sandals</a>
    <a href="shop.html">Wedges</a>
    <a href="shop.html">Ankle boots</a>
    </span>
                                </div>
                            </li>
                            <li><a href="#">blog<i class="fa fa-angle-down"></i></a>
                                <div class="sub-menu sub-menu-2">
                                    <ul>
                                        <li><a href="blog.html">blog</a></li>
                                        <li><a href="blog-details.html">blog-details</a></li>
                                    </ul>
                                </div>
                            </li>

                        </ul>
                    </nav>
                </div>
                <div class="safe-area">
                    <a href="product-details.html">sales off</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- main-menu-area-end -->
<!-- mobile-menu-area-start -->

<div class="mobile-menu-area hidden-md hidden-lg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="mobile-menu">
                    <nav id="mobile-menu-active">
                        <ul id="nav">
                            <li><a href="/">Home</a>
                            </li>
                            <li><a href="product-details.html">Book</a>
                                <ul>
                                    <li><a href="shop.html">Tops & Tees</a></li>
                                    <li><a href="shop.html">Polo Short Sleeve</a></li>
                                    <li><a href="shop.html">Graphic T-Shirts</a></li>
                                    <li><a href="shop.html">Jackets & Coats</a></li>
                                    <li><a href="shop.html">Fashion Jackets</a></li>
                                    <li><a href="shop.html">Crochet</a></li>
                                    <li><a href="shop.html">Sleeveless</a></li>
                                    <li><a href="shop.html">Stripes</a></li>
                                    <li><a href="shop.html">Sweaters</a></li>
                                    <li><a href="shop.html">hoodies</a></li>
                                    <li><a href="shop.html">Heeled sandals</a></li>
                                    <li><a href="shop.html">Polo Short Sleeve</a></li>
                                    <li><a href="shop.html">Flat sandals</a></li>
                                    <li><a href="shop.html">Short Sleeve</a></li>
                                    <li><a href="shop.html">Long Sleeve</a></li>
                                    <li><a href="shop.html">Polo Short Sleeve</a></li>
                                    <li><a href="shop.html">Sleeveless</a></li>
                                    <li><a href="shop.html">Graphic T-Shirts</a></li>
                                    <li><a href="shop.html">Hoodies</a></li>
                                    <li><a href="shop.html">Jackets</a></li>
                                </ul>
                            </li>
                            <li><a href="product-details.html">Audio books</a>
                                <ul>
                                    <li><a href="shop.html">Tops & Tees</a></li>
                                    <li><a href="shop.html">Sweaters</a></li>
                                    <li><a href="shop.html">Hoodies</a></li>
                                    <li><a href="shop.html">Jackets & Coats</a></li>
                                    <li><a href="shop.html">Long Sleeve</a></li>
                                    <li><a href="shop.html">Short Sleeve</a></li>
                                    <li><a href="shop.html">Polo Short Sleeve</a></li>
                                    <li><a href="shop.html">Sleeveless</a></li>
                                    <li><a href="shop.html">Sweaters</a></li>
                                    <li><a href="shop.html">Hoodies</a></li>
                                    <li><a href="shop.html">Wedges</a></li>
                                    <li><a href="shop.html">Vests</a></li>
                                    <li><a href="shop.html">Polo Short Sleeve</a></li>
                                    <li><a href="shop.html">Sleeveless</a></li>
                                    <li><a href="shop.html">Graphic T-Shirts</a></li>
                                    <li><a href="shop.html">Hoodies</a></li>
                                </ul>
                            </li>
                            <li><a href="product-details.html">childrenís books</a>
                                <ul>
                                    <li><a href="shop.html">Shirts</a></li>
                                    <li><a href="shop.html">Florals</a></li>
                                    <li><a href="shop.html">Crochet</a></li>
                                    <li><a href="shop.html">Stripes</a></li>
                                    <li><a href="shop.html">Shorts</a></li>
                                    <li><a href="shop.html">Dresses</a></li>
                                    <li><a href="shop.html">Trousers</a></li>
                                    <li><a href="shop.html">Jeans</a></li>
                                    <li><a href="shop.html">Heeled sandals</a></li>
                                    <li><a href="shop.html">Flat sandals</a></li>
                                    <li><a href="shop.html">Wedges</a></li>
                                    <li><a href="shop.html">Ankle boots</a></li>
                                </ul>
                            </li>
                            <li><a href="#">blog</a>
                                <ul>
                                    <li><a href="blog.html">Blog</a></li>
                                    <li><a href="blog-details.html">blog-details</a></li>
                                </ul>
                            </li>

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- mobile-menu-area-end -->
